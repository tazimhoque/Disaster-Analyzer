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

Date: 2015-02-20 15:18:31
*/


-- ----------------------------
-- Table structure for "SYSTEM"."AQ$_INTERNET_AGENT_PRIVS"
-- ----------------------------
DROP TABLE "SYSTEM"."AQ$_INTERNET_AGENT_PRIVS";
CREATE TABLE "SYSTEM"."AQ$_INTERNET_AGENT_PRIVS" (
"AGENT_NAME" VARCHAR2(30 BYTE) NOT NULL ,
"DB_USERNAME" VARCHAR2(30 BYTE) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of AQ$_INTERNET_AGENT_PRIVS
-- ----------------------------
INSERT INTO "SYSTEM"."AQ$_INTERNET_AGENT_PRIVS" VALUES ('SCHEDULER$_EVENT_AGENT', 'SYS');
INSERT INTO "SYSTEM"."AQ$_INTERNET_AGENT_PRIVS" VALUES ('SCHEDULER$_REMDB_AGENT', 'SYS');
INSERT INTO "SYSTEM"."AQ$_INTERNET_AGENT_PRIVS" VALUES ('SERVER_ALERT', 'SYS');

-- ----------------------------
-- Table structure for "SYSTEM"."AQ$_INTERNET_AGENTS"
-- ----------------------------
DROP TABLE "SYSTEM"."AQ$_INTERNET_AGENTS";
CREATE TABLE "SYSTEM"."AQ$_INTERNET_AGENTS" (
"AGENT_NAME" VARCHAR2(30 BYTE) NOT NULL ,
"PROTOCOL" NUMBER NOT NULL ,
"SPARE1" VARCHAR2(128 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of AQ$_INTERNET_AGENTS
-- ----------------------------
INSERT INTO "SYSTEM"."AQ$_INTERNET_AGENTS" VALUES ('SCHEDULER$_EVENT_AGENT', '0', null);
INSERT INTO "SYSTEM"."AQ$_INTERNET_AGENTS" VALUES ('SCHEDULER$_REMDB_AGENT', '0', null);
INSERT INTO "SYSTEM"."AQ$_INTERNET_AGENTS" VALUES ('SERVER_ALERT', '0', null);
INSERT INTO "SYSTEM"."AQ$_INTERNET_AGENTS" VALUES ('HAE_SUB', '0', null);

-- ----------------------------
-- Table structure for "SYSTEM"."AQ$_QUEUE_TABLES"
-- ----------------------------
DROP TABLE "SYSTEM"."AQ$_QUEUE_TABLES";
CREATE TABLE "SYSTEM"."AQ$_QUEUE_TABLES" (
"SCHEMA" VARCHAR2(30 BYTE) NOT NULL ,
"NAME" VARCHAR2(30 BYTE) NOT NULL ,
"UDATA_TYPE" NUMBER NOT NULL ,
"OBJNO" NUMBER NOT NULL ,
"FLAGS" NUMBER NOT NULL ,
"SORT_COLS" NUMBER NOT NULL ,
"TIMEZONE" VARCHAR2(64 BYTE) NULL ,
"TABLE_COMMENT" VARCHAR2(2000 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of AQ$_QUEUE_TABLES
-- ----------------------------
INSERT INTO "SYSTEM"."AQ$_QUEUE_TABLES" VALUES ('SYS', 'SCHEDULER$_EVENT_QTAB', '1', '12455', '16805897', '2', '00:00', 'Scheduler event queue table');
INSERT INTO "SYSTEM"."AQ$_QUEUE_TABLES" VALUES ('SYS', 'SCHEDULER$_REMDB_JOBQTAB', '1', '12483', '16801801', '2', '00:00', 'Scheduler remote db job queue table');
INSERT INTO "SYSTEM"."AQ$_QUEUE_TABLES" VALUES ('SYS', 'SCHEDULER_FILEWATCHER_QT', '1', '12517', '16805897', '2', '00:00', 'Scheduler file watcher result queue table');
INSERT INTO "SYSTEM"."AQ$_QUEUE_TABLES" VALUES ('SYS', 'ALERT_QT', '1', '12576', '16805897', '2', '00:00', 'Server Generated Alert Queue Table');
INSERT INTO "SYSTEM"."AQ$_QUEUE_TABLES" VALUES ('SYS', 'AQ$_MEM_MC', '3', '12748', '16801801', '2', '00:00', 'table for non_persistent queues');
INSERT INTO "SYSTEM"."AQ$_QUEUE_TABLES" VALUES ('SYS', 'AQ_EVENT_TABLE', '1', '12774', '16793600', '2', '00:00', 'CREATING AQ_EVENT_TABLE QUEUE TABLE');
INSERT INTO "SYSTEM"."AQ$_QUEUE_TABLES" VALUES ('SYS', 'AQ_PROP_TABLE', '1', '12786', '16801801', '2', '00:00', 'Queue Table for Notification in AQ Prop. Scheduling');
INSERT INTO "SYSTEM"."AQ$_QUEUE_TABLES" VALUES ('SYS', 'KUPC$DATAPUMP_QUETAB', '1', '12940', '16793609', '2', '00:00', 'DataPump Queue Table');
INSERT INTO "SYSTEM"."AQ$_QUEUE_TABLES" VALUES ('SYSTEM', 'DEF$_AQCALL', '2', '13050', '16793600', '2', '00:00', null);
INSERT INTO "SYSTEM"."AQ$_QUEUE_TABLES" VALUES ('SYSTEM', 'DEF$_AQERROR', '2', '13061', '16793600', '2', '00:00', null);
INSERT INTO "SYSTEM"."AQ$_QUEUE_TABLES" VALUES ('SYS', 'SYS$SERVICE_METRICS_TAB', '1', '13089', '16801801', '2', '00:00', null);

-- ----------------------------
-- Table structure for "SYSTEM"."AQ$_QUEUES"
-- ----------------------------
DROP TABLE "SYSTEM"."AQ$_QUEUES";
CREATE TABLE "SYSTEM"."AQ$_QUEUES" (
"OID" RAW(16) NOT NULL ,
"EVENTID" NUMBER NOT NULL ,
"NAME" VARCHAR2(30 BYTE) NOT NULL ,
"TABLE_OBJNO" NUMBER NOT NULL ,
"USAGE" NUMBER NOT NULL ,
"ENABLE_FLAG" NUMBER NOT NULL ,
"MAX_RETRIES" NUMBER NULL ,
"RETRY_DELAY" NUMBER NULL ,
"PROPERTIES" NUMBER NULL ,
"RET_TIME" NUMBER NULL ,
"QUEUE_COMMENT" VARCHAR2(2000 BYTE) NULL ,
"SUBSCRIBERS" "SYS"."AQ$_SUBSCRIBERS" NULL ,
"MEMORY_THRESHOLD" NUMBER NULL ,
"SERVICE_NAME" VARCHAR2(64 BYTE) NULL ,
"NETWORK_NAME" VARCHAR2(256 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of AQ$_QUEUES
-- ----------------------------
INSERT INTO "SYSTEM"."AQ$_QUEUES" VALUES (HexToRaw('F868996D1EFF4CE282005F0261C41264'), '12477', 'AQ$_SCHEDULER$_EVENT_QTAB_E', '12455', '1', '0', '0', '0', '0', '0', 'exception queue', null, null, null, null);
INSERT INTO "SYSTEM"."AQ$_QUEUES" VALUES (HexToRaw('BB2221608B5A41D7B3799677D751319E'), '12479', 'SCHEDULER$_EVENT_QUEUE', '12455', '0', '3', '5', '0', '0', '3600', 'Scheduler event queue', null, null, null, null);
INSERT INTO "SYSTEM"."AQ$_QUEUES" VALUES (HexToRaw('E937D79C8F574774B44F0AE29570E27F'), '12512', 'AQ$_SCHEDULER$_REMDB_JOBQTAB_E', '12483', '1', '0', '0', '0', '0', '0', 'exception queue', null, null, null, null);
INSERT INTO "SYSTEM"."AQ$_QUEUES" VALUES (HexToRaw('050E63F30E004C1F8B673DE78C699E8E'), '12513', 'SCHEDULER$_REMDB_JOBQ', '12483', '0', '3', '5', '0', '0', '0', 'Scheduler remote db job queue', null, null, null, null);
INSERT INTO "SYSTEM"."AQ$_QUEUES" VALUES (HexToRaw('1A3F8ED2E4444E9F834A3403766F5C9A'), '12542', 'AQ$_SCHEDULER_FILEWATCHER_QT_E', '12517', '1', '0', '0', '0', '0', '0', 'exception queue', null, null, null, null);
INSERT INTO "SYSTEM"."AQ$_QUEUES" VALUES (HexToRaw('84D6D5CA4932413797DD747D2E536B4F'), '12543', 'SCHEDULER_FILEWATCHER_Q', '12517', '0', '3', '5', '0', '0', '0', 'Scheduler file watcher results queue', null, null, null, null);
INSERT INTO "SYSTEM"."AQ$_QUEUES" VALUES (HexToRaw('65B8283598864714AA8B5938159B3D9B'), '12598', 'AQ$_ALERT_QT_E', '12576', '1', '2', '0', '0', '0', '0', 'exception queue', null, null, null, null);
INSERT INTO "SYSTEM"."AQ$_QUEUES" VALUES (HexToRaw('321942D3E09E4880A8E3A7BDCC85B01E'), '12599', 'ALERT_QUE', '12576', '0', '3', '5', '0', '0', '0', 'Server Generated Alert Queue', null, null, null, null);
INSERT INTO "SYSTEM"."AQ$_QUEUES" VALUES (HexToRaw('43B6CE7693DE4A70861DF32DFF551B40'), '12772', 'AQ$_AQ$_MEM_MC_E', '12748', '1', '0', '0', '0', '0', '0', 'exception queue', null, null, null, null);
INSERT INTO "SYSTEM"."AQ$_QUEUES" VALUES (HexToRaw('5711A9704C8F408EB99AB51680EA9716'), '12773', 'SRVQUEUE', '12748', '2', '3', '0', '0', '0', '0', null, null, null, null, null);
INSERT INTO "SYSTEM"."AQ$_QUEUES" VALUES (HexToRaw('7AEF2C15CA434CC5BD849500957D9814'), '12784', 'AQ$_AQ_EVENT_TABLE_E', '12774', '1', '0', '0', '0', '0', '0', 'exception queue', null, null, null, null);
INSERT INTO "SYSTEM"."AQ$_QUEUES" VALUES (HexToRaw('88011C0095934C6196E527EA014E0C9F'), '12785', 'AQ_EVENT_TABLE_Q', '12774', '0', '3', '5', '0', '0', '0', 'CREATING AQ_EVENT_TABLE_Q QUEUE', null, null, null, null);
INSERT INTO "SYSTEM"."AQ$_QUEUES" VALUES (HexToRaw('B2EDEF19E76B4C9299816CAC5C954ADD'), '12808', 'AQ$_AQ_PROP_TABLE_E', '12786', '1', '0', '0', '0', '0', '0', 'exception queue', null, null, null, null);
INSERT INTO "SYSTEM"."AQ$_QUEUES" VALUES (HexToRaw('98AD7556D6884165BA86CC397786C092'), '12809', 'AQ_PROP_NOTIFY', '12786', '0', '3', '5', '0', '0', '0', 'Queue for Notifying events in AQ Prop. Scheduling', null, null, null, null);
INSERT INTO "SYSTEM"."AQ$_QUEUES" VALUES (HexToRaw('4311F3D2614E41B1933637C415DA8085'), '12987', 'AQ$_KUPC$DATAPUMP_QUETAB_E', '12940', '1', '0', '0', '0', '0', '0', 'exception queue', null, null, null, null);
INSERT INTO "SYSTEM"."AQ$_QUEUES" VALUES (HexToRaw('047927314A704401BC8C5F868433D8E0'), '13058', 'AQ$_DEF$_AQCALL_E', '13050', '1', '0', '0', '0', '0', '0', 'exception queue', null, null, null, null);
INSERT INTO "SYSTEM"."AQ$_QUEUES" VALUES (HexToRaw('CD6C5B67F4414C1F8439696A6E45051F'), '13059', 'DEF$_AQCALL', '13050', '0', '3', '5', '0', '1', '0', 'Deferred RPC Queue', null, null, null, null);
INSERT INTO "SYSTEM"."AQ$_QUEUES" VALUES (HexToRaw('F7585C2789D5415991D48025DA14315E'), '13069', 'AQ$_DEF$_AQERROR_E', '13061', '1', '0', '0', '0', '0', '0', 'exception queue', null, null, null, null);
INSERT INTO "SYSTEM"."AQ$_QUEUES" VALUES (HexToRaw('7D192B017BA6405F86C6531746F83180'), '13070', 'DEF$_AQERROR', '13061', '0', '3', '5', '0', '1', '0', 'Error Queue for Deferred RPCs', null, null, null, null);
INSERT INTO "SYSTEM"."AQ$_QUEUES" VALUES (HexToRaw('9AAD8A532C1C4BD59C12D6CDB00CF507'), '13111', 'AQ$_SYS$SERVICE_METRICS_TAB_E', '13089', '1', '0', '0', '0', '0', '0', 'exception queue', null, null, null, null);
INSERT INTO "SYSTEM"."AQ$_QUEUES" VALUES (HexToRaw('2253BC781CF04BF8B88DBF4068FC2559'), '13112', 'SYS$SERVICE_METRICS', '13089', '0', '3', '5', '0', '0', '3600', null, null, null, null, null);

-- ----------------------------
-- Table structure for "SYSTEM"."AQ$_SCHEDULES"
-- ----------------------------
DROP TABLE "SYSTEM"."AQ$_SCHEDULES";
CREATE TABLE "SYSTEM"."AQ$_SCHEDULES" (
"OID" RAW(16) NOT NULL ,
"DESTINATION" VARCHAR2(128 BYTE) NOT NULL ,
"START_TIME" DATE NULL ,
"DURATION" VARCHAR2(8 BYTE) NULL ,
"NEXT_TIME" VARCHAR2(128 BYTE) NULL ,
"LATENCY" VARCHAR2(8 BYTE) NULL ,
"LAST_TIME" DATE NULL ,
"JOBNO" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of AQ$_SCHEDULES
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."DEF$_AQCALL"
-- ----------------------------
DROP TABLE "SYSTEM"."DEF$_AQCALL";
CREATE TABLE "SYSTEM"."DEF$_AQCALL" (
"Q_NAME" VARCHAR2(30 BYTE) NULL ,
"MSGID" RAW(16) NULL ,
"CORRID" VARCHAR2(128 BYTE) NULL ,
"PRIORITY" NUMBER NULL ,
"STATE" NUMBER NULL ,
"DELAY" TIMESTAMP(6)  NULL ,
"EXPIRATION" NUMBER NULL ,
"TIME_MANAGER_INFO" TIMESTAMP(6)  NULL ,
"LOCAL_ORDER_NO" NUMBER NULL ,
"CHAIN_NO" NUMBER NULL ,
"CSCN" NUMBER NULL ,
"DSCN" NUMBER NULL ,
"ENQ_TIME" TIMESTAMP(6)  NULL ,
"ENQ_UID" NUMBER NULL ,
"ENQ_TID" VARCHAR2(30 BYTE) NOT NULL ,
"DEQ_TIME" TIMESTAMP(6)  NULL ,
"DEQ_UID" NUMBER NULL ,
"DEQ_TID" VARCHAR2(30 BYTE) NULL ,
"RETRY_COUNT" NUMBER NULL ,
"EXCEPTION_QSCHEMA" VARCHAR2(30 BYTE) NULL ,
"EXCEPTION_QUEUE" VARCHAR2(30 BYTE) NULL ,
"STEP_NO" NUMBER NOT NULL ,
"RECIPIENT_KEY" NUMBER NULL ,
"DEQUEUE_MSGID" RAW(16) NULL ,
"USER_DATA" BLOB NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of DEF$_AQCALL
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."DEF$_AQERROR"
-- ----------------------------
DROP TABLE "SYSTEM"."DEF$_AQERROR";
CREATE TABLE "SYSTEM"."DEF$_AQERROR" (
"Q_NAME" VARCHAR2(30 BYTE) NULL ,
"MSGID" RAW(16) NULL ,
"CORRID" VARCHAR2(128 BYTE) NULL ,
"PRIORITY" NUMBER NULL ,
"STATE" NUMBER NULL ,
"DELAY" TIMESTAMP(6)  NULL ,
"EXPIRATION" NUMBER NULL ,
"TIME_MANAGER_INFO" TIMESTAMP(6)  NULL ,
"LOCAL_ORDER_NO" NUMBER NULL ,
"CHAIN_NO" NUMBER NULL ,
"CSCN" NUMBER NULL ,
"DSCN" NUMBER NULL ,
"ENQ_TIME" TIMESTAMP(6)  NULL ,
"ENQ_UID" NUMBER NULL ,
"ENQ_TID" VARCHAR2(30 BYTE) NOT NULL ,
"DEQ_TIME" TIMESTAMP(6)  NULL ,
"DEQ_UID" NUMBER NULL ,
"DEQ_TID" VARCHAR2(30 BYTE) NULL ,
"RETRY_COUNT" NUMBER NULL ,
"EXCEPTION_QSCHEMA" VARCHAR2(30 BYTE) NULL ,
"EXCEPTION_QUEUE" VARCHAR2(30 BYTE) NULL ,
"STEP_NO" NUMBER NOT NULL ,
"RECIPIENT_KEY" NUMBER NULL ,
"DEQUEUE_MSGID" RAW(16) NULL ,
"USER_DATA" BLOB NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of DEF$_AQERROR
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."DEF$_CALLDEST"
-- ----------------------------
DROP TABLE "SYSTEM"."DEF$_CALLDEST";
CREATE TABLE "SYSTEM"."DEF$_CALLDEST" (
"ENQ_TID" VARCHAR2(22 BYTE) NOT NULL ,
"STEP_NO" NUMBER NOT NULL ,
"DBLINK" VARCHAR2(128 BYTE) NOT NULL ,
"SCHEMA_NAME" VARCHAR2(30 BYTE) NULL ,
"PACKAGE_NAME" VARCHAR2(30 BYTE) NULL ,
"CATCHUP" RAW(16) DEFAULT '00'  NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."DEF$_CALLDEST" IS 'Information about call destinations for D-type and error transactions';
COMMENT ON COLUMN "SYSTEM"."DEF$_CALLDEST"."ENQ_TID" IS 'Transaction ID';
COMMENT ON COLUMN "SYSTEM"."DEF$_CALLDEST"."STEP_NO" IS 'Unique ID of call within transaction';
COMMENT ON COLUMN "SYSTEM"."DEF$_CALLDEST"."DBLINK" IS 'The destination database';
COMMENT ON COLUMN "SYSTEM"."DEF$_CALLDEST"."SCHEMA_NAME" IS 'The schema of the deferred remote procedure call';
COMMENT ON COLUMN "SYSTEM"."DEF$_CALLDEST"."PACKAGE_NAME" IS 'The package of the deferred remote procedure call';
COMMENT ON COLUMN "SYSTEM"."DEF$_CALLDEST"."CATCHUP" IS 'Dummy column for foreign key';

-- ----------------------------
-- Records of DEF$_CALLDEST
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."DEF$_DEFAULTDEST"
-- ----------------------------
DROP TABLE "SYSTEM"."DEF$_DEFAULTDEST";
CREATE TABLE "SYSTEM"."DEF$_DEFAULTDEST" (
"DBLINK" VARCHAR2(128 BYTE) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."DEF$_DEFAULTDEST" IS 'Default destinations for deferred remote procedure calls';
COMMENT ON COLUMN "SYSTEM"."DEF$_DEFAULTDEST"."DBLINK" IS 'Default destination';

-- ----------------------------
-- Records of DEF$_DEFAULTDEST
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."DEF$_DESTINATION"
-- ----------------------------
DROP TABLE "SYSTEM"."DEF$_DESTINATION";
CREATE TABLE "SYSTEM"."DEF$_DESTINATION" (
"DBLINK" VARCHAR2(128 BYTE) NOT NULL ,
"LAST_DELIVERED" NUMBER DEFAULT 0  NOT NULL ,
"LAST_ENQ_TID" VARCHAR2(22 BYTE) NULL ,
"LAST_SEQ" NUMBER NULL ,
"DISABLED" CHAR(1 BYTE) NULL ,
"JOB" NUMBER NULL ,
"LAST_TXN_COUNT" NUMBER NULL ,
"LAST_ERROR_NUMBER" NUMBER NULL ,
"LAST_ERROR_MESSAGE" VARCHAR2(2000 BYTE) NULL ,
"APPLY_INIT" VARCHAR2(4000 BYTE) NULL ,
"CATCHUP" RAW(16) DEFAULT '00'  NOT NULL ,
"ALTERNATE" CHAR(1 BYTE) DEFAULT 'F'  NULL ,
"TOTAL_TXN_COUNT" NUMBER DEFAULT 0  NULL ,
"TOTAL_PROP_TIME_THROUGHPUT" NUMBER DEFAULT 0  NULL ,
"TOTAL_PROP_TIME_LATENCY" NUMBER DEFAULT 0  NULL ,
"TO_COMMUNICATION_SIZE" NUMBER DEFAULT 0  NULL ,
"FROM_COMMUNICATION_SIZE" NUMBER DEFAULT 0  NULL ,
"FLAG" RAW(4) DEFAULT '00000000'  NULL ,
"SPARE1" NUMBER DEFAULT 0  NULL ,
"SPARE2" NUMBER DEFAULT 0  NULL ,
"SPARE3" NUMBER DEFAULT 0  NULL ,
"SPARE4" NUMBER DEFAULT 0  NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."DEF$_DESTINATION" IS 'Information about propagation to different destinations';
COMMENT ON COLUMN "SYSTEM"."DEF$_DESTINATION"."DBLINK" IS 'Destination';
COMMENT ON COLUMN "SYSTEM"."DEF$_DESTINATION"."LAST_DELIVERED" IS 'Value of delivery_order of last transaction propagated';
COMMENT ON COLUMN "SYSTEM"."DEF$_DESTINATION"."LAST_ENQ_TID" IS 'Transaction ID of last transaction propagated';
COMMENT ON COLUMN "SYSTEM"."DEF$_DESTINATION"."LAST_SEQ" IS 'Parallel prop seq number of last transaction propagated';
COMMENT ON COLUMN "SYSTEM"."DEF$_DESTINATION"."DISABLED" IS 'Is propagation to destination disabled';
COMMENT ON COLUMN "SYSTEM"."DEF$_DESTINATION"."JOB" IS 'Number of job that pushes queue';
COMMENT ON COLUMN "SYSTEM"."DEF$_DESTINATION"."LAST_TXN_COUNT" IS 'Number of transactions pushed during last attempt';
COMMENT ON COLUMN "SYSTEM"."DEF$_DESTINATION"."LAST_ERROR_NUMBER" IS 'Oracle error number from last push';
COMMENT ON COLUMN "SYSTEM"."DEF$_DESTINATION"."LAST_ERROR_MESSAGE" IS 'Error message from last push';
COMMENT ON COLUMN "SYSTEM"."DEF$_DESTINATION"."CATCHUP" IS 'Used to break transaction into pieces';
COMMENT ON COLUMN "SYSTEM"."DEF$_DESTINATION"."ALTERNATE" IS 'Used to break transaction into pieces';
COMMENT ON COLUMN "SYSTEM"."DEF$_DESTINATION"."TOTAL_TXN_COUNT" IS 'Total number of transactions pushed';
COMMENT ON COLUMN "SYSTEM"."DEF$_DESTINATION"."TOTAL_PROP_TIME_THROUGHPUT" IS 'Total propagation time in seconds for measuring throughput';
COMMENT ON COLUMN "SYSTEM"."DEF$_DESTINATION"."TOTAL_PROP_TIME_LATENCY" IS 'Total propagation time in seconds for measuring latency';
COMMENT ON COLUMN "SYSTEM"."DEF$_DESTINATION"."TO_COMMUNICATION_SIZE" IS 'Total number of bytes sent to this dblink';
COMMENT ON COLUMN "SYSTEM"."DEF$_DESTINATION"."FROM_COMMUNICATION_SIZE" IS 'Total number of bytes received from this dblink';
COMMENT ON COLUMN "SYSTEM"."DEF$_DESTINATION"."SPARE1" IS 'Total number of round trips for this dblink';
COMMENT ON COLUMN "SYSTEM"."DEF$_DESTINATION"."SPARE2" IS 'Total number of administrative requests';
COMMENT ON COLUMN "SYSTEM"."DEF$_DESTINATION"."SPARE3" IS 'Total number of error transactions pushed';
COMMENT ON COLUMN "SYSTEM"."DEF$_DESTINATION"."SPARE4" IS 'Total time in seconds spent sleeping during push';

-- ----------------------------
-- Records of DEF$_DESTINATION
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."DEF$_ERROR"
-- ----------------------------
DROP TABLE "SYSTEM"."DEF$_ERROR";
CREATE TABLE "SYSTEM"."DEF$_ERROR" (
"ENQ_TID" VARCHAR2(22 BYTE) NOT NULL ,
"ORIGIN_TRAN_DB" VARCHAR2(128 BYTE) NULL ,
"ORIGIN_ENQ_TID" VARCHAR2(22 BYTE) NULL ,
"DESTINATION" VARCHAR2(128 BYTE) NULL ,
"STEP_NO" NUMBER NULL ,
"RECEIVER" NUMBER NULL ,
"ENQ_TIME" DATE NULL ,
"ERROR_NUMBER" NUMBER NULL ,
"ERROR_MSG" VARCHAR2(2000 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."DEF$_ERROR" IS 'Information about all deferred transactions that caused an error';
COMMENT ON COLUMN "SYSTEM"."DEF$_ERROR"."ENQ_TID" IS 'The ID of the transaction that created the error';
COMMENT ON COLUMN "SYSTEM"."DEF$_ERROR"."ORIGIN_TRAN_DB" IS 'The database originating the deferred transaction';
COMMENT ON COLUMN "SYSTEM"."DEF$_ERROR"."ORIGIN_ENQ_TID" IS 'The original ID of the transaction';
COMMENT ON COLUMN "SYSTEM"."DEF$_ERROR"."DESTINATION" IS 'Database link used to address destination';
COMMENT ON COLUMN "SYSTEM"."DEF$_ERROR"."STEP_NO" IS 'Unique ID of call that caused an error';
COMMENT ON COLUMN "SYSTEM"."DEF$_ERROR"."RECEIVER" IS 'User ID of the original receiver';
COMMENT ON COLUMN "SYSTEM"."DEF$_ERROR"."ENQ_TIME" IS 'Time original transaction enqueued';
COMMENT ON COLUMN "SYSTEM"."DEF$_ERROR"."ERROR_NUMBER" IS 'Oracle error number';
COMMENT ON COLUMN "SYSTEM"."DEF$_ERROR"."ERROR_MSG" IS 'Error message text';

-- ----------------------------
-- Records of DEF$_ERROR
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."DEF$_LOB"
-- ----------------------------
DROP TABLE "SYSTEM"."DEF$_LOB";
CREATE TABLE "SYSTEM"."DEF$_LOB" (
"ID" RAW(16) NOT NULL ,
"ENQ_TID" VARCHAR2(22 BYTE) NULL ,
"BLOB_COL" BLOB NULL ,
"CLOB_COL" CLOB NULL ,
"NCLOB_COL" NCLOB NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."DEF$_LOB" IS 'Storage for LOB parameters to deferred RPCs';
COMMENT ON COLUMN "SYSTEM"."DEF$_LOB"."ID" IS 'Identifier of LOB parameter';
COMMENT ON COLUMN "SYSTEM"."DEF$_LOB"."ENQ_TID" IS 'Transaction identifier for deferred RPC with this LOB parameter';
COMMENT ON COLUMN "SYSTEM"."DEF$_LOB"."BLOB_COL" IS 'Binary LOB parameter';
COMMENT ON COLUMN "SYSTEM"."DEF$_LOB"."CLOB_COL" IS 'Character LOB parameter';
COMMENT ON COLUMN "SYSTEM"."DEF$_LOB"."NCLOB_COL" IS 'National Character LOB parameter';

-- ----------------------------
-- Records of DEF$_LOB
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."DEF$_ORIGIN"
-- ----------------------------
DROP TABLE "SYSTEM"."DEF$_ORIGIN";
CREATE TABLE "SYSTEM"."DEF$_ORIGIN" (
"ORIGIN_DB" VARCHAR2(128 BYTE) NULL ,
"ORIGIN_DBLINK" VARCHAR2(128 BYTE) NULL ,
"INUSR" NUMBER NULL ,
"CSCN" NUMBER NULL ,
"ENQ_TID" VARCHAR2(22 BYTE) NULL ,
"RECO_SEQ_NO" NUMBER NULL ,
"CATCHUP" RAW(16) DEFAULT '00'  NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."DEF$_ORIGIN" IS 'Information about deferred transactions pushed to this site';
COMMENT ON COLUMN "SYSTEM"."DEF$_ORIGIN"."ORIGIN_DB" IS 'Originating database for the deferred transaction';
COMMENT ON COLUMN "SYSTEM"."DEF$_ORIGIN"."ORIGIN_DBLINK" IS 'Database link from deferred transaction origin to this site';
COMMENT ON COLUMN "SYSTEM"."DEF$_ORIGIN"."INUSR" IS 'Connected user receiving the deferred transaction';
COMMENT ON COLUMN "SYSTEM"."DEF$_ORIGIN"."CSCN" IS 'Prepare SCN assigned at origin site';
COMMENT ON COLUMN "SYSTEM"."DEF$_ORIGIN"."ENQ_TID" IS 'Transaction id assigned at origin site';
COMMENT ON COLUMN "SYSTEM"."DEF$_ORIGIN"."RECO_SEQ_NO" IS 'Deferred transaction sequence number for recovery';
COMMENT ON COLUMN "SYSTEM"."DEF$_ORIGIN"."CATCHUP" IS 'Used to break transaction into pieces';

-- ----------------------------
-- Records of DEF$_ORIGIN
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."DEF$_PROPAGATOR"
-- ----------------------------
DROP TABLE "SYSTEM"."DEF$_PROPAGATOR";
CREATE TABLE "SYSTEM"."DEF$_PROPAGATOR" (
"USERID" NUMBER NOT NULL ,
"USERNAME" VARCHAR2(30 BYTE) NOT NULL ,
"CREATED" DATE DEFAULT SYSDATE  NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."DEF$_PROPAGATOR" IS 'The propagator for deferred remote procedure calls';
COMMENT ON COLUMN "SYSTEM"."DEF$_PROPAGATOR"."USERID" IS 'User ID of the propagator';
COMMENT ON COLUMN "SYSTEM"."DEF$_PROPAGATOR"."USERNAME" IS 'User name of the propagator';
COMMENT ON COLUMN "SYSTEM"."DEF$_PROPAGATOR"."CREATED" IS 'The time when the propagator is registered';

-- ----------------------------
-- Records of DEF$_PROPAGATOR
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."DEF$_PUSHED_TRANSACTIONS"
-- ----------------------------
DROP TABLE "SYSTEM"."DEF$_PUSHED_TRANSACTIONS";
CREATE TABLE "SYSTEM"."DEF$_PUSHED_TRANSACTIONS" (
"SOURCE_SITE_ID" NUMBER NOT NULL ,
"LAST_TRAN_ID" NUMBER DEFAULT 0  NULL ,
"DISABLED" VARCHAR2(1 BYTE) DEFAULT 'F'  NULL ,
"SOURCE_SITE" VARCHAR2(128 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."DEF$_PUSHED_TRANSACTIONS" IS 'Information about deferred transactions pushed to this site by RepAPI clients';
COMMENT ON COLUMN "SYSTEM"."DEF$_PUSHED_TRANSACTIONS"."SOURCE_SITE_ID" IS 'Originating database identifier for the deferred transaction';
COMMENT ON COLUMN "SYSTEM"."DEF$_PUSHED_TRANSACTIONS"."LAST_TRAN_ID" IS 'Last committed transaction';
COMMENT ON COLUMN "SYSTEM"."DEF$_PUSHED_TRANSACTIONS"."DISABLED" IS 'Disable propagation';
COMMENT ON COLUMN "SYSTEM"."DEF$_PUSHED_TRANSACTIONS"."SOURCE_SITE" IS 'Obsolete - do not use';

-- ----------------------------
-- Records of DEF$_PUSHED_TRANSACTIONS
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."DISASTER"
-- ----------------------------
DROP TABLE "SYSTEM"."DISASTER";
CREATE TABLE "SYSTEM"."DISASTER" (
"ID" VARCHAR2(10 BYTE) NOT NULL ,
"TYPE" VARCHAR2(25 BYTE) NOT NULL ,
"NAME" VARCHAR2(200 BYTE) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of DISASTER
-- ----------------------------
INSERT INTO "SYSTEM"."DISASTER" VALUES ('na001', 'natural', 'sidr');
INSERT INTO "SYSTEM"."DISASTER" VALUES ('na002', 'natural', 'aila');
INSERT INTO "SYSTEM"."DISASTER" VALUES ('na003', 'natural', 'nargis');

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
-- Table structure for "SYSTEM"."HELP"
-- ----------------------------
DROP TABLE "SYSTEM"."HELP";
CREATE TABLE "SYSTEM"."HELP" (
"TOPIC" VARCHAR2(50 BYTE) NOT NULL ,
"SEQ" NUMBER NOT NULL ,
"INFO" VARCHAR2(80 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of HELP
-- ----------------------------
INSERT INTO "SYSTEM"."HELP" VALUES ('@', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('@', '2', ' @ ("at" sign)');
INSERT INTO "SYSTEM"."HELP" VALUES ('@', '3', ' -------------');
INSERT INTO "SYSTEM"."HELP" VALUES ('@', '4', ' Runs the SQL*Plus statements in the specified script. The script can be');
INSERT INTO "SYSTEM"."HELP" VALUES ('@', '5', ' called from the local file system or a web server.');
INSERT INTO "SYSTEM"."HELP" VALUES ('@', '6', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('@', '7', ' @ {url|file_name[.ext]} [arg ...]');
INSERT INTO "SYSTEM"."HELP" VALUES ('@', '8', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('@', '9', ' where url supports HTTP and FTP protocols in the form:');
INSERT INTO "SYSTEM"."HELP" VALUES ('@', '10', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('@', '11', '    http://host.domain/script.sql');
INSERT INTO "SYSTEM"."HELP" VALUES ('@', '12', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('@@', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('@@', '2', ' @@ (double "at" sign)');
INSERT INTO "SYSTEM"."HELP" VALUES ('@@', '3', ' ---------------------');
INSERT INTO "SYSTEM"."HELP" VALUES ('@@', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('@@', '5', ' Runs the specified script. This command is almost identical to');
INSERT INTO "SYSTEM"."HELP" VALUES ('@@', '6', ' the @ command. It is useful for running nested scripts because it');
INSERT INTO "SYSTEM"."HELP" VALUES ('@@', '7', ' has the additional functionality of looking for the nested script');
INSERT INTO "SYSTEM"."HELP" VALUES ('@@', '8', ' in the same url or path as the calling script.');
INSERT INTO "SYSTEM"."HELP" VALUES ('@@', '9', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('@@', '10', ' @@ {url|file_name[.ext]} [arg ...]');
INSERT INTO "SYSTEM"."HELP" VALUES ('@@', '11', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('/', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('/', '2', ' / (slash)');
INSERT INTO "SYSTEM"."HELP" VALUES ('/', '3', ' ---------');
INSERT INTO "SYSTEM"."HELP" VALUES ('/', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('/', '5', ' Executes the most recently executed SQL command or PL/SQL block');
INSERT INTO "SYSTEM"."HELP" VALUES ('/', '6', ' which is stored in the SQL buffer. Use slash (/) at the command');
INSERT INTO "SYSTEM"."HELP" VALUES ('/', '7', ' prompt or line number prompt in SQL*Plus command line. The buffer');
INSERT INTO "SYSTEM"."HELP" VALUES ('/', '8', ' has no command history and does not record SQL*Plus commands.');
INSERT INTO "SYSTEM"."HELP" VALUES ('/', '9', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('/', '10', ' /');
INSERT INTO "SYSTEM"."HELP" VALUES ('/', '11', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('ACCEPT', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('ACCEPT', '2', ' ACCEPT');
INSERT INTO "SYSTEM"."HELP" VALUES ('ACCEPT', '3', ' ------');
INSERT INTO "SYSTEM"."HELP" VALUES ('ACCEPT', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('ACCEPT', '5', ' Reads a line of input and stores it in a given substitution variable.');
INSERT INTO "SYSTEM"."HELP" VALUES ('ACCEPT', '6', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('ACCEPT', '7', ' ACC[EPT] variable [NUM[BER] | CHAR | DATE | BINARY_FLOAT | BINARY_DOUBLE]');
INSERT INTO "SYSTEM"."HELP" VALUES ('ACCEPT', '8', ' [FOR[MAT] format] [DEF[AULT] default] [PROMPT text | NOPR[OMPT]] [HIDE]');
INSERT INTO "SYSTEM"."HELP" VALUES ('ACCEPT', '9', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('APPEND', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('APPEND', '2', ' APPEND');
INSERT INTO "SYSTEM"."HELP" VALUES ('APPEND', '3', ' ------');
INSERT INTO "SYSTEM"."HELP" VALUES ('APPEND', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('APPEND', '5', ' Adds text to the end of the current line in the SQL buffer.');
INSERT INTO "SYSTEM"."HELP" VALUES ('APPEND', '6', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('APPEND', '7', ' A[PPEND] text');
INSERT INTO "SYSTEM"."HELP" VALUES ('APPEND', '8', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('ARCHIVE LOG', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('ARCHIVE LOG', '2', ' ARCHIVE LOG');
INSERT INTO "SYSTEM"."HELP" VALUES ('ARCHIVE LOG', '3', ' -----------');
INSERT INTO "SYSTEM"."HELP" VALUES ('ARCHIVE LOG', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('ARCHIVE LOG', '5', ' Displays information about redo log files.');
INSERT INTO "SYSTEM"."HELP" VALUES ('ARCHIVE LOG', '6', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('ARCHIVE LOG', '7', ' ARCHIVE LOG LIST');
INSERT INTO "SYSTEM"."HELP" VALUES ('ARCHIVE LOG', '8', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('ATTRIBUTE', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('ATTRIBUTE', '2', ' ATTRIBUTE');
INSERT INTO "SYSTEM"."HELP" VALUES ('ATTRIBUTE', '3', ' ---------');
INSERT INTO "SYSTEM"."HELP" VALUES ('ATTRIBUTE', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('ATTRIBUTE', '5', ' Specifies display characteristics for a given attribute of an Object Type');
INSERT INTO "SYSTEM"."HELP" VALUES ('ATTRIBUTE', '6', ' column, such as the format of NUMBER data. Columns and attributes should');
INSERT INTO "SYSTEM"."HELP" VALUES ('ATTRIBUTE', '7', ' not have the same names as they share a common namespace. Lists the');
INSERT INTO "SYSTEM"."HELP" VALUES ('ATTRIBUTE', '8', ' current display characteristics for a single attribute or all attributes.');
INSERT INTO "SYSTEM"."HELP" VALUES ('ATTRIBUTE', '9', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('ATTRIBUTE', '10', ' ATTRIBUTE [type_name.attribute_name [option ... ]]');
INSERT INTO "SYSTEM"."HELP" VALUES ('ATTRIBUTE', '11', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('ATTRIBUTE', '12', ' where option represents one of the following terms or clauses:');
INSERT INTO "SYSTEM"."HELP" VALUES ('ATTRIBUTE', '13', '     ALI[AS] alias');
INSERT INTO "SYSTEM"."HELP" VALUES ('ATTRIBUTE', '14', '     CLE[AR]');
INSERT INTO "SYSTEM"."HELP" VALUES ('ATTRIBUTE', '15', '     FOR[MAT] format');
INSERT INTO "SYSTEM"."HELP" VALUES ('ATTRIBUTE', '16', '     LIKE {type_name.attribute_name | alias}');
INSERT INTO "SYSTEM"."HELP" VALUES ('ATTRIBUTE', '17', '     ON|OFF');
INSERT INTO "SYSTEM"."HELP" VALUES ('ATTRIBUTE', '18', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('BREAK', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('BREAK', '2', ' BREAK');
INSERT INTO "SYSTEM"."HELP" VALUES ('BREAK', '3', ' -----');
INSERT INTO "SYSTEM"."HELP" VALUES ('BREAK', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('BREAK', '5', ' Specifies where changes occur in a report and the formatting');
INSERT INTO "SYSTEM"."HELP" VALUES ('BREAK', '6', ' action to perform, such as:');
INSERT INTO "SYSTEM"."HELP" VALUES ('BREAK', '7', ' - suppressing display of duplicate values for a given column');
INSERT INTO "SYSTEM"."HELP" VALUES ('BREAK', '8', ' - skipping a line each time a given column value changes');
INSERT INTO "SYSTEM"."HELP" VALUES ('BREAK', '9', ' - printing computed figures each time a given column value');
INSERT INTO "SYSTEM"."HELP" VALUES ('BREAK', '10', '   changes or at the end of the report.');
INSERT INTO "SYSTEM"."HELP" VALUES ('BREAK', '11', ' Enter BREAK with no clauses to list the current BREAK definition.');
INSERT INTO "SYSTEM"."HELP" VALUES ('BREAK', '12', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('BREAK', '13', ' BRE[AK] [ON report_element [action [action]]] ...');
INSERT INTO "SYSTEM"."HELP" VALUES ('BREAK', '14', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('BREAK', '15', ' where report_element has the following syntax:');
INSERT INTO "SYSTEM"."HELP" VALUES ('BREAK', '16', '     {column | expression | ROW | REPORT}');
INSERT INTO "SYSTEM"."HELP" VALUES ('BREAK', '17', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('BREAK', '18', ' and where action has the following syntax:');
INSERT INTO "SYSTEM"."HELP" VALUES ('BREAK', '19', '     [SKI[P] n | [SKI[P]] PAGE] [NODUP[LICATES] | DUP[LICATES]]');
INSERT INTO "SYSTEM"."HELP" VALUES ('BREAK', '20', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('BTITLE', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('BTITLE', '2', ' BTITLE');
INSERT INTO "SYSTEM"."HELP" VALUES ('BTITLE', '3', ' ------');
INSERT INTO "SYSTEM"."HELP" VALUES ('BTITLE', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('BTITLE', '5', ' Places and formats a specified title at the bottom of each report');
INSERT INTO "SYSTEM"."HELP" VALUES ('BTITLE', '6', ' page, or lists the current BTITLE definition.');
INSERT INTO "SYSTEM"."HELP" VALUES ('BTITLE', '7', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('BTITLE', '8', ' BTI[TLE] [printspec [text|variable] ...] | [OFF|ON]');
INSERT INTO "SYSTEM"."HELP" VALUES ('BTITLE', '9', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('BTITLE', '10', ' where printspec represents one or more of the following clauses:');
INSERT INTO "SYSTEM"."HELP" VALUES ('BTITLE', '11', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('BTITLE', '12', '     COL n          LE[FT]        BOLD');
INSERT INTO "SYSTEM"."HELP" VALUES ('BTITLE', '13', '     S[KIP] [n]     CE[NTER]      FORMAT text');
INSERT INTO "SYSTEM"."HELP" VALUES ('BTITLE', '14', '     TAB n          R[IGHT]');
INSERT INTO "SYSTEM"."HELP" VALUES ('BTITLE', '15', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('CHANGE', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('CHANGE', '2', ' CHANGE');
INSERT INTO "SYSTEM"."HELP" VALUES ('CHANGE', '3', ' ------');
INSERT INTO "SYSTEM"."HELP" VALUES ('CHANGE', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('CHANGE', '5', ' Changes the first occurrence of the specified text on the current');
INSERT INTO "SYSTEM"."HELP" VALUES ('CHANGE', '6', ' line of the SQL buffer. The buffer has no command history list and');
INSERT INTO "SYSTEM"."HELP" VALUES ('CHANGE', '7', ' does not record SQL*Plus commands.');
INSERT INTO "SYSTEM"."HELP" VALUES ('CHANGE', '8', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('CHANGE', '9', ' C[HANGE] sepchar old [sepchar [new[sepchar]]]');
INSERT INTO "SYSTEM"."HELP" VALUES ('CHANGE', '10', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('CLEAR', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('CLEAR', '2', ' CLEAR');
INSERT INTO "SYSTEM"."HELP" VALUES ('CLEAR', '3', ' -----');
INSERT INTO "SYSTEM"."HELP" VALUES ('CLEAR', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('CLEAR', '5', ' Resets or erases the current value or setting for the specified option.');
INSERT INTO "SYSTEM"."HELP" VALUES ('CLEAR', '6', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('CLEAR', '7', ' CL[EAR] option ...');
INSERT INTO "SYSTEM"."HELP" VALUES ('CLEAR', '8', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('CLEAR', '9', ' where option represents one of the following clauses:');
INSERT INTO "SYSTEM"."HELP" VALUES ('CLEAR', '10', '     BRE[AKS]');
INSERT INTO "SYSTEM"."HELP" VALUES ('CLEAR', '11', '     BUFF[ER]');
INSERT INTO "SYSTEM"."HELP" VALUES ('CLEAR', '12', '     COL[UMNS]');
INSERT INTO "SYSTEM"."HELP" VALUES ('CLEAR', '13', '     COMP[UTES]');
INSERT INTO "SYSTEM"."HELP" VALUES ('CLEAR', '14', '     SCR[EEN]');
INSERT INTO "SYSTEM"."HELP" VALUES ('CLEAR', '15', '     SQL');
INSERT INTO "SYSTEM"."HELP" VALUES ('CLEAR', '16', '     TIMI[NG]');
INSERT INTO "SYSTEM"."HELP" VALUES ('CLEAR', '17', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('COLUMN', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('COLUMN', '2', ' COLUMN');
INSERT INTO "SYSTEM"."HELP" VALUES ('COLUMN', '3', ' ------');
INSERT INTO "SYSTEM"."HELP" VALUES ('COLUMN', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('COLUMN', '5', ' Specifies display attributes for a given column, such as:');
INSERT INTO "SYSTEM"."HELP" VALUES ('COLUMN', '6', '     - text for the column heading');
INSERT INTO "SYSTEM"."HELP" VALUES ('COLUMN', '7', '     - alignment for the column heading');
INSERT INTO "SYSTEM"."HELP" VALUES ('COLUMN', '8', '     - format for NUMBER data');
INSERT INTO "SYSTEM"."HELP" VALUES ('COLUMN', '9', '     - wrapping of column data');
INSERT INTO "SYSTEM"."HELP" VALUES ('COLUMN', '10', ' Also lists the current display attributes for a single column');
INSERT INTO "SYSTEM"."HELP" VALUES ('COLUMN', '11', ' or all columns.');
INSERT INTO "SYSTEM"."HELP" VALUES ('COLUMN', '12', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('COLUMN', '13', ' COL[UMN] [{column | expr} [option ...] ]');
INSERT INTO "SYSTEM"."HELP" VALUES ('COLUMN', '14', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('COLUMN', '15', ' where option represents one of the following clauses:');
INSERT INTO "SYSTEM"."HELP" VALUES ('COLUMN', '16', '     ALI[AS] alias');
INSERT INTO "SYSTEM"."HELP" VALUES ('COLUMN', '17', '     CLE[AR]');
INSERT INTO "SYSTEM"."HELP" VALUES ('COLUMN', '18', '     ENTMAP {ON|OFF}');
INSERT INTO "SYSTEM"."HELP" VALUES ('COLUMN', '19', '     FOLD_A[FTER]');
INSERT INTO "SYSTEM"."HELP" VALUES ('COLUMN', '20', '     FOLD_B[EFORE]');
INSERT INTO "SYSTEM"."HELP" VALUES ('COLUMN', '21', '     FOR[MAT] format');
INSERT INTO "SYSTEM"."HELP" VALUES ('COLUMN', '22', '     HEA[DING] text');
INSERT INTO "SYSTEM"."HELP" VALUES ('COLUMN', '23', '     JUS[TIFY] {L[EFT] | C[ENTER] | R[IGHT]}');
INSERT INTO "SYSTEM"."HELP" VALUES ('COLUMN', '24', '     LIKE {expr | alias}');
INSERT INTO "SYSTEM"."HELP" VALUES ('COLUMN', '25', '     NEWL[INE]');
INSERT INTO "SYSTEM"."HELP" VALUES ('COLUMN', '26', '     NEW_V[ALUE] variable');
INSERT INTO "SYSTEM"."HELP" VALUES ('COLUMN', '27', '     NOPRI[NT] | PRI[NT]');
INSERT INTO "SYSTEM"."HELP" VALUES ('COLUMN', '28', '     NUL[L] text');
INSERT INTO "SYSTEM"."HELP" VALUES ('COLUMN', '29', '     OLD_V[ALUE] variable');
INSERT INTO "SYSTEM"."HELP" VALUES ('COLUMN', '30', '     ON|OFF');
INSERT INTO "SYSTEM"."HELP" VALUES ('COLUMN', '31', '     WRA[PPED] | WOR[D_WRAPPED] | TRU[NCATED]');
INSERT INTO "SYSTEM"."HELP" VALUES ('COLUMN', '32', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('COMPUTE', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('COMPUTE', '2', ' COMPUTE');
INSERT INTO "SYSTEM"."HELP" VALUES ('COMPUTE', '3', ' -------');
INSERT INTO "SYSTEM"."HELP" VALUES ('COMPUTE', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('COMPUTE', '5', ' In combination with the BREAK command, calculates and prints');
INSERT INTO "SYSTEM"."HELP" VALUES ('COMPUTE', '6', ' summary lines using various standard computations. Also lists');
INSERT INTO "SYSTEM"."HELP" VALUES ('COMPUTE', '7', ' all COMPUTE definitions.');
INSERT INTO "SYSTEM"."HELP" VALUES ('COMPUTE', '8', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('COMPUTE', '9', ' COMP[UTE] [function [LAB[EL] text] ...');
INSERT INTO "SYSTEM"."HELP" VALUES ('COMPUTE', '10', '   OF {expr|column|alias} ...');
INSERT INTO "SYSTEM"."HELP" VALUES ('COMPUTE', '11', '   ON {expr|column|alias|REPORT|ROW} ...]');
INSERT INTO "SYSTEM"."HELP" VALUES ('COMPUTE', '12', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('CONNECT', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('CONNECT', '2', ' CONNECT');
INSERT INTO "SYSTEM"."HELP" VALUES ('CONNECT', '3', ' -------');
INSERT INTO "SYSTEM"."HELP" VALUES ('CONNECT', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('CONNECT', '5', ' Connects a given username to the Oracle Database. When you run a');
INSERT INTO "SYSTEM"."HELP" VALUES ('CONNECT', '6', ' CONNECT command, the site profile, glogin.sql, and the user profile,');
INSERT INTO "SYSTEM"."HELP" VALUES ('CONNECT', '7', ' login.sql, are processed in that order. CONNECT does not reprompt');
INSERT INTO "SYSTEM"."HELP" VALUES ('CONNECT', '8', ' for username or password if the initial connection does not succeed.');
INSERT INTO "SYSTEM"."HELP" VALUES ('CONNECT', '9', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('CONNECT', '10', ' CONN[ECT] [{logon|/|proxy} [AS {SYSOPER|SYSDBA|SYSASM}] [edition=value]]');
INSERT INTO "SYSTEM"."HELP" VALUES ('CONNECT', '11', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('CONNECT', '12', ' where logon has the following syntax:');
INSERT INTO "SYSTEM"."HELP" VALUES ('CONNECT', '13', '     username[/password][@connect_identifier]');
INSERT INTO "SYSTEM"."HELP" VALUES ('CONNECT', '14', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('CONNECT', '15', ' where proxy has the syntax:');
INSERT INTO "SYSTEM"."HELP" VALUES ('CONNECT', '16', '     proxyuser[username][/password][@connect_identifier]');
INSERT INTO "SYSTEM"."HELP" VALUES ('CONNECT', '17', ' NOTE: Brackets around username in proxy are required syntax');
INSERT INTO "SYSTEM"."HELP" VALUES ('CONNECT', '18', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('COPY', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('COPY', '2', ' COPY');
INSERT INTO "SYSTEM"."HELP" VALUES ('COPY', '3', ' ----');
INSERT INTO "SYSTEM"."HELP" VALUES ('COPY', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('COPY', '5', ' Copies data from a query to a table in the same or another');
INSERT INTO "SYSTEM"."HELP" VALUES ('COPY', '6', ' database. COPY supports CHAR, DATE, LONG, NUMBER and VARCHAR2.');
INSERT INTO "SYSTEM"."HELP" VALUES ('COPY', '7', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('COPY', '8', ' COPY {FROM database | TO database | FROM database TO database}');
INSERT INTO "SYSTEM"."HELP" VALUES ('COPY', '9', '            {APPEND|CREATE|INSERT|REPLACE} destination_table');
INSERT INTO "SYSTEM"."HELP" VALUES ('COPY', '10', '            [(column, column, column, ...)] USING query');
INSERT INTO "SYSTEM"."HELP" VALUES ('COPY', '11', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('COPY', '12', ' where database has the following syntax:');
INSERT INTO "SYSTEM"."HELP" VALUES ('COPY', '13', '     username[/password]@connect_identifier');
INSERT INTO "SYSTEM"."HELP" VALUES ('COPY', '14', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('DEFINE', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('DEFINE', '2', ' DEFINE');
INSERT INTO "SYSTEM"."HELP" VALUES ('DEFINE', '3', ' ------');
INSERT INTO "SYSTEM"."HELP" VALUES ('DEFINE', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('DEFINE', '5', ' Specifies a substitution variable and assigns a CHAR value to it, or');
INSERT INTO "SYSTEM"."HELP" VALUES ('DEFINE', '6', ' lists the value and variable type of a single variable or all variables.');
INSERT INTO "SYSTEM"."HELP" VALUES ('DEFINE', '7', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('DEFINE', '8', ' DEF[INE] [variable] | [variable = text]');
INSERT INTO "SYSTEM"."HELP" VALUES ('DEFINE', '9', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('DEL', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('DEL', '2', ' DEL');
INSERT INTO "SYSTEM"."HELP" VALUES ('DEL', '3', ' ---');
INSERT INTO "SYSTEM"."HELP" VALUES ('DEL', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('DEL', '5', ' Deletes one or more lines of the SQL buffer. The buffer has no');
INSERT INTO "SYSTEM"."HELP" VALUES ('DEL', '6', ' command history list and does not record SQL*Plus commands.');
INSERT INTO "SYSTEM"."HELP" VALUES ('DEL', '7', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('DEL', '8', ' DEL [n | n m | n * | n LAST | * | * n | * LAST | LAST]');
INSERT INTO "SYSTEM"."HELP" VALUES ('DEL', '9', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('DESCRIBE', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('DESCRIBE', '2', ' DESCRIBE');
INSERT INTO "SYSTEM"."HELP" VALUES ('DESCRIBE', '3', ' --------');
INSERT INTO "SYSTEM"."HELP" VALUES ('DESCRIBE', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('DESCRIBE', '5', ' Lists the column definitions for a table, view, or synonym,');
INSERT INTO "SYSTEM"."HELP" VALUES ('DESCRIBE', '6', ' or the specifications for a function or procedure.');
INSERT INTO "SYSTEM"."HELP" VALUES ('DESCRIBE', '7', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('DESCRIBE', '8', ' DESC[RIBE] {[schema.]object[@connect_identifier]}');
INSERT INTO "SYSTEM"."HELP" VALUES ('DESCRIBE', '9', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('DISCONNECT', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('DISCONNECT', '2', ' DISCONNECT');
INSERT INTO "SYSTEM"."HELP" VALUES ('DISCONNECT', '3', ' ----------');
INSERT INTO "SYSTEM"."HELP" VALUES ('DISCONNECT', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('DISCONNECT', '5', ' Commits pending changes to the database and logs the current');
INSERT INTO "SYSTEM"."HELP" VALUES ('DISCONNECT', '6', ' user out of Oracle, but does not exit SQL*Plus.');
INSERT INTO "SYSTEM"."HELP" VALUES ('DISCONNECT', '7', ' In SQL*Plus command line, use EXIT or QUIT to log out of Oracle');
INSERT INTO "SYSTEM"."HELP" VALUES ('DISCONNECT', '8', ' and return control to your computer''s operating system.');
INSERT INTO "SYSTEM"."HELP" VALUES ('DISCONNECT', '9', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('DISCONNECT', '10', ' DISC[ONNECT]');
INSERT INTO "SYSTEM"."HELP" VALUES ('DISCONNECT', '11', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('EDIT', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('EDIT', '2', ' EDIT');
INSERT INTO "SYSTEM"."HELP" VALUES ('EDIT', '3', ' ----');
INSERT INTO "SYSTEM"."HELP" VALUES ('EDIT', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('EDIT', '5', ' Invokes an operating system text editor on the contents of the');
INSERT INTO "SYSTEM"."HELP" VALUES ('EDIT', '6', ' specified file or on the contents of the SQL buffer. The buffer');
INSERT INTO "SYSTEM"."HELP" VALUES ('EDIT', '7', ' has no command history list and does not record SQL*Plus commands.');
INSERT INTO "SYSTEM"."HELP" VALUES ('EDIT', '8', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('EDIT', '9', ' ED[IT] [file_name[.ext]]');
INSERT INTO "SYSTEM"."HELP" VALUES ('EDIT', '10', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('EXECUTE', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('EXECUTE', '2', ' EXECUTE');
INSERT INTO "SYSTEM"."HELP" VALUES ('EXECUTE', '3', ' -------');
INSERT INTO "SYSTEM"."HELP" VALUES ('EXECUTE', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('EXECUTE', '5', ' Executes a single PL/SQL statement or runs a stored procedure.');
INSERT INTO "SYSTEM"."HELP" VALUES ('EXECUTE', '6', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('EXECUTE', '7', ' EXEC[UTE] statement');
INSERT INTO "SYSTEM"."HELP" VALUES ('EXECUTE', '8', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('EXIT', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('EXIT', '2', ' EXIT');
INSERT INTO "SYSTEM"."HELP" VALUES ('EXIT', '3', ' ----');
INSERT INTO "SYSTEM"."HELP" VALUES ('EXIT', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('EXIT', '5', ' Commits or rolls back all pending changes, logs out of Oracle,');
INSERT INTO "SYSTEM"."HELP" VALUES ('EXIT', '6', ' terminates SQL*Plus and returns control to the operating system.');
INSERT INTO "SYSTEM"."HELP" VALUES ('EXIT', '7', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('EXIT', '8', ' {EXIT|QUIT} [SUCCESS|FAILURE|WARNING|n|variable|:BindVariable]');
INSERT INTO "SYSTEM"."HELP" VALUES ('EXIT', '9', '   [COMMIT|ROLLBACK]');
INSERT INTO "SYSTEM"."HELP" VALUES ('EXIT', '10', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('GET', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('GET', '2', ' GET');
INSERT INTO "SYSTEM"."HELP" VALUES ('GET', '3', ' ---');
INSERT INTO "SYSTEM"."HELP" VALUES ('GET', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('GET', '5', ' Loads a SQL statement or PL/SQL block from a script into the SQL buffer.');
INSERT INTO "SYSTEM"."HELP" VALUES ('GET', '6', ' The buffer has no command history list and does not record SQL*Plus commands.');
INSERT INTO "SYSTEM"."HELP" VALUES ('GET', '7', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('GET', '8', ' GET [FILE] file_name[.ext] [LIST | NOLIST]');
INSERT INTO "SYSTEM"."HELP" VALUES ('GET', '9', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('HELP', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('HELP', '2', ' HELP');
INSERT INTO "SYSTEM"."HELP" VALUES ('HELP', '3', ' ----');
INSERT INTO "SYSTEM"."HELP" VALUES ('HELP', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('HELP', '5', ' Accesses this command line help system. Enter HELP INDEX or ? INDEX');
INSERT INTO "SYSTEM"."HELP" VALUES ('HELP', '6', ' for a list of topics.');
INSERT INTO "SYSTEM"."HELP" VALUES ('HELP', '7', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('HELP', '8', ' You can view SQL*Plus resources at');
INSERT INTO "SYSTEM"."HELP" VALUES ('HELP', '9', '     http://www.oracle.com/technology/tech/sql_plus/');
INSERT INTO "SYSTEM"."HELP" VALUES ('HELP', '10', ' and the Oracle Database Library at');
INSERT INTO "SYSTEM"."HELP" VALUES ('HELP', '11', '     http://www.oracle.com/technology/documentation/');
INSERT INTO "SYSTEM"."HELP" VALUES ('HELP', '12', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('HELP', '13', ' HELP|? [topic]');
INSERT INTO "SYSTEM"."HELP" VALUES ('HELP', '14', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('HOST', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('HOST', '2', ' HOST');
INSERT INTO "SYSTEM"."HELP" VALUES ('HOST', '3', ' ----');
INSERT INTO "SYSTEM"."HELP" VALUES ('HOST', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('HOST', '5', ' Executes an operating system command without leaving SQL*Plus.');
INSERT INTO "SYSTEM"."HELP" VALUES ('HOST', '6', ' Enter HOST without command to display an operating system prompt.');
INSERT INTO "SYSTEM"."HELP" VALUES ('HOST', '7', ' You can then enter multiple operating system commands.');
INSERT INTO "SYSTEM"."HELP" VALUES ('HOST', '8', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('HOST', '9', ' HO[ST] [command]');
INSERT INTO "SYSTEM"."HELP" VALUES ('HOST', '10', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('INDEX', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('INDEX', '2', 'Enter Help [topic] for help.');
INSERT INTO "SYSTEM"."HELP" VALUES ('INDEX', '3', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('INDEX', '4', ' @             COPY         PAUSE                    SHUTDOWN');
INSERT INTO "SYSTEM"."HELP" VALUES ('INDEX', '5', ' @@            DEFINE       PRINT                    SPOOL');
INSERT INTO "SYSTEM"."HELP" VALUES ('INDEX', '6', ' /             DEL          PROMPT                   SQLPLUS');
INSERT INTO "SYSTEM"."HELP" VALUES ('INDEX', '7', ' ACCEPT        DESCRIBE     QUIT                     START');
INSERT INTO "SYSTEM"."HELP" VALUES ('INDEX', '8', ' APPEND        DISCONNECT   RECOVER                  STARTUP');
INSERT INTO "SYSTEM"."HELP" VALUES ('INDEX', '9', ' ARCHIVE LOG   EDIT         REMARK                   STORE');
INSERT INTO "SYSTEM"."HELP" VALUES ('INDEX', '10', ' ATTRIBUTE     EXECUTE      REPFOOTER                TIMING');
INSERT INTO "SYSTEM"."HELP" VALUES ('INDEX', '11', ' BREAK         EXIT         REPHEADER                TTITLE');
INSERT INTO "SYSTEM"."HELP" VALUES ('INDEX', '12', ' BTITLE        GET          RESERVED WORDS (SQL)     UNDEFINE');
INSERT INTO "SYSTEM"."HELP" VALUES ('INDEX', '13', ' CHANGE        HELP         RESERVED WORDS (PL/SQL)  VARIABLE');
INSERT INTO "SYSTEM"."HELP" VALUES ('INDEX', '14', ' CLEAR         HOST         RUN                      WHENEVER OSERROR');
INSERT INTO "SYSTEM"."HELP" VALUES ('INDEX', '15', ' COLUMN        INPUT        SAVE                     WHENEVER SQLERROR');
INSERT INTO "SYSTEM"."HELP" VALUES ('INDEX', '16', ' COMPUTE       LIST         SET                      XQUERY');
INSERT INTO "SYSTEM"."HELP" VALUES ('INDEX', '17', ' CONNECT       PASSWORD     SHOW');
INSERT INTO "SYSTEM"."HELP" VALUES ('INDEX', '18', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('INPUT', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('INPUT', '2', ' INPUT');
INSERT INTO "SYSTEM"."HELP" VALUES ('INPUT', '3', ' -----');
INSERT INTO "SYSTEM"."HELP" VALUES ('INPUT', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('INPUT', '5', ' Adds one or more new lines of text after the current line in the');
INSERT INTO "SYSTEM"."HELP" VALUES ('INPUT', '6', ' SQL buffer. The buffer has no command history list and does not');
INSERT INTO "SYSTEM"."HELP" VALUES ('INPUT', '7', ' record SQL*Plus commands.');
INSERT INTO "SYSTEM"."HELP" VALUES ('INPUT', '8', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('INPUT', '9', ' I[NPUT] [text]');
INSERT INTO "SYSTEM"."HELP" VALUES ('INPUT', '10', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('LIST', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('LIST', '2', ' LIST');
INSERT INTO "SYSTEM"."HELP" VALUES ('LIST', '3', ' ----');
INSERT INTO "SYSTEM"."HELP" VALUES ('LIST', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('LIST', '5', ' Lists one or more lines of the most recently executed SQL command');
INSERT INTO "SYSTEM"."HELP" VALUES ('LIST', '6', ' or PL/SQL block which is stored in the SQL buffer. Enter LIST with');
INSERT INTO "SYSTEM"."HELP" VALUES ('LIST', '7', ' no clauses to list all lines. In SQL*Plus command-line you can also');
INSERT INTO "SYSTEM"."HELP" VALUES ('LIST', '8', ' use ";" to list all the lines in the SQL buffer. The buffer has no');
INSERT INTO "SYSTEM"."HELP" VALUES ('LIST', '9', ' command history list and does not record SQL*Plus commands.');
INSERT INTO "SYSTEM"."HELP" VALUES ('LIST', '10', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('LIST', '11', ' L[IST] [n | n m | n  * | n LAST | * | * n | * LAST | LAST]');
INSERT INTO "SYSTEM"."HELP" VALUES ('LIST', '12', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('MENU', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('MENU', '2', ' Menu');
INSERT INTO "SYSTEM"."HELP" VALUES ('MENU', '3', ' ----');
INSERT INTO "SYSTEM"."HELP" VALUES ('MENU', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('MENU', '5', ' Enter HELP INDEX for a list of help topics.');
INSERT INTO "SYSTEM"."HELP" VALUES ('MENU', '6', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('PASSWORD', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('PASSWORD', '2', ' PASSWORD');
INSERT INTO "SYSTEM"."HELP" VALUES ('PASSWORD', '3', ' --------');
INSERT INTO "SYSTEM"."HELP" VALUES ('PASSWORD', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('PASSWORD', '5', ' Allows you to change a password without displaying it on an input device.');
INSERT INTO "SYSTEM"."HELP" VALUES ('PASSWORD', '6', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('PASSWORD', '7', ' PASSW[ORD] [username]');
INSERT INTO "SYSTEM"."HELP" VALUES ('PASSWORD', '8', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('PAUSE', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('PAUSE', '2', ' PAUSE');
INSERT INTO "SYSTEM"."HELP" VALUES ('PAUSE', '3', ' -----');
INSERT INTO "SYSTEM"."HELP" VALUES ('PAUSE', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('PAUSE', '5', ' Displays the specified text then waits for the user to press RETURN.');
INSERT INTO "SYSTEM"."HELP" VALUES ('PAUSE', '6', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('PAUSE', '7', ' PAU[SE] [text]');
INSERT INTO "SYSTEM"."HELP" VALUES ('PAUSE', '8', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('PRINT', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('PRINT', '2', ' PRINT');
INSERT INTO "SYSTEM"."HELP" VALUES ('PRINT', '3', ' -----');
INSERT INTO "SYSTEM"."HELP" VALUES ('PRINT', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('PRINT', '5', ' Displays the current values of bind variables, or lists all bind');
INSERT INTO "SYSTEM"."HELP" VALUES ('PRINT', '6', ' variables.');
INSERT INTO "SYSTEM"."HELP" VALUES ('PRINT', '7', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('PRINT', '8', ' PRI[NT] [variable ...]');
INSERT INTO "SYSTEM"."HELP" VALUES ('PRINT', '9', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('PROMPT', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('PROMPT', '2', ' PROMPT');
INSERT INTO "SYSTEM"."HELP" VALUES ('PROMPT', '3', ' ------');
INSERT INTO "SYSTEM"."HELP" VALUES ('PROMPT', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('PROMPT', '5', ' Sends the specified message or a blank line to the user''s screen.');
INSERT INTO "SYSTEM"."HELP" VALUES ('PROMPT', '6', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('PROMPT', '7', ' PRO[MPT] [text]');
INSERT INTO "SYSTEM"."HELP" VALUES ('PROMPT', '8', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('QUIT', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('QUIT', '2', ' QUIT (Identical to EXIT)');
INSERT INTO "SYSTEM"."HELP" VALUES ('QUIT', '3', ' ----');
INSERT INTO "SYSTEM"."HELP" VALUES ('QUIT', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('QUIT', '5', ' Commits or rolls back all pending changes, logs out of Oracle,');
INSERT INTO "SYSTEM"."HELP" VALUES ('QUIT', '6', ' terminates SQL*Plus and returns control to the operating system.');
INSERT INTO "SYSTEM"."HELP" VALUES ('QUIT', '7', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('QUIT', '8', ' {QUIT|EXIT} [SUCCESS|FAILURE|WARNING|n|variable|:BindVariable]');
INSERT INTO "SYSTEM"."HELP" VALUES ('QUIT', '9', '   [COMMIT|ROLLBACK]');
INSERT INTO "SYSTEM"."HELP" VALUES ('QUIT', '10', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '2', ' RECOVER');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '3', ' -------');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '5', ' Performs media recovery on one or more tablespaces, one or more');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '6', ' datafiles, or the entire database.');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '7', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '8', ' RECOVER {general | managed} | BEGIN BACKUP | END BACKUP}');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '9', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '10', ' where the general clause has the following syntax:');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '11', '   [AUTOMATIC] [FROM location]');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '12', '   { {full_database_recovery | partial_database_recovery |LOGFILE filename}');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '13', '   [ {TEST | ALLOW integer CORRUPTION | parallel_clause}');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '14', '   [TEST | ALLOW integer CORRUPTION | parallel_clause] ...]');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '15', '   |CONTINUE [DEFAULT]|CANCEL}');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '16', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '17', '   where the full_database_recovery clause has the following syntax:');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '18', '     [STANDBY] DATABASE');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '19', '     [{ UNTIL {CANCEL | TIME date | CHANGE integer}');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '20', '      | USING BACKUP CONTROLFILE}');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '21', '      [ UNTIL {CANCEL | TIME date | CHANGE integer}');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '22', '      | USING BACKUP CONTROLFILE] ...]');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '23', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '24', '   where the partial_database_recovery clause has the following syntax:');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '25', '     {TABLESPACE tablespace [, tablespace] ...');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '26', '      | DATAFILE filename | filenumber} [,filename | filenumber] ...');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '27', '      | STANDBY');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '28', '       {TABLESPACE tablespace [, tablespace] ...');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '29', '       | DATAFILE filename | filenumber} [,filename | filenumber] ...}');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '30', '     UNTIL [CONSISTENT WITH] CONTROLFILE }');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '31', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '32', ' where the parallel clause has the following syntax:');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '33', '   {NOPARALLEL | PARALLEL [integer]}');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '34', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '35', ' where the managed clause has the following syntax:');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '36', '   MANAGED STANDBY DATABASE recover_clause | cancel_clause | finish_clause');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '37', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '38', ' where the recover_clause has the following syntax:');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '39', '   {{DISCONNECT [FROM SESSION] | {TIMEOUT integer | NOTIMEOUT} }');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '40', '    |{NODELAY | DEFAULT DELAY | DELAY integer} | NEXT integer');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '41', '    |{EXPIRE integer | NO EXPIRE} | parallel_clause');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '42', '    | USING CURRENT LOGFILE | UNTIL CHANGE integer');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '43', '    | THROUGH {[THREAD integer] SEQUENCE integer');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '44', '              | ALL ARCHIVELOG  | {ALL | LAST | NEXT } SWITCHOVER} }');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '45', '      [DISCONNECT [FROM SESSION ]  | {TIMEOUT integer | NOTIMEOUT}');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '46', '       | {NODELAY | DEFAULT DELAY | DELAY integer} | NEXT integer');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '47', '       | {EXPIRE integer | NO EXPIRE} | parallel_clause');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '48', '       | USING CURRENT LOGFILE | UNTIL CHANGE integer');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '49', '       | THROUGH {[THREAD integer] SEQUENCE integer');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '50', '                 | ALL ARCHIVELOG  | {ALL | LAST | NEXT } SWITCHOVER} ]...');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '51', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '52', ' where the cancel_clause has the following syntax:');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '53', '   CANCEL [IMMEDIATE] [WAIT | NOWAIT]');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '54', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '55', ' where the finish_clause has the following syntax:');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '56', '   [DISCONNECT [FROM SESSION]] [parallel_clause]');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '57', '   FINISH [SKIP [STANDBY LOGFILE]] [WAIT | NOWAIT]');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '58', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '59', ' where the parallel_clause has the following syntax:');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '60', '   {NOPARALLEL | PARALLEL [integer] }');
INSERT INTO "SYSTEM"."HELP" VALUES ('RECOVER', '61', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('REMARK', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('REMARK', '2', ' REMARK');
INSERT INTO "SYSTEM"."HELP" VALUES ('REMARK', '3', ' ------');
INSERT INTO "SYSTEM"."HELP" VALUES ('REMARK', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('REMARK', '5', ' Begins a comment in a script. SQL*Plus does not interpret the comment');
INSERT INTO "SYSTEM"."HELP" VALUES ('REMARK', '6', ' as a command.');
INSERT INTO "SYSTEM"."HELP" VALUES ('REMARK', '7', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('REMARK', '8', ' REM[ARK]');
INSERT INTO "SYSTEM"."HELP" VALUES ('REMARK', '9', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('REPFOOTER', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('REPFOOTER', '2', ' REPFOOTER');
INSERT INTO "SYSTEM"."HELP" VALUES ('REPFOOTER', '3', ' ---------');
INSERT INTO "SYSTEM"."HELP" VALUES ('REPFOOTER', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('REPFOOTER', '5', ' Places and formats a footer at the bottom of a report, or lists the');
INSERT INTO "SYSTEM"."HELP" VALUES ('REPFOOTER', '6', ' REPFOOTER definition.');
INSERT INTO "SYSTEM"."HELP" VALUES ('REPFOOTER', '7', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('REPFOOTER', '8', ' REPF[OOTER] [PAGE] [printspec [text|variable] ...] | [OFF|ON]');
INSERT INTO "SYSTEM"."HELP" VALUES ('REPFOOTER', '9', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('REPFOOTER', '10', ' where printspec represents one or more of the following clauses:');
INSERT INTO "SYSTEM"."HELP" VALUES ('REPFOOTER', '11', '     COL n          LE[FT]        BOLD');
INSERT INTO "SYSTEM"."HELP" VALUES ('REPFOOTER', '12', '     S[KIP] [n]     CE[NTER]      FORMAT text');
INSERT INTO "SYSTEM"."HELP" VALUES ('REPFOOTER', '13', '     TAB n          R[IGHT]');
INSERT INTO "SYSTEM"."HELP" VALUES ('REPFOOTER', '14', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('REPHEADER', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('REPHEADER', '2', ' REPHEADER');
INSERT INTO "SYSTEM"."HELP" VALUES ('REPHEADER', '3', ' ---------');
INSERT INTO "SYSTEM"."HELP" VALUES ('REPHEADER', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('REPHEADER', '5', ' Places and formats a header at the top of a report, or lists the');
INSERT INTO "SYSTEM"."HELP" VALUES ('REPHEADER', '6', ' REPHEADER definition.');
INSERT INTO "SYSTEM"."HELP" VALUES ('REPHEADER', '7', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('REPHEADER', '8', ' REPH[EADER] [PAGE] [printspec [text|variable] ...] | [OFF|ON]');
INSERT INTO "SYSTEM"."HELP" VALUES ('REPHEADER', '9', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('REPHEADER', '10', ' where printspec represents one or more of the following clauses:');
INSERT INTO "SYSTEM"."HELP" VALUES ('REPHEADER', '11', '     COL n          LE[FT]        BOLD');
INSERT INTO "SYSTEM"."HELP" VALUES ('REPHEADER', '12', '     S[KIP] [n]     CE[NTER]      FORMAT text');
INSERT INTO "SYSTEM"."HELP" VALUES ('REPHEADER', '13', '     TAB n          R[IGHT]');
INSERT INTO "SYSTEM"."HELP" VALUES ('REPHEADER', '14', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (SQL)', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (SQL)', '2', ' RESERVED WORDS (SQL)');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (SQL)', '3', ' --------------------');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (SQL)', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (SQL)', '5', ' SQL Reserved Words have special meaning in SQL, and may not be used for');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (SQL)', '6', ' identifier names unless enclosed in "quotes".');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (SQL)', '7', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (SQL)', '8', ' An asterisk (*) indicates words are also ANSI Reserved Words.');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (SQL)', '9', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (SQL)', '10', ' Oracle prefixes implicitly generated schema object and subobject names');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (SQL)', '11', ' with "SYS_". To avoid name resolution conflict, Oracle discourages you');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (SQL)', '12', ' from prefixing your schema object and subobject names with "SYS_".');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (SQL)', '13', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (SQL)', '14', ' ACCESS          DEFAULT*         INTEGER*        ONLINE          START');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (SQL)', '15', ' ADD*            DELETE*          INTERSECT*      OPTION*         SUCCESSFUL');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (SQL)', '16', ' ALL*            DESC*            INTO*           OR*             SYNONYM');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (SQL)', '17', ' ALTER*          DISTINCT*        IS*             ORDER*          SYSDATE');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (SQL)', '18', ' AND*            DROP*            LEVEL*          PCTFREE         TABLE*');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (SQL)', '19', ' ANY*            ELSE*            LIKE*           PRIOR*          THEN*');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (SQL)', '20', ' AS*             EXCLUSIVE        LOCK            PRIVILEGES*     TO*');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (SQL)', '21', ' ASC*            EXISTS           LONG            PUBLIC*         TRIGGER');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (SQL)', '22', ' AUDIT           FILE             MAXEXTENTS      RAW             UID');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (SQL)', '23', ' BETWEEN*        FLOAT*           MINUS           RENAME          UNION*');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (SQL)', '24', ' BY*             FOR*             MLSLABEL        RESOURCE        UNIQUE*');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (SQL)', '25', ' CHAR*           FROM*            MODE            REVOKE*         UPDATE*');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (SQL)', '26', ' CHECK*          GRANT*           MODIFY          ROW             USER*');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (SQL)', '27', ' CLUSTER         GROUP*           NOAUDIT         ROWID           VALIDATE');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (SQL)', '28', ' COLUMN          HAVING*          NOCOMPRESS      ROWNUM          VALUES*');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (SQL)', '29', ' COMMENT         IDENTIFIED       NOT*            ROWS*           VARCHAR*');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (SQL)', '30', ' COMPRESS        IMMEDIATE*       NOWAIT          SELECT*         VARCHAR2');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (SQL)', '31', ' CONNECT*        IN*              NULL*           SESSION*        VIEW*');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (SQL)', '32', ' CREATE*         INCREMENT        NUMBER          SET*            WHENEVER*');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (SQL)', '33', ' CURRENT*        INDEX            OF*             SHARE           WHERE');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (SQL)', '34', ' DATE*           INITIAL          OFFLINE         SIZE*           WITH*');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (SQL)', '35', ' DECIMAL*        INSERT*          ON*             SMALLINT*');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (SQL)', '36', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '2', ' RESERVED WORDS (PL/SQL)');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '3', ' -----------------------');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '5', ' PL/SQL Reserved Words have special meaning in PL/SQL, and may not be used');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '6', ' for identifier names (unless enclosed in "quotes").');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '7', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '8', ' An asterisk (*) indicates words are also SQL Reserved Words.');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '9', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '10', ' ALL*            DESC*           JAVA            PACKAGE         SUBTYPE');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '11', ' ALTER*          DISTINCT*       LEVEL*          PARTITION       SUCCESSFUL*');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '12', ' AND*            DO              LIKE*           PCTFREE*        SUM');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '13', ' ANY*            DROP*           LIMITED         PLS_INTEGER     SYNONYM*');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '14', ' ARRAY           ELSE*           LOCK*           POSITIVE        SYSDATE*');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '15', ' AS*             ELSIF           LONG*           POSITIVEN       TABLE*');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '16', ' ASC*            END             LOOP            PRAGMA          THEN*');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '17', ' AT              EXCEPTION       MAX             PRIOR*          TIME');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '18', ' AUTHID          EXCLUSIVE*      MIN             PRIVATE         TIMESTAMP');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '19', ' AVG             EXECUTE         MINUS*          PROCEDURE       TIMEZONE_ABBR');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '20', ' BEGIN           EXISTS*         MINUTE          PUBLIC*         TIMEZONE_HOUR');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '21', ' BETWEEN*        EXIT            MLSLABEL*       RAISE           TIMEZONE_MINUTE');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '22', ' BINARY_INTEGER  EXTENDS         MOD             RANGE           TIMEZONE_REGION');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '23', ' BODY            EXTRACT         MODE*           RAW*            TO*');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '24', ' BOOLEAN         FALSE           MONTH           REAL            TRIGGER*');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '25', ' BULK            FETCH           NATURAL         RECORD          TRUE');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '26', ' BY*             FLOAT*          NATURALN        REF             TYPE');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '27', ' CHAR*           FOR*            NEW             RELEASE         UI');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '28', ' CHAR_BASE       FORALL          NEXTVAL         RETURN          UNION*');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '29', ' CHECK*          FROM*           NOCOPY          REVERSE         UNIQUE*');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '30', ' CLOSE           FUNCTION        NOT*            ROLLBACK        UPDATE*');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '31', ' CLUSTER*        GOTO            NOWAIT*         ROW*            USE');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '32', ' COALESCE        GROUP*          NULL*           ROWID*          USER*');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '33', ' COLLECT         HAVING*         NULLIF          ROWNUM*         VALIDATE*');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '34', ' COMMENT*        HEAP            NUMBER*         ROWTYPE         VALUES*');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '35', ' COMMIT          HOUR            NUMBER_BASE     SAVEPOINT       VARCHAR*');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '36', ' COMPRESS*       IF              OCIROWID        SECOND          VARCHAR2*');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '37', ' CONNECT*        IMMEDIATE*      OF*             SELECT*         VARIANCE');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '38', ' CONSTANT        IN*             ON*             SEPERATE        VIEW*');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '39', ' CREATE*         INDEX*          OPAQUE          SET*            WHEN');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '40', ' CURRENT*        INDICATOR       OPEN            SHARE*          WHENEVER*');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '41', ' CURRVAL         INSERT*         OPERATOR        SMALLINT*       WHERE*');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '42', ' CURSOR          INTEGER*        OPTION*         SPACE           WHILE');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '43', ' DATE*           INTERFACE       OR*             SQL             WITH*');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '44', ' DAY             INTERSECT*      ORDER*          SQLCODE         WORK');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '45', ' DECIMAL*        INTERVAL        ORGANIZATION    SQLERRM         WRITE');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '46', ' DECLARE         INTO*           OTHERS          START*          YEAR');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '47', ' DEFAULT*        IS*             OUT             STDDEV          ZONE');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '48', ' DELETE*         ISOLATION');
INSERT INTO "SYSTEM"."HELP" VALUES ('RESERVED WORDS (PL/SQL)', '49', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('RUN', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('RUN', '2', ' RUN');
INSERT INTO "SYSTEM"."HELP" VALUES ('RUN', '3', ' ---');
INSERT INTO "SYSTEM"."HELP" VALUES ('RUN', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('RUN', '5', ' Lists and executes the most recently executed SQL command or');
INSERT INTO "SYSTEM"."HELP" VALUES ('RUN', '6', ' PL/SQL block which is stored in the SQL buffer. The buffer has');
INSERT INTO "SYSTEM"."HELP" VALUES ('RUN', '7', ' no command history list and does not record SQL*Plus commands.');
INSERT INTO "SYSTEM"."HELP" VALUES ('RUN', '8', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('RUN', '9', ' R[UN]');
INSERT INTO "SYSTEM"."HELP" VALUES ('RUN', '10', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('SAVE', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('SAVE', '2', ' SAVE');
INSERT INTO "SYSTEM"."HELP" VALUES ('SAVE', '3', ' ----');
INSERT INTO "SYSTEM"."HELP" VALUES ('SAVE', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('SAVE', '5', ' Saves the contents of the SQL buffer in a script. The');
INSERT INTO "SYSTEM"."HELP" VALUES ('SAVE', '6', ' buffer has no command history list and does not record SQL*Plus commands.');
INSERT INTO "SYSTEM"."HELP" VALUES ('SAVE', '7', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('SAVE', '8', ' SAV[E] [FILE] file_name[.ext] [CRE[ATE] | REP[LACE] | APP[END]]');
INSERT INTO "SYSTEM"."HELP" VALUES ('SAVE', '9', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '2', ' SET');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '3', ' ---');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '5', ' Sets a system variable to alter the SQL*Plus environment settings');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '6', ' for your current session. For example, to:');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '7', '     -   set the display width for data');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '8', '     -   customize HTML formatting');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '9', '     -   enable or disable printing of column headings');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '10', '     -   set the number of lines per page');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '11', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '12', ' SET system_variable value');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '13', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '14', ' where system_variable and value represent one of the following clauses:');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '15', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '16', '   APPI[NFO]{OFF|ON|text}                   NEWP[AGE] {1|n|NONE}');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '17', '   ARRAY[SIZE] {15|n}                       NULL text');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '18', '   AUTO[COMMIT] {OFF|ON|IMM[EDIATE]|n}      NUMF[ORMAT] format');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '19', '   AUTOP[RINT] {OFF|ON}                     NUM[WIDTH] {10|n}');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '20', '   AUTORECOVERY {OFF|ON}                    PAGES[IZE] {14|n}');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '21', '   AUTOT[RACE] {OFF|ON|TRACE[ONLY]}         PAU[SE] {OFF|ON|text}');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '22', '     [EXP[LAIN]] [STAT[ISTICS]]             RECSEP {WR[APPED]|EA[CH]|OFF}');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '23', '   BLO[CKTERMINATOR] {.|c|ON|OFF}           RECSEPCHAR {_|c}');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '24', '   CMDS[EP] {;|c|OFF|ON}                    SERVEROUT[PUT] {ON|OFF}');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '25', '   COLSEP {_|text}                            [SIZE {n | UNLIMITED}]');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '26', '   CON[CAT] {.|c|ON|OFF}                      [FOR[MAT]  {WRA[PPED] |');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '27', '   COPYC[OMMIT] {0|n}                          WOR[D_WRAPPED] |');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '28', '   COPYTYPECHECK {ON|OFF}                      TRU[NCATED]}]');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '29', '   DEF[INE] {&|c|ON|OFF}                    SHIFT[INOUT] {VIS[IBLE] |');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '30', '   DESCRIBE [DEPTH {1|n|ALL}]                 INV[ISIBLE]}');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '31', '     [LINENUM {OFF|ON}] [INDENT {OFF|ON}]   SHOW[MODE] {OFF|ON}');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '32', '   ECHO {OFF|ON}                            SQLBL[ANKLINES] {OFF|ON}');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '33', '   EDITF[ILE] file_name[.ext]               SQLC[ASE] {MIX[ED] |');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '34', '   EMB[EDDED] {OFF|ON}                        LO[WER] | UP[PER]}');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '35', '   ERRORL[OGGING] {ON|OFF}                  SQLCO[NTINUE] {> | text}');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '36', '     [TABLE [schema.]tablename]             SQLN[UMBER] {ON|OFF}');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '37', '     [TRUNCATE] [IDENTIFIER identifier]     SQLPLUSCOMPAT[IBILITY] {x.y[.z]}');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '38', '   ESC[APE] {\|c|OFF|ON}                    SQLPRE[FIX] {#|c}');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '39', '   ESCCHAR {@|?|%|$|OFF}                    SQLP[ROMPT] {SQL>|text}');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '40', '   EXITC[OMMIT] {ON|OFF}                    SQLT[ERMINATOR] {;|c|ON|OFF}');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '41', '   FEED[BACK] {6|n|ON|OFF}                  SUF[FIX] {SQL|text}');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '42', '   FLAGGER {OFF|ENTRY|INTERMED[IATE]|FULL}  TAB {ON|OFF}');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '43', '   FLU[SH] {ON|OFF}                         TERM[OUT] {ON|OFF}');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '44', '   HEA[DING] {ON|OFF}                       TI[ME] {OFF|ON}');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '45', '   HEADS[EP] {||c|ON|OFF}                   TIMI[NG] {OFF|ON}');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '46', '   INSTANCE [instance_path|LOCAL]           TRIM[OUT] {ON|OFF}');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '47', '   LIN[ESIZE] {80|n}                        TRIMS[POOL] {OFF|ON}');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '48', '   LOBOF[FSET] {1|n}                        UND[ERLINE] {-|c|ON|OFF}');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '49', '   LOGSOURCE [pathname]                     VER[IFY] {ON|OFF}');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '50', '   LONG {80|n}                              WRA[P] {ON|OFF}');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '51', '   LONGC[HUNKSIZE] {80|n}                   XQUERY {BASEURI text|');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '52', '   MARK[UP] HTML [OFF|ON]                     ORDERING{UNORDERED|');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '53', '     [HEAD text] [BODY text] [TABLE text]              ORDERED|DEFAULT}|');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '54', '     [ENTMAP {ON|OFF}]                        NODE{BYVALUE|BYREFERENCE|');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '55', '     [SPOOL {OFF|ON}]                              DEFAULT}|');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '56', '     [PRE[FORMAT] {OFF|ON}]                   CONTEXT text}');
INSERT INTO "SYSTEM"."HELP" VALUES ('SET', '57', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('SHOW', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('SHOW', '2', ' SHOW');
INSERT INTO "SYSTEM"."HELP" VALUES ('SHOW', '3', ' ----');
INSERT INTO "SYSTEM"."HELP" VALUES ('SHOW', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('SHOW', '5', ' Shows the value of a SQL*Plus system variable, or the current');
INSERT INTO "SYSTEM"."HELP" VALUES ('SHOW', '6', ' SQL*Plus environment. SHOW SGA requires a DBA privileged login.');
INSERT INTO "SYSTEM"."HELP" VALUES ('SHOW', '7', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('SHOW', '8', ' SHO[W] option');
INSERT INTO "SYSTEM"."HELP" VALUES ('SHOW', '9', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('SHOW', '10', ' where option represents one of the following terms or clauses:');
INSERT INTO "SYSTEM"."HELP" VALUES ('SHOW', '11', '     system_variable');
INSERT INTO "SYSTEM"."HELP" VALUES ('SHOW', '12', '     ALL');
INSERT INTO "SYSTEM"."HELP" VALUES ('SHOW', '13', '     BTI[TLE]');
INSERT INTO "SYSTEM"."HELP" VALUES ('SHOW', '14', '     ERR[ORS] [{FUNCTION | PROCEDURE | PACKAGE | PACKAGE BODY | TRIGGER');
INSERT INTO "SYSTEM"."HELP" VALUES ('SHOW', '15', '        | VIEW | TYPE | TYPE BODY | DIMENSION | JAVA CLASS} [schema.]name]');
INSERT INTO "SYSTEM"."HELP" VALUES ('SHOW', '16', '     LNO');
INSERT INTO "SYSTEM"."HELP" VALUES ('SHOW', '17', '     PARAMETERS [parameter_name]');
INSERT INTO "SYSTEM"."HELP" VALUES ('SHOW', '18', '     PNO');
INSERT INTO "SYSTEM"."HELP" VALUES ('SHOW', '19', '     RECYC[LEBIN] [original_name]');
INSERT INTO "SYSTEM"."HELP" VALUES ('SHOW', '20', '     REL[EASE]');
INSERT INTO "SYSTEM"."HELP" VALUES ('SHOW', '21', '     REPF[OOTER]');
INSERT INTO "SYSTEM"."HELP" VALUES ('SHOW', '22', '     REPH[EADER]');
INSERT INTO "SYSTEM"."HELP" VALUES ('SHOW', '23', '     SGA');
INSERT INTO "SYSTEM"."HELP" VALUES ('SHOW', '24', '     SPOO[L]');
INSERT INTO "SYSTEM"."HELP" VALUES ('SHOW', '25', '     SPPARAMETERS [parameter_name]');
INSERT INTO "SYSTEM"."HELP" VALUES ('SHOW', '26', '     SQLCODE');
INSERT INTO "SYSTEM"."HELP" VALUES ('SHOW', '27', '     TT[ITLE]');
INSERT INTO "SYSTEM"."HELP" VALUES ('SHOW', '28', '     USER');
INSERT INTO "SYSTEM"."HELP" VALUES ('SHOW', '29', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('SHUTDOWN', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('SHUTDOWN', '2', ' SHUTDOWN');
INSERT INTO "SYSTEM"."HELP" VALUES ('SHUTDOWN', '3', ' --------');
INSERT INTO "SYSTEM"."HELP" VALUES ('SHUTDOWN', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('SHUTDOWN', '5', ' Shuts down a currently running Oracle Database instance, optionally');
INSERT INTO "SYSTEM"."HELP" VALUES ('SHUTDOWN', '6', ' closing and dismounting a database.');
INSERT INTO "SYSTEM"."HELP" VALUES ('SHUTDOWN', '7', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('SHUTDOWN', '8', ' SHUTDOWN [ABORT|IMMEDIATE|NORMAL|TRANSACTIONAL [LOCAL]]');
INSERT INTO "SYSTEM"."HELP" VALUES ('SHUTDOWN', '9', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('SPOOL', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('SPOOL', '2', ' SPOOL');
INSERT INTO "SYSTEM"."HELP" VALUES ('SPOOL', '3', ' -----');
INSERT INTO "SYSTEM"."HELP" VALUES ('SPOOL', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('SPOOL', '5', ' Stores query results in a file, or optionally sends the file to a printer.');
INSERT INTO "SYSTEM"."HELP" VALUES ('SPOOL', '6', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('SPOOL', '7', ' SPO[OL] [file_name[.ext] [CRE[ATE] | REP[LACE] | APP[END]] | OFF | OUT]');
INSERT INTO "SYSTEM"."HELP" VALUES ('SPOOL', '8', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('SQLPLUS', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('SQLPLUS', '2', ' SQLPLUS');
INSERT INTO "SYSTEM"."HELP" VALUES ('SQLPLUS', '3', ' -------');
INSERT INTO "SYSTEM"."HELP" VALUES ('SQLPLUS', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('SQLPLUS', '5', ' Starts SQL*Plus from the operating system prompt.');
INSERT INTO "SYSTEM"."HELP" VALUES ('SQLPLUS', '6', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('SQLPLUS', '7', ' SQLPLUS [ [option] [logon|/NOLOG] [start] ]');
INSERT INTO "SYSTEM"."HELP" VALUES ('SQLPLUS', '8', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('SQLPLUS', '9', ' where option has the following syntax:');
INSERT INTO "SYSTEM"."HELP" VALUES ('SQLPLUS', '10', '     -H[ELP]');
INSERT INTO "SYSTEM"."HELP" VALUES ('SQLPLUS', '11', '     | -V[ERSION]');
INSERT INTO "SYSTEM"."HELP" VALUES ('SQLPLUS', '12', '     | [[-C[OMPATIBILITY] x.y[.z]] [-L[OGON]]');
INSERT INTO "SYSTEM"."HELP" VALUES ('SQLPLUS', '13', '        [-M[ARKUP] markup_option] [-R[ESTRICT] {1|2|3}] [-S[ILENT]]]');
INSERT INTO "SYSTEM"."HELP" VALUES ('SQLPLUS', '14', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('SQLPLUS', '15', ' and where markup_option has the following syntax:');
INSERT INTO "SYSTEM"."HELP" VALUES ('SQLPLUS', '16', '     HTML [ON|OFF] [HEAD text] [BODY text] [TABLE text]');
INSERT INTO "SYSTEM"."HELP" VALUES ('SQLPLUS', '17', '          [ENTMAP {ON|OFF}] [SPOOL {ON|OFF}] [PRE[FORMAT] {ON|OFF}]');
INSERT INTO "SYSTEM"."HELP" VALUES ('SQLPLUS', '18', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('SQLPLUS', '19', ' and where logon has the following syntax:');
INSERT INTO "SYSTEM"."HELP" VALUES ('SQLPLUS', '20', '     {username[/password][@connect_identifier] | /}');
INSERT INTO "SYSTEM"."HELP" VALUES ('SQLPLUS', '21', '     [AS {SYSOPER|SYSDBA|SYSASM}] [edition=value]');
INSERT INTO "SYSTEM"."HELP" VALUES ('SQLPLUS', '22', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('SQLPLUS', '23', ' and where start has the following syntax:');
INSERT INTO "SYSTEM"."HELP" VALUES ('SQLPLUS', '24', '     @{url|filename[.ext]} [arg ...]');
INSERT INTO "SYSTEM"."HELP" VALUES ('SQLPLUS', '25', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('START', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('START', '2', ' START');
INSERT INTO "SYSTEM"."HELP" VALUES ('START', '3', ' -----');
INSERT INTO "SYSTEM"."HELP" VALUES ('START', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('START', '5', ' Runs the SQL*Plus statements in the specified script. The script can be');
INSERT INTO "SYSTEM"."HELP" VALUES ('START', '6', ' called from the local file system or a web server.');
INSERT INTO "SYSTEM"."HELP" VALUES ('START', '7', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('START', '8', ' STA[RT] {url|file_name[.ext]} [arg ...]');
INSERT INTO "SYSTEM"."HELP" VALUES ('START', '9', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('START', '10', ' where url supports HTTP and FTP protocols in the form:');
INSERT INTO "SYSTEM"."HELP" VALUES ('START', '11', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('START', '12', '    http://host.domain/script.sql');
INSERT INTO "SYSTEM"."HELP" VALUES ('START', '13', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('STARTUP', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('STARTUP', '2', ' STARTUP');
INSERT INTO "SYSTEM"."HELP" VALUES ('STARTUP', '3', ' -------');
INSERT INTO "SYSTEM"."HELP" VALUES ('STARTUP', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('STARTUP', '5', ' Starts an Oracle instance with several options, including mounting,');
INSERT INTO "SYSTEM"."HELP" VALUES ('STARTUP', '6', ' and opening a database.');
INSERT INTO "SYSTEM"."HELP" VALUES ('STARTUP', '7', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('STARTUP', '8', ' STARTUP options | upgrade_options');
INSERT INTO "SYSTEM"."HELP" VALUES ('STARTUP', '9', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('STARTUP', '10', ' where options has the following syntax:');
INSERT INTO "SYSTEM"."HELP" VALUES ('STARTUP', '11', '    [FORCE] [RESTRICT] [PFILE=filename] [QUIET] [ MOUNT [dbname] |');
INSERT INTO "SYSTEM"."HELP" VALUES ('STARTUP', '12', '    [ OPEN [open_options] [dbname] ] |');
INSERT INTO "SYSTEM"."HELP" VALUES ('STARTUP', '13', '    NOMOUNT ]');
INSERT INTO "SYSTEM"."HELP" VALUES ('STARTUP', '14', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('STARTUP', '15', ' where open_options has the following syntax:');
INSERT INTO "SYSTEM"."HELP" VALUES ('STARTUP', '16', '    READ {ONLY | WRITE [RECOVER]} | RECOVER');
INSERT INTO "SYSTEM"."HELP" VALUES ('STARTUP', '17', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('STARTUP', '18', ' and where upgrade_options has the following syntax:');
INSERT INTO "SYSTEM"."HELP" VALUES ('STARTUP', '19', '    [PFILE=filename] {UPGRADE | DOWNGRADE} [QUIET]');
INSERT INTO "SYSTEM"."HELP" VALUES ('STARTUP', '20', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('STORE', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('STORE', '2', ' STORE');
INSERT INTO "SYSTEM"."HELP" VALUES ('STORE', '3', ' -----');
INSERT INTO "SYSTEM"."HELP" VALUES ('STORE', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('STORE', '5', ' Saves attributes of the current SQL*Plus environment in a script.');
INSERT INTO "SYSTEM"."HELP" VALUES ('STORE', '6', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('STORE', '7', ' STORE {SET} file_name[.ext] [CRE[ATE] | REP[LACE] | APP[END]]');
INSERT INTO "SYSTEM"."HELP" VALUES ('STORE', '8', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('TIMING', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('TIMING', '2', ' TIMING');
INSERT INTO "SYSTEM"."HELP" VALUES ('TIMING', '3', ' ------');
INSERT INTO "SYSTEM"."HELP" VALUES ('TIMING', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('TIMING', '5', ' Records timing data for an elapsed time period, lists the current');
INSERT INTO "SYSTEM"."HELP" VALUES ('TIMING', '6', ' timer''s name and timing data, or lists the number of active timers.');
INSERT INTO "SYSTEM"."HELP" VALUES ('TIMING', '7', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('TIMING', '8', ' TIMI[NG] [START text|SHOW|STOP]');
INSERT INTO "SYSTEM"."HELP" VALUES ('TIMING', '9', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('TTITLE', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('TTITLE', '2', ' TTITLE');
INSERT INTO "SYSTEM"."HELP" VALUES ('TTITLE', '3', ' ------');
INSERT INTO "SYSTEM"."HELP" VALUES ('TTITLE', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('TTITLE', '5', ' Places and formats a title at the top of each report page.');
INSERT INTO "SYSTEM"."HELP" VALUES ('TTITLE', '6', ' Enter TTITLE with no clause to list its current definition.');
INSERT INTO "SYSTEM"."HELP" VALUES ('TTITLE', '7', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('TTITLE', '8', ' The old form of TTITLE is used if only a single word or');
INSERT INTO "SYSTEM"."HELP" VALUES ('TTITLE', '9', ' a string in quotes follows the TTITLE command.');
INSERT INTO "SYSTEM"."HELP" VALUES ('TTITLE', '10', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('TTITLE', '11', ' TTI[TLE] [printspec [text|variable] ...] | [OFF|ON]');
INSERT INTO "SYSTEM"."HELP" VALUES ('TTITLE', '12', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('TTITLE', '13', ' where printspec represents one or more of the following clauses:');
INSERT INTO "SYSTEM"."HELP" VALUES ('TTITLE', '14', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('TTITLE', '15', '     COL n          LE[FT]        BOLD');
INSERT INTO "SYSTEM"."HELP" VALUES ('TTITLE', '16', '     S[KIP] [n]     CE[NTER]      FORMAT text');
INSERT INTO "SYSTEM"."HELP" VALUES ('TTITLE', '17', '     TAB n          R[IGHT]');
INSERT INTO "SYSTEM"."HELP" VALUES ('TTITLE', '18', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('UNDEFINE', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('UNDEFINE', '2', ' UNDEFINE');
INSERT INTO "SYSTEM"."HELP" VALUES ('UNDEFINE', '3', ' --------');
INSERT INTO "SYSTEM"."HELP" VALUES ('UNDEFINE', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('UNDEFINE', '5', ' Deletes one or more substitution variables that you defined either');
INSERT INTO "SYSTEM"."HELP" VALUES ('UNDEFINE', '6', ' explicitly (with the DEFINE command), or implicitly (with a START');
INSERT INTO "SYSTEM"."HELP" VALUES ('UNDEFINE', '7', ' command argument).');
INSERT INTO "SYSTEM"."HELP" VALUES ('UNDEFINE', '8', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('UNDEFINE', '9', ' UNDEF[INE] variable ...');
INSERT INTO "SYSTEM"."HELP" VALUES ('UNDEFINE', '10', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('VARIABLE', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('VARIABLE', '2', ' VARIABLE');
INSERT INTO "SYSTEM"."HELP" VALUES ('VARIABLE', '3', ' --------');
INSERT INTO "SYSTEM"."HELP" VALUES ('VARIABLE', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('VARIABLE', '5', ' Declares a bind variable that can be referenced in PL/SQL, or');
INSERT INTO "SYSTEM"."HELP" VALUES ('VARIABLE', '6', ' lists the current display characteristics for a single variable');
INSERT INTO "SYSTEM"."HELP" VALUES ('VARIABLE', '7', ' or all variables.');
INSERT INTO "SYSTEM"."HELP" VALUES ('VARIABLE', '8', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('VARIABLE', '9', 'VAR[IABLE] [variable [type]]');
INSERT INTO "SYSTEM"."HELP" VALUES ('VARIABLE', '10', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('VARIABLE', '11', ' where type represents one of the following:');
INSERT INTO "SYSTEM"."HELP" VALUES ('VARIABLE', '12', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('VARIABLE', '13', '     NUMBER         CHAR          CHAR (n [CHAR|BYTE])');
INSERT INTO "SYSTEM"."HELP" VALUES ('VARIABLE', '14', '     NCHAR          NCHAR (n)     VARCHAR2 (n [CHAR|BYTE])');
INSERT INTO "SYSTEM"."HELP" VALUES ('VARIABLE', '15', '     NVARCHAR2 (n)  CLOB          NCLOB');
INSERT INTO "SYSTEM"."HELP" VALUES ('VARIABLE', '16', '     REFCURSOR      BINARY_FLOAT  BINARY_DOUBLE');
INSERT INTO "SYSTEM"."HELP" VALUES ('VARIABLE', '17', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('WHENEVER OSERROR', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('WHENEVER OSERROR', '2', ' WHENEVER OSERROR');
INSERT INTO "SYSTEM"."HELP" VALUES ('WHENEVER OSERROR', '3', ' ----------------');
INSERT INTO "SYSTEM"."HELP" VALUES ('WHENEVER OSERROR', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('WHENEVER OSERROR', '5', ' Performs the specified action (exits SQL*Plus by default) if an');
INSERT INTO "SYSTEM"."HELP" VALUES ('WHENEVER OSERROR', '6', ' operating system error occurs (such as a file writing error).');
INSERT INTO "SYSTEM"."HELP" VALUES ('WHENEVER OSERROR', '7', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('WHENEVER OSERROR', '8', ' WHENEVER OSERROR {EXIT [SUCCESS|FAILURE|n|variable|:BindVariable]');
INSERT INTO "SYSTEM"."HELP" VALUES ('WHENEVER OSERROR', '9', '                   [COMMIT|ROLLBACK] | CONTINUE [COMMIT|ROLLBACK|NONE]}');
INSERT INTO "SYSTEM"."HELP" VALUES ('WHENEVER OSERROR', '10', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('WHENEVER SQLERROR', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('WHENEVER SQLERROR', '2', ' WHENEVER SQLERROR');
INSERT INTO "SYSTEM"."HELP" VALUES ('WHENEVER SQLERROR', '3', ' -----------------');
INSERT INTO "SYSTEM"."HELP" VALUES ('WHENEVER SQLERROR', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('WHENEVER SQLERROR', '5', ' Performs the specified action (exits SQL*Plus by default) if a');
INSERT INTO "SYSTEM"."HELP" VALUES ('WHENEVER SQLERROR', '6', ' SQL command or PL/SQL block generates an error.');
INSERT INTO "SYSTEM"."HELP" VALUES ('WHENEVER SQLERROR', '7', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('WHENEVER SQLERROR', '8', ' WHENEVER SQLERROR {EXIT [SUCCESS|FAILURE|WARNING|n|variable|:BindVariable]');
INSERT INTO "SYSTEM"."HELP" VALUES ('WHENEVER SQLERROR', '9', '                    [COMMIT|ROLLBACK] | CONTINUE [COMMIT|ROLLBACK|NONE]}');
INSERT INTO "SYSTEM"."HELP" VALUES ('WHENEVER SQLERROR', '10', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('XQUERY', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('XQUERY', '2', ' XQUERY');
INSERT INTO "SYSTEM"."HELP" VALUES ('XQUERY', '3', ' ------');
INSERT INTO "SYSTEM"."HELP" VALUES ('XQUERY', '4', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('XQUERY', '5', ' Performs an XQuery 1.0 query on a specified database. Attempting to use');
INSERT INTO "SYSTEM"."HELP" VALUES ('XQUERY', '6', ' XQUERY on a database earlier than Oracle Database 10g (Release 2) generates');
INSERT INTO "SYSTEM"."HELP" VALUES ('XQUERY', '7', ' an error.');
INSERT INTO "SYSTEM"."HELP" VALUES ('XQUERY', '8', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('XQUERY', '9', ' XQUERY xquery_statement');
INSERT INTO "SYSTEM"."HELP" VALUES ('XQUERY', '10', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '1', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '2', ' Help is available on the following topics:');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '3', null);
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '11', '/');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '12', '@');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '13', '@@');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '14', 'ACCEPT');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '15', 'APPEND');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '16', 'ARCHIVE LOG');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '17', 'ATTRIBUTE');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '18', 'BREAK');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '19', 'BTITLE');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '20', 'CHANGE');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '21', 'CLEAR');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '22', 'COLUMN');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '23', 'COMPUTE');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '24', 'CONNECT');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '25', 'COPY');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '26', 'DEFINE');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '27', 'DEL');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '28', 'DESCRIBE');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '29', 'DISCONNECT');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '30', 'EDIT');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '31', 'EXECUTE');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '32', 'EXIT');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '33', 'GET');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '34', 'HELP');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '35', 'HOST');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '36', 'INDEX');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '37', 'INPUT');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '38', 'LIST');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '39', 'MENU');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '40', 'PASSWORD');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '41', 'PAUSE');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '42', 'PRINT');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '43', 'PROMPT');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '44', 'QUIT');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '45', 'RECOVER');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '46', 'REMARK');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '47', 'REPFOOTER');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '48', 'REPHEADER');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '49', 'RESERVED WORDS (PL/SQL)');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '50', 'RESERVED WORDS (SQL)');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '51', 'RUN');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '52', 'SAVE');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '53', 'SET');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '54', 'SHOW');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '55', 'SHUTDOWN');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '56', 'SPOOL');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '57', 'SQLPLUS');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '58', 'START');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '59', 'STARTUP');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '60', 'STORE');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '61', 'TIMING');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '62', 'TOPICS');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '63', 'TTITLE');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '64', 'UNDEFINE');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '65', 'VARIABLE');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '66', 'WHENEVER OSERROR');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '67', 'WHENEVER SQLERROR');
INSERT INTO "SYSTEM"."HELP" VALUES ('TOPICS', '68', 'XQUERY');

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_AGE_SPILL$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_AGE_SPILL$";
CREATE TABLE "SYSTEM"."LOGMNR_AGE_SPILL$" (
"SESSION#" NUMBER NOT NULL ,
"XIDUSN" NUMBER NOT NULL ,
"XIDSLT" NUMBER NOT NULL ,
"XIDSQN" NUMBER NOT NULL ,
"CHUNK" NUMBER NOT NULL ,
"SEQUENCE#" NUMBER NOT NULL ,
"OFFSET" NUMBER NULL ,
"SPILL_DATA" BLOB NULL ,
"SPARE1" NUMBER NULL ,
"SPARE2" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_AGE_SPILL$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_ATTRCOL$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_ATTRCOL$";
CREATE TABLE "SYSTEM"."LOGMNR_ATTRCOL$" (
"INTCOL#" NUMBER NULL ,
"NAME" VARCHAR2(4000 BYTE) NULL ,
"OBJ#" NUMBER NOT NULL ,
"LOGMNR_UID" NUMBER(22) NULL ,
"LOGMNR_FLAGS" NUMBER(22) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_ATTRCOL$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_ATTRIBUTE$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_ATTRIBUTE$";
CREATE TABLE "SYSTEM"."LOGMNR_ATTRIBUTE$" (
"VERSION#" NUMBER NULL ,
"NAME" VARCHAR2(30 BYTE) NULL ,
"ATTRIBUTE#" NUMBER NULL ,
"ATTR_TOID" RAW(16) NULL ,
"ATTR_VERSION#" NUMBER NULL ,
"SYNOBJ#" NUMBER NULL ,
"PROPERTIES" NUMBER NULL ,
"CHARSETID" NUMBER NULL ,
"CHARSETFORM" NUMBER NULL ,
"LENGTH" NUMBER NULL ,
"PRECISION#" NUMBER NULL ,
"SCALE" NUMBER NULL ,
"EXTERNNAME" VARCHAR2(4000 BYTE) NULL ,
"XFLAGS" NUMBER NULL ,
"SPARE1" NUMBER NULL ,
"SPARE2" NUMBER NULL ,
"SPARE3" NUMBER NULL ,
"SPARE4" NUMBER NULL ,
"SPARE5" NUMBER NULL ,
"SETTER" NUMBER NULL ,
"GETTER" NUMBER NULL ,
"TOID" RAW(16) NOT NULL ,
"LOGMNR_UID" NUMBER(22) NULL ,
"LOGMNR_FLAGS" NUMBER(22) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_ATTRIBUTE$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_CCOL$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_CCOL$";
CREATE TABLE "SYSTEM"."LOGMNR_CCOL$" (
"CON#" NUMBER NULL ,
"OBJ#" NUMBER NULL ,
"COL#" NUMBER NULL ,
"POS#" NUMBER NULL ,
"INTCOL#" NUMBER NOT NULL ,
"LOGMNR_UID" NUMBER(22) NULL ,
"LOGMNR_FLAGS" NUMBER(22) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_CCOL$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_CDEF$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_CDEF$";
CREATE TABLE "SYSTEM"."LOGMNR_CDEF$" (
"CON#" NUMBER NULL ,
"COLS" NUMBER NULL ,
"TYPE#" NUMBER NULL ,
"ROBJ#" NUMBER NULL ,
"RCON#" NUMBER NULL ,
"ENABLED" NUMBER NULL ,
"DEFER" NUMBER NULL ,
"OBJ#" NUMBER NOT NULL ,
"LOGMNR_UID" NUMBER(22) NULL ,
"LOGMNR_FLAGS" NUMBER(22) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_CDEF$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_COL$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_COL$";
CREATE TABLE "SYSTEM"."LOGMNR_COL$" (
"COL#" NUMBER(22) NULL ,
"SEGCOL#" NUMBER(22) NULL ,
"NAME" VARCHAR2(30 BYTE) NULL ,
"TYPE#" NUMBER(22) NULL ,
"LENGTH" NUMBER(22) NULL ,
"PRECISION#" NUMBER(22) NULL ,
"SCALE" NUMBER(22) NULL ,
"NULL$" NUMBER(22) NULL ,
"INTCOL#" NUMBER(22) NULL ,
"PROPERTY" NUMBER(22) NULL ,
"CHARSETID" NUMBER(22) NULL ,
"CHARSETFORM" NUMBER(22) NULL ,
"SPARE1" NUMBER(22) NULL ,
"SPARE2" NUMBER(22) NULL ,
"OBJ#" NUMBER(22) NOT NULL ,
"LOGMNR_UID" NUMBER(22) NULL ,
"LOGMNR_FLAGS" NUMBER(22) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_COL$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_COLTYPE$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_COLTYPE$";
CREATE TABLE "SYSTEM"."LOGMNR_COLTYPE$" (
"COL#" NUMBER NULL ,
"INTCOL#" NUMBER NULL ,
"TOID" RAW(16) NULL ,
"VERSION#" NUMBER NULL ,
"PACKED" NUMBER NULL ,
"INTCOLS" NUMBER NULL ,
"INTCOL#S" RAW(2000) NULL ,
"FLAGS" NUMBER NULL ,
"TYPIDCOL#" NUMBER NULL ,
"SYNOBJ#" NUMBER NULL ,
"OBJ#" NUMBER NOT NULL ,
"LOGMNR_UID" NUMBER(22) NULL ,
"LOGMNR_FLAGS" NUMBER(22) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_COLTYPE$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_DICTIONARY$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_DICTIONARY$";
CREATE TABLE "SYSTEM"."LOGMNR_DICTIONARY$" (
"DB_NAME" VARCHAR2(9 BYTE) NULL ,
"DB_ID" NUMBER(20) NULL ,
"DB_CREATED" VARCHAR2(20 BYTE) NULL ,
"DB_DICT_CREATED" VARCHAR2(20 BYTE) NULL ,
"DB_DICT_SCN" NUMBER(22) NULL ,
"DB_THREAD_MAP" RAW(8) NULL ,
"DB_TXN_SCNBAS" NUMBER(22) NULL ,
"DB_TXN_SCNWRP" NUMBER(22) NULL ,
"DB_RESETLOGS_CHANGE#" NUMBER(22) NULL ,
"DB_RESETLOGS_TIME" VARCHAR2(20 BYTE) NULL ,
"DB_VERSION_TIME" VARCHAR2(20 BYTE) NULL ,
"DB_REDO_TYPE_ID" VARCHAR2(8 BYTE) NULL ,
"DB_REDO_RELEASE" VARCHAR2(60 BYTE) NULL ,
"DB_CHARACTER_SET" VARCHAR2(30 BYTE) NULL ,
"DB_VERSION" VARCHAR2(64 BYTE) NULL ,
"DB_STATUS" VARCHAR2(64 BYTE) NULL ,
"DB_GLOBAL_NAME" VARCHAR2(128 BYTE) NULL ,
"DB_DICT_MAXOBJECTS" NUMBER(22) NULL ,
"DB_DICT_OBJECTCOUNT" NUMBER(22) NOT NULL ,
"LOGMNR_UID" NUMBER(22) NULL ,
"LOGMNR_FLAGS" NUMBER(22) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_DICTIONARY$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_DICTSTATE$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_DICTSTATE$";
CREATE TABLE "SYSTEM"."LOGMNR_DICTSTATE$" (
"LOGMNR_UID" NUMBER(22) NULL ,
"START_SCNBAS" NUMBER NULL ,
"START_SCNWRP" NUMBER NULL ,
"END_SCNBAS" NUMBER NULL ,
"END_SCNWRP" NUMBER NULL ,
"REDO_THREAD" NUMBER NULL ,
"RBASQN" NUMBER NULL ,
"RBABLK" NUMBER NULL ,
"RBABYTE" NUMBER NULL ,
"LOGMNR_FLAGS" NUMBER(22) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_DICTSTATE$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_ENC$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_ENC$";
CREATE TABLE "SYSTEM"."LOGMNR_ENC$" (
"OBJ#" NUMBER NULL ,
"OWNER#" NUMBER NULL ,
"ENCALG" NUMBER NULL ,
"INTALG" NUMBER NULL ,
"COLKLC" RAW(2000) NULL ,
"KLCLEN" NUMBER NULL ,
"FLAG" NUMBER NULL ,
"MKEYID" VARCHAR2(64 BYTE) NOT NULL ,
"LOGMNR_UID" NUMBER(22) NULL ,
"LOGMNR_FLAGS" NUMBER(22) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_ENC$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_ERROR$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_ERROR$";
CREATE TABLE "SYSTEM"."LOGMNR_ERROR$" (
"SESSION#" NUMBER NULL ,
"TIME_OF_ERROR" DATE NULL ,
"CODE" NUMBER NULL ,
"MESSAGE" VARCHAR2(4000 BYTE) NULL ,
"SPARE1" NUMBER NULL ,
"SPARE2" NUMBER NULL ,
"SPARE3" NUMBER NULL ,
"SPARE4" VARCHAR2(4000 BYTE) NULL ,
"SPARE5" VARCHAR2(4000 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_ERROR$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_FILTER$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_FILTER$";
CREATE TABLE "SYSTEM"."LOGMNR_FILTER$" (
"SESSION#" NUMBER NULL ,
"FILTER_TYPE" VARCHAR2(30 BYTE) NULL ,
"ATTR1" NUMBER NULL ,
"ATTR2" NUMBER NULL ,
"ATTR3" NUMBER NULL ,
"ATTR4" NUMBER NULL ,
"ATTR5" NUMBER NULL ,
"ATTR6" NUMBER NULL ,
"FILTER_SCN" NUMBER NULL ,
"SPARE1" NUMBER NULL ,
"SPARE2" NUMBER NULL ,
"SPARE3" DATE NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_FILTER$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_GLOBAL$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_GLOBAL$";
CREATE TABLE "SYSTEM"."LOGMNR_GLOBAL$" (
"HIGH_RECID_FOREIGN" NUMBER NULL ,
"HIGH_RECID_DELETED" NUMBER NULL ,
"LOCAL_RESET_SCN" NUMBER NULL ,
"LOCAL_RESET_TIMESTAMP" NUMBER NULL ,
"VERSION_TIMESTAMP" NUMBER NULL ,
"SPARE1" NUMBER NULL ,
"SPARE2" NUMBER NULL ,
"SPARE3" NUMBER NULL ,
"SPARE4" VARCHAR2(2000 BYTE) NULL ,
"SPARE5" DATE NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_GLOBAL$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_GT_TAB_INCLUDE$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_GT_TAB_INCLUDE$";
CREATE TABLE "SYSTEM"."LOGMNR_GT_TAB_INCLUDE$" (
"SCHEMA_NAME" VARCHAR2(32 BYTE) NULL ,
"TABLE_NAME" VARCHAR2(32 BYTE) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_GT_TAB_INCLUDE$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_GT_USER_INCLUDE$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_GT_USER_INCLUDE$";
CREATE TABLE "SYSTEM"."LOGMNR_GT_USER_INCLUDE$" (
"USER_NAME" VARCHAR2(32 BYTE) NULL ,
"USER_TYPE" NUMBER NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_GT_USER_INCLUDE$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_GT_XID_INCLUDE$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_GT_XID_INCLUDE$";
CREATE TABLE "SYSTEM"."LOGMNR_GT_XID_INCLUDE$" (
"XIDUSN" NUMBER NULL ,
"XIDSLT" NUMBER NULL ,
"XIDSQN" NUMBER NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_GT_XID_INCLUDE$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_ICOL$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_ICOL$";
CREATE TABLE "SYSTEM"."LOGMNR_ICOL$" (
"OBJ#" NUMBER NULL ,
"BO#" NUMBER NULL ,
"COL#" NUMBER NULL ,
"POS#" NUMBER NULL ,
"SEGCOL#" NUMBER NULL ,
"INTCOL#" NUMBER NOT NULL ,
"LOGMNR_UID" NUMBER(22) NULL ,
"LOGMNR_FLAGS" NUMBER(22) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_ICOL$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_IND$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_IND$";
CREATE TABLE "SYSTEM"."LOGMNR_IND$" (
"BO#" NUMBER(22) NULL ,
"COLS" NUMBER(22) NULL ,
"TYPE#" NUMBER(22) NULL ,
"FLAGS" NUMBER NULL ,
"PROPERTY" NUMBER NULL ,
"OBJ#" NUMBER(22) NOT NULL ,
"LOGMNR_UID" NUMBER(22) NULL ,
"LOGMNR_FLAGS" NUMBER(22) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_IND$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_INDCOMPART$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_INDCOMPART$";
CREATE TABLE "SYSTEM"."LOGMNR_INDCOMPART$" (
"OBJ#" NUMBER NULL ,
"DATAOBJ#" NUMBER NULL ,
"BO#" NUMBER NULL ,
"PART#" NUMBER NOT NULL ,
"LOGMNR_UID" NUMBER(22) NULL ,
"LOGMNR_FLAGS" NUMBER(22) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_INDCOMPART$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_INDPART$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_INDPART$";
CREATE TABLE "SYSTEM"."LOGMNR_INDPART$" (
"OBJ#" NUMBER NULL ,
"BO#" NUMBER NULL ,
"PART#" NUMBER NULL ,
"TS#" NUMBER NOT NULL ,
"LOGMNR_UID" NUMBER(22) NULL ,
"LOGMNR_FLAGS" NUMBER(22) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_INDPART$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_INDSUBPART$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_INDSUBPART$";
CREATE TABLE "SYSTEM"."LOGMNR_INDSUBPART$" (
"OBJ#" NUMBER(22) NULL ,
"DATAOBJ#" NUMBER(22) NULL ,
"POBJ#" NUMBER(22) NULL ,
"SUBPART#" NUMBER(22) NULL ,
"TS#" NUMBER(22) NOT NULL ,
"LOGMNR_UID" NUMBER(22) NULL ,
"LOGMNR_FLAGS" NUMBER(22) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_INDSUBPART$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_INTEGRATED_SPILL$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_INTEGRATED_SPILL$";
CREATE TABLE "SYSTEM"."LOGMNR_INTEGRATED_SPILL$" (
"SESSION#" NUMBER NOT NULL ,
"XIDUSN" NUMBER NOT NULL ,
"XIDSLT" NUMBER NOT NULL ,
"XIDSQN" NUMBER NOT NULL ,
"CHUNK" NUMBER NOT NULL ,
"FLAG" NUMBER NOT NULL ,
"CTIME" DATE NULL ,
"MTIME" DATE NULL ,
"SPILL_DATA" BLOB NULL ,
"SPARE1" NUMBER NULL ,
"SPARE2" NUMBER NULL ,
"SPARE3" NUMBER NULL ,
"SPARE4" DATE NULL ,
"SPARE5" DATE NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_INTEGRATED_SPILL$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_KOPM$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_KOPM$";
CREATE TABLE "SYSTEM"."LOGMNR_KOPM$" (
"LENGTH" NUMBER NULL ,
"METADATA" RAW(255) NULL ,
"NAME" VARCHAR2(30 BYTE) NOT NULL ,
"LOGMNR_UID" NUMBER(22) NULL ,
"LOGMNR_FLAGS" NUMBER(22) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_KOPM$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_LOB$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_LOB$";
CREATE TABLE "SYSTEM"."LOGMNR_LOB$" (
"OBJ#" NUMBER NULL ,
"INTCOL#" NUMBER NULL ,
"COL#" NUMBER NULL ,
"LOBJ#" NUMBER NULL ,
"CHUNK" NUMBER NOT NULL ,
"LOGMNR_UID" NUMBER(22) NULL ,
"LOGMNR_FLAGS" NUMBER(22) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_LOB$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_LOBFRAG$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_LOBFRAG$";
CREATE TABLE "SYSTEM"."LOGMNR_LOBFRAG$" (
"FRAGOBJ#" NUMBER NULL ,
"PARENTOBJ#" NUMBER NULL ,
"TABFRAGOBJ#" NUMBER NULL ,
"INDFRAGOBJ#" NUMBER NULL ,
"FRAG#" NUMBER NOT NULL ,
"LOGMNR_UID" NUMBER(22) NULL ,
"LOGMNR_FLAGS" NUMBER(22) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_LOBFRAG$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_LOG$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_LOG$";
CREATE TABLE "SYSTEM"."LOGMNR_LOG$" (
"SESSION#" NUMBER NOT NULL ,
"THREAD#" NUMBER NOT NULL ,
"SEQUENCE#" NUMBER NOT NULL ,
"FIRST_CHANGE#" NUMBER NOT NULL ,
"NEXT_CHANGE#" NUMBER NULL ,
"FIRST_TIME" DATE NULL ,
"NEXT_TIME" DATE NULL ,
"FILE_NAME" VARCHAR2(513 BYTE) NULL ,
"STATUS" NUMBER NULL ,
"INFO" VARCHAR2(32 BYTE) NULL ,
"TIMESTAMP" DATE NULL ,
"DICT_BEGIN" VARCHAR2(3 BYTE) NULL ,
"DICT_END" VARCHAR2(3 BYTE) NULL ,
"STATUS_INFO" VARCHAR2(32 BYTE) NULL ,
"DB_ID" NUMBER NOT NULL ,
"RESETLOGS_CHANGE#" NUMBER NOT NULL ,
"RESET_TIMESTAMP" NUMBER NOT NULL ,
"PREV_RESETLOGS_CHANGE#" NUMBER NULL ,
"PREV_RESET_TIMESTAMP" NUMBER NULL ,
"BLOCKS" NUMBER NULL ,
"BLOCK_SIZE" NUMBER NULL ,
"FLAGS" NUMBER NULL ,
"CONTENTS" NUMBER NULL ,
"RECID" NUMBER NULL ,
"RECSTAMP" NUMBER NULL ,
"MARK_DELETE_TIMESTAMP" NUMBER NULL ,
"SPARE1" NUMBER NULL ,
"SPARE2" NUMBER NULL ,
"SPARE3" NUMBER NULL ,
"SPARE4" NUMBER NULL ,
"SPARE5" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_LOG$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_LOGMNR_BUILDLOG"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_LOGMNR_BUILDLOG";
CREATE TABLE "SYSTEM"."LOGMNR_LOGMNR_BUILDLOG" (
"BUILD_DATE" VARCHAR2(20 BYTE) NULL ,
"DB_TXN_SCNBAS" NUMBER NULL ,
"DB_TXN_SCNWRP" NUMBER NULL ,
"CURRENT_BUILD_STATE" NUMBER NULL ,
"COMPLETION_STATUS" NUMBER NULL ,
"MARKED_LOG_FILE_LOW_SCN" NUMBER NULL ,
"INITIAL_XID" VARCHAR2(22 BYTE) NOT NULL ,
"LOGMNR_UID" NUMBER(22) NULL ,
"LOGMNR_FLAGS" NUMBER(22) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_LOGMNR_BUILDLOG
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_NTAB$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_NTAB$";
CREATE TABLE "SYSTEM"."LOGMNR_NTAB$" (
"COL#" NUMBER NULL ,
"INTCOL#" NUMBER NULL ,
"NTAB#" NUMBER NULL ,
"NAME" VARCHAR2(4000 BYTE) NULL ,
"OBJ#" NUMBER NOT NULL ,
"LOGMNR_UID" NUMBER(22) NULL ,
"LOGMNR_FLAGS" NUMBER(22) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_NTAB$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_OBJ$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_OBJ$";
CREATE TABLE "SYSTEM"."LOGMNR_OBJ$" (
"OBJV#" NUMBER(22) NULL ,
"OWNER#" NUMBER(22) NULL ,
"NAME" VARCHAR2(30 BYTE) NULL ,
"NAMESPACE" NUMBER(22) NULL ,
"SUBNAME" VARCHAR2(30 BYTE) NULL ,
"TYPE#" NUMBER(22) NULL ,
"OID$" RAW(16) NULL ,
"REMOTEOWNER" VARCHAR2(30 BYTE) NULL ,
"LINKNAME" VARCHAR2(128 BYTE) NULL ,
"FLAGS" NUMBER(22) NULL ,
"SPARE3" NUMBER(22) NULL ,
"STIME" DATE NULL ,
"OBJ#" NUMBER(22) NOT NULL ,
"LOGMNR_UID" NUMBER(22) NULL ,
"LOGMNR_FLAGS" NUMBER(22) NULL ,
"START_SCNBAS" NUMBER NULL ,
"START_SCNWRP" NUMBER NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_OBJ$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_OPQTYPE$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_OPQTYPE$";
CREATE TABLE "SYSTEM"."LOGMNR_OPQTYPE$" (
"INTCOL#" NUMBER NOT NULL ,
"TYPE" NUMBER NULL ,
"FLAGS" NUMBER NULL ,
"LOBCOL" NUMBER NULL ,
"OBJCOL" NUMBER NULL ,
"EXTRACOL" NUMBER NULL ,
"SCHEMAOID" RAW(16) NULL ,
"ELEMNUM" NUMBER NULL ,
"SCHEMAURL" VARCHAR2(4000 BYTE) NULL ,
"OBJ#" NUMBER NOT NULL ,
"LOGMNR_UID" NUMBER(22) NULL ,
"LOGMNR_FLAGS" NUMBER(22) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_OPQTYPE$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_PARAMETER$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_PARAMETER$";
CREATE TABLE "SYSTEM"."LOGMNR_PARAMETER$" (
"SESSION#" NUMBER NOT NULL ,
"NAME" VARCHAR2(30 BYTE) NOT NULL ,
"VALUE" VARCHAR2(2000 BYTE) NULL ,
"TYPE" NUMBER NULL ,
"SCN" NUMBER NULL ,
"SPARE1" NUMBER NULL ,
"SPARE2" NUMBER NULL ,
"SPARE3" VARCHAR2(2000 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_PARAMETER$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_PARTOBJ$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_PARTOBJ$";
CREATE TABLE "SYSTEM"."LOGMNR_PARTOBJ$" (
"PARTTYPE" NUMBER NULL ,
"PARTCNT" NUMBER NULL ,
"PARTKEYCOLS" NUMBER NULL ,
"FLAGS" NUMBER NULL ,
"DEFTS#" NUMBER NULL ,
"DEFPCTFREE" NUMBER NULL ,
"DEFPCTUSED" NUMBER NULL ,
"DEFPCTTHRES" NUMBER NULL ,
"DEFINITRANS" NUMBER NULL ,
"DEFMAXTRANS" NUMBER NULL ,
"DEFTINIEXTS" NUMBER NULL ,
"DEFEXTSIZE" NUMBER NULL ,
"DEFMINEXTS" NUMBER NULL ,
"DEFMAXEXTS" NUMBER NULL ,
"DEFEXTPCT" NUMBER NULL ,
"DEFLISTS" NUMBER NULL ,
"DEFGROUPS" NUMBER NULL ,
"DEFLOGGING" NUMBER NULL ,
"SPARE1" NUMBER NULL ,
"SPARE2" NUMBER NULL ,
"SPARE3" NUMBER NULL ,
"DEFINCLCOL" NUMBER NULL ,
"PARAMETERS" VARCHAR2(1000 BYTE) NULL ,
"OBJ#" NUMBER NOT NULL ,
"LOGMNR_UID" NUMBER(22) NULL ,
"LOGMNR_FLAGS" NUMBER(22) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_PARTOBJ$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_PROCESSED_LOG$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_PROCESSED_LOG$";
CREATE TABLE "SYSTEM"."LOGMNR_PROCESSED_LOG$" (
"SESSION#" NUMBER NOT NULL ,
"THREAD#" NUMBER NOT NULL ,
"SEQUENCE#" NUMBER NULL ,
"FIRST_CHANGE#" NUMBER NULL ,
"NEXT_CHANGE#" NUMBER NULL ,
"FIRST_TIME" DATE NULL ,
"NEXT_TIME" DATE NULL ,
"FILE_NAME" VARCHAR2(513 BYTE) NULL ,
"STATUS" NUMBER NULL ,
"INFO" VARCHAR2(32 BYTE) NULL ,
"TIMESTAMP" DATE NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_PROCESSED_LOG$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_PROPS$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_PROPS$";
CREATE TABLE "SYSTEM"."LOGMNR_PROPS$" (
"VALUE$" VARCHAR2(4000 BYTE) NULL ,
"COMMENT$" VARCHAR2(4000 BYTE) NULL ,
"NAME" VARCHAR2(30 BYTE) NOT NULL ,
"LOGMNR_UID" NUMBER(22) NULL ,
"LOGMNR_FLAGS" NUMBER(22) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_PROPS$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_REFCON$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_REFCON$";
CREATE TABLE "SYSTEM"."LOGMNR_REFCON$" (
"COL#" NUMBER NULL ,
"INTCOL#" NUMBER NULL ,
"REFTYP" NUMBER NULL ,
"STABID" RAW(16) NULL ,
"EXPCTOID" RAW(16) NULL ,
"OBJ#" NUMBER NOT NULL ,
"LOGMNR_UID" NUMBER(22) NULL ,
"LOGMNR_FLAGS" NUMBER(22) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_REFCON$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_RESTART_CKPT$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_RESTART_CKPT$";
CREATE TABLE "SYSTEM"."LOGMNR_RESTART_CKPT$" (
"SESSION#" NUMBER NOT NULL ,
"VALID" NUMBER NULL ,
"CKPT_SCN" NUMBER NOT NULL ,
"XIDUSN" NUMBER NOT NULL ,
"XIDSLT" NUMBER NOT NULL ,
"XIDSQN" NUMBER NOT NULL ,
"SESSION_NUM" NUMBER NOT NULL ,
"SERIAL_NUM" NUMBER NOT NULL ,
"CKPT_INFO" BLOB NULL ,
"FLAG" NUMBER NULL ,
"OFFSET" NUMBER NULL ,
"CLIENT_DATA" BLOB NULL ,
"SPARE1" NUMBER NULL ,
"SPARE2" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_RESTART_CKPT$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_RESTART_CKPT_TXINFO$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_RESTART_CKPT_TXINFO$";
CREATE TABLE "SYSTEM"."LOGMNR_RESTART_CKPT_TXINFO$" (
"SESSION#" NUMBER NOT NULL ,
"XIDUSN" NUMBER NOT NULL ,
"XIDSLT" NUMBER NOT NULL ,
"XIDSQN" NUMBER NOT NULL ,
"SESSION_NUM" NUMBER NOT NULL ,
"SERIAL_NUM" NUMBER NOT NULL ,
"FLAG" NUMBER NULL ,
"START_SCN" NUMBER NULL ,
"EFFECTIVE_SCN" NUMBER NOT NULL ,
"OFFSET" NUMBER NULL ,
"TX_DATA" BLOB NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_RESTART_CKPT_TXINFO$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_SEED$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_SEED$";
CREATE TABLE "SYSTEM"."LOGMNR_SEED$" (
"SEED_VERSION" NUMBER(22) NULL ,
"GATHER_VERSION" NUMBER(22) NULL ,
"SCHEMANAME" VARCHAR2(30 BYTE) NULL ,
"OBJ#" NUMBER NULL ,
"OBJV#" NUMBER(22) NULL ,
"TABLE_NAME" VARCHAR2(30 BYTE) NULL ,
"COL_NAME" VARCHAR2(30 BYTE) NULL ,
"COL#" NUMBER NULL ,
"INTCOL#" NUMBER NULL ,
"SEGCOL#" NUMBER NULL ,
"TYPE#" NUMBER NULL ,
"LENGTH" NUMBER NULL ,
"PRECISION#" NUMBER NULL ,
"SCALE" NUMBER NULL ,
"NULL$" NUMBER NOT NULL ,
"LOGMNR_UID" NUMBER(22) NULL ,
"LOGMNR_FLAGS" NUMBER(22) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_SEED$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_SESSION$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_SESSION$";
CREATE TABLE "SYSTEM"."LOGMNR_SESSION$" (
"SESSION#" NUMBER NOT NULL ,
"CLIENT#" NUMBER NULL ,
"SESSION_NAME" VARCHAR2(128 BYTE) NOT NULL ,
"DB_ID" NUMBER NULL ,
"RESETLOGS_CHANGE#" NUMBER NULL ,
"SESSION_ATTR" NUMBER NULL ,
"SESSION_ATTR_VERBOSE" VARCHAR2(400 BYTE) NULL ,
"START_SCN" NUMBER NULL ,
"END_SCN" NUMBER NULL ,
"SPILL_SCN" NUMBER NULL ,
"SPILL_TIME" DATE NULL ,
"OLDEST_SCN" NUMBER NULL ,
"RESUME_SCN" NUMBER NULL ,
"GLOBAL_DB_NAME" VARCHAR2(128 BYTE) DEFAULT null  NULL ,
"RESET_TIMESTAMP" NUMBER NULL ,
"BRANCH_SCN" NUMBER NULL ,
"VERSION" VARCHAR2(64 BYTE) NULL ,
"REDO_COMPAT" VARCHAR2(20 BYTE) NULL ,
"SPARE1" NUMBER NULL ,
"SPARE2" NUMBER NULL ,
"SPARE3" NUMBER NULL ,
"SPARE4" NUMBER NULL ,
"SPARE5" NUMBER NULL ,
"SPARE6" DATE NULL ,
"SPARE7" VARCHAR2(1000 BYTE) NULL ,
"SPARE8" VARCHAR2(1000 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_SESSION$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_SESSION_ACTIONS$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_SESSION_ACTIONS$";
CREATE TABLE "SYSTEM"."LOGMNR_SESSION_ACTIONS$" (
"FLAGSRUNTIME" NUMBER DEFAULT 0  NULL ,
"DROPSCN" NUMBER NULL ,
"MODIFYTIME" TIMESTAMP(6)  NULL ,
"DISPATCHTIME" TIMESTAMP(6)  NULL ,
"DROPTIME" TIMESTAMP(6)  NULL ,
"LCRCOUNT" NUMBER DEFAULT 0  NULL ,
"ACTIONNAME" VARCHAR2(30 BYTE) NOT NULL ,
"LOGMNRSESSION#" NUMBER NOT NULL ,
"PROCESSROLE#" NUMBER NOT NULL ,
"ACTIONTYPE#" NUMBER NOT NULL ,
"FLAGSDEFINETIME" NUMBER NULL ,
"CREATETIME" TIMESTAMP(6)  NULL ,
"XIDUSN" NUMBER NULL ,
"XIDSLT" NUMBER NULL ,
"XIDSQN" NUMBER NULL ,
"THREAD#" NUMBER NULL ,
"STARTSCN" NUMBER NULL ,
"STARTSUBSCN" NUMBER NULL ,
"ENDSCN" NUMBER NULL ,
"ENDSUBSCN" NUMBER NULL ,
"RBASQN" NUMBER NULL ,
"RBABLK" NUMBER NULL ,
"RBABYTE" NUMBER NULL ,
"SESSION#" NUMBER NULL ,
"OBJ#" NUMBER NULL ,
"ATTR1" NUMBER NULL ,
"ATTR2" NUMBER NULL ,
"ATTR3" NUMBER NULL ,
"SPARE1" NUMBER NULL ,
"SPARE2" NUMBER NULL ,
"SPARE3" TIMESTAMP(6)  NULL ,
"SPARE4" VARCHAR2(2000 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_SESSION_ACTIONS$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_SESSION_EVOLVE$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_SESSION_EVOLVE$";
CREATE TABLE "SYSTEM"."LOGMNR_SESSION_EVOLVE$" (
"BRANCH_LEVEL" NUMBER NULL ,
"SESSION#" NUMBER NOT NULL ,
"DB_ID" NUMBER NOT NULL ,
"RESET_SCN" NUMBER NOT NULL ,
"RESET_TIMESTAMP" NUMBER NOT NULL ,
"PREV_RESET_SCN" NUMBER NULL ,
"PREV_RESET_TIMESTAMP" NUMBER NULL ,
"STATUS" NUMBER NULL ,
"SPARE1" NUMBER NULL ,
"SPARE2" NUMBER NULL ,
"SPARE3" NUMBER NULL ,
"SPARE4" DATE NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_SESSION_EVOLVE$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_SPILL$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_SPILL$";
CREATE TABLE "SYSTEM"."LOGMNR_SPILL$" (
"SESSION#" NUMBER NOT NULL ,
"XIDUSN" NUMBER NOT NULL ,
"XIDSLT" NUMBER NOT NULL ,
"XIDSQN" NUMBER NOT NULL ,
"CHUNK" NUMBER NOT NULL ,
"STARTIDX" NUMBER NOT NULL ,
"ENDIDX" NUMBER NOT NULL ,
"FLAG" NUMBER NOT NULL ,
"SEQUENCE#" NUMBER NOT NULL ,
"SPILL_DATA" BLOB NULL ,
"SPARE1" NUMBER NULL ,
"SPARE2" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_SPILL$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_SUBCOLTYPE$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_SUBCOLTYPE$";
CREATE TABLE "SYSTEM"."LOGMNR_SUBCOLTYPE$" (
"INTCOL#" NUMBER NOT NULL ,
"TOID" RAW(16) NOT NULL ,
"VERSION#" NUMBER NOT NULL ,
"INTCOLS" NUMBER NULL ,
"INTCOL#S" RAW(2000) NULL ,
"FLAGS" NUMBER NULL ,
"SYNOBJ#" NUMBER NULL ,
"OBJ#" NUMBER NOT NULL ,
"LOGMNR_UID" NUMBER(22) NULL ,
"LOGMNR_FLAGS" NUMBER(22) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_SUBCOLTYPE$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_TAB$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_TAB$";
CREATE TABLE "SYSTEM"."LOGMNR_TAB$" (
"TS#" NUMBER(22) NULL ,
"COLS" NUMBER(22) NULL ,
"PROPERTY" NUMBER(22) NULL ,
"INTCOLS" NUMBER(22) NULL ,
"KERNELCOLS" NUMBER(22) NULL ,
"BOBJ#" NUMBER(22) NULL ,
"TRIGFLAG" NUMBER(22) NULL ,
"FLAGS" NUMBER(22) NULL ,
"OBJ#" NUMBER(22) NOT NULL ,
"LOGMNR_UID" NUMBER(22) NULL ,
"LOGMNR_FLAGS" NUMBER(22) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_TAB$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_TABCOMPART$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_TABCOMPART$";
CREATE TABLE "SYSTEM"."LOGMNR_TABCOMPART$" (
"OBJ#" NUMBER(22) NULL ,
"BO#" NUMBER(22) NULL ,
"PART#" NUMBER(22) NOT NULL ,
"LOGMNR_UID" NUMBER(22) NULL ,
"LOGMNR_FLAGS" NUMBER(22) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_TABCOMPART$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_TABPART$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_TABPART$";
CREATE TABLE "SYSTEM"."LOGMNR_TABPART$" (
"OBJ#" NUMBER(22) NULL ,
"TS#" NUMBER(22) NULL ,
"PART#" NUMBER NULL ,
"BO#" NUMBER(22) NOT NULL ,
"LOGMNR_UID" NUMBER(22) NULL ,
"LOGMNR_FLAGS" NUMBER(22) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_TABPART$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_TABSUBPART$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_TABSUBPART$";
CREATE TABLE "SYSTEM"."LOGMNR_TABSUBPART$" (
"OBJ#" NUMBER(22) NULL ,
"DATAOBJ#" NUMBER(22) NULL ,
"POBJ#" NUMBER(22) NULL ,
"SUBPART#" NUMBER(22) NULL ,
"TS#" NUMBER(22) NOT NULL ,
"LOGMNR_UID" NUMBER(22) NULL ,
"LOGMNR_FLAGS" NUMBER(22) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_TABSUBPART$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_TS$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_TS$";
CREATE TABLE "SYSTEM"."LOGMNR_TS$" (
"TS#" NUMBER(22) NULL ,
"NAME" VARCHAR2(30 BYTE) NULL ,
"OWNER#" NUMBER(22) NULL ,
"BLOCKSIZE" NUMBER(22) NOT NULL ,
"LOGMNR_UID" NUMBER(22) NULL ,
"LOGMNR_FLAGS" NUMBER(22) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_TS$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_TYPE$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_TYPE$";
CREATE TABLE "SYSTEM"."LOGMNR_TYPE$" (
"VERSION#" NUMBER NULL ,
"VERSION" VARCHAR2(30 BYTE) NULL ,
"TVOID" RAW(16) NULL ,
"TYPECODE" NUMBER NULL ,
"PROPERTIES" NUMBER NULL ,
"ATTRIBUTES" NUMBER NULL ,
"METHODS" NUMBER NULL ,
"HIDDENMETHODS" NUMBER NULL ,
"SUPERTYPES" NUMBER NULL ,
"SUBTYPES" NUMBER NULL ,
"EXTERNTYPE" NUMBER NULL ,
"EXTERNNAME" VARCHAR2(4000 BYTE) NULL ,
"HELPERCLASSNAME" VARCHAR2(4000 BYTE) NULL ,
"LOCAL_ATTRS" NUMBER NULL ,
"LOCAL_METHODS" NUMBER NULL ,
"TYPEID" RAW(16) NULL ,
"ROOTTOID" RAW(16) NULL ,
"SPARE1" NUMBER NULL ,
"SPARE2" NUMBER NULL ,
"SPARE3" NUMBER NULL ,
"SUPERTOID" RAW(16) NULL ,
"HASHCODE" RAW(17) NULL ,
"TOID" RAW(16) NOT NULL ,
"LOGMNR_UID" NUMBER(22) NULL ,
"LOGMNR_FLAGS" NUMBER(22) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_TYPE$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_UID$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_UID$";
CREATE TABLE "SYSTEM"."LOGMNR_UID$" (
"LOGMNR_UID" NUMBER(22) NULL ,
"SESSION#" NUMBER NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_UID$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNR_USER$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNR_USER$";
CREATE TABLE "SYSTEM"."LOGMNR_USER$" (
"USER#" NUMBER(22) NULL ,
"NAME" VARCHAR2(30 BYTE) NOT NULL ,
"LOGMNR_UID" NUMBER(22) NULL ,
"LOGMNR_FLAGS" NUMBER(22) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNR_USER$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNRC_DBNAME_UID_MAP"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNRC_DBNAME_UID_MAP";
CREATE TABLE "SYSTEM"."LOGMNRC_DBNAME_UID_MAP" (
"GLOBAL_NAME" VARCHAR2(128 BYTE) NOT NULL ,
"LOGMNR_UID" NUMBER NULL ,
"FLAGS" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNRC_DBNAME_UID_MAP
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNRC_GSBA"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNRC_GSBA";
CREATE TABLE "SYSTEM"."LOGMNRC_GSBA" (
"LOGMNR_UID" NUMBER NOT NULL ,
"AS_OF_SCN" NUMBER NOT NULL ,
"FDO_LENGTH" NUMBER NULL ,
"FDO_VALUE" RAW(255) NULL ,
"CHARSETID" NUMBER NULL ,
"NCHARSETID" NUMBER NULL ,
"DBTIMEZONE_LEN" NUMBER NULL ,
"DBTIMEZONE_VALUE" VARCHAR2(64 BYTE) NULL ,
"LOGMNR_SPARE1" NUMBER NULL ,
"LOGMNR_SPARE2" NUMBER NULL ,
"LOGMNR_SPARE3" VARCHAR2(1000 BYTE) NULL ,
"LOGMNR_SPARE4" DATE NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNRC_GSBA
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNRC_GSII"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNRC_GSII";
CREATE TABLE "SYSTEM"."LOGMNRC_GSII" (
"LOGMNR_UID" NUMBER NOT NULL ,
"OBJ#" NUMBER NOT NULL ,
"BO#" NUMBER NOT NULL ,
"INDTYPE#" NUMBER NOT NULL ,
"DROP_SCN" NUMBER NULL ,
"LOGMNR_SPARE1" NUMBER NULL ,
"LOGMNR_SPARE2" NUMBER NULL ,
"LOGMNR_SPARE3" VARCHAR2(1000 BYTE) NULL ,
"LOGMNR_SPARE4" DATE NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNRC_GSII
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNRC_GTCS"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNRC_GTCS";
CREATE TABLE "SYSTEM"."LOGMNRC_GTCS" (
"LOGMNR_UID" NUMBER NOT NULL ,
"OBJ#" NUMBER NOT NULL ,
"OBJV#" NUMBER NOT NULL ,
"SEGCOL#" NUMBER NOT NULL ,
"INTCOL#" NUMBER NOT NULL ,
"COLNAME" VARCHAR2(30 BYTE) NOT NULL ,
"TYPE#" NUMBER NOT NULL ,
"LENGTH" NUMBER NULL ,
"PRECISION" NUMBER NULL ,
"SCALE" NUMBER NULL ,
"INTERVAL_LEADING_PRECISION" NUMBER NULL ,
"INTERVAL_TRAILING_PRECISION" NUMBER NULL ,
"PROPERTY" NUMBER NULL ,
"TOID" RAW(16) NULL ,
"CHARSETID" NUMBER NULL ,
"CHARSETFORM" NUMBER NULL ,
"TYPENAME" VARCHAR2(30 BYTE) NULL ,
"FQCOLNAME" VARCHAR2(4000 BYTE) NULL ,
"NUMINTCOLS" NUMBER NULL ,
"NUMATTRS" NUMBER NULL ,
"ADTORDER" NUMBER NULL ,
"LOGMNR_SPARE1" NUMBER NULL ,
"LOGMNR_SPARE2" NUMBER NULL ,
"LOGMNR_SPARE3" VARCHAR2(1000 BYTE) NULL ,
"LOGMNR_SPARE4" DATE NULL ,
"LOGMNR_SPARE5" NUMBER NULL ,
"LOGMNR_SPARE6" NUMBER NULL ,
"LOGMNR_SPARE7" NUMBER NULL ,
"LOGMNR_SPARE8" NUMBER NULL ,
"LOGMNR_SPARE9" NUMBER NULL ,
"COL#" NUMBER NULL ,
"XTYPESCHEMANAME" VARCHAR2(30 BYTE) NULL ,
"XTYPENAME" VARCHAR2(4000 BYTE) NULL ,
"XFQCOLNAME" VARCHAR2(4000 BYTE) NULL ,
"XTOPINTCOL" NUMBER NULL ,
"XREFFEDTABLEOBJN" NUMBER NULL ,
"XREFFEDTABLEOBJV" NUMBER NULL ,
"XCOLTYPEFLAGS" NUMBER NULL ,
"XOPQTYPETYPE" NUMBER NULL ,
"XOPQTYPEFLAGS" NUMBER NULL ,
"XOPQLOBINTCOL" NUMBER NULL ,
"XOPQOBJINTCOL" NUMBER NULL ,
"XXMLINTCOL" NUMBER NULL ,
"EAOWNER#" NUMBER NULL ,
"EAMKEYID" VARCHAR2(64 BYTE) NULL ,
"EAENCALG" NUMBER NULL ,
"EAINTALG" NUMBER NULL ,
"EACOLKLC" RAW(2000) NULL ,
"EAKLCLEN" NUMBER NULL ,
"EAFLAGS" NUMBER NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNRC_GTCS
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNRC_GTLO"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNRC_GTLO";
CREATE TABLE "SYSTEM"."LOGMNRC_GTLO" (
"LOGMNR_UID" NUMBER NOT NULL ,
"KEYOBJ#" NUMBER NOT NULL ,
"LVLCNT" NUMBER NOT NULL ,
"BASEOBJ#" NUMBER NOT NULL ,
"BASEOBJV#" NUMBER NOT NULL ,
"LVL1OBJ#" NUMBER NULL ,
"LVL2OBJ#" NUMBER NULL ,
"LVL0TYPE#" NUMBER NOT NULL ,
"LVL1TYPE#" NUMBER NULL ,
"LVL2TYPE#" NUMBER NULL ,
"OWNER#" NUMBER NULL ,
"OWNERNAME" VARCHAR2(30 BYTE) NOT NULL ,
"LVL0NAME" VARCHAR2(30 BYTE) NOT NULL ,
"LVL1NAME" VARCHAR2(30 BYTE) NULL ,
"LVL2NAME" VARCHAR2(30 BYTE) NULL ,
"INTCOLS" NUMBER NOT NULL ,
"COLS" NUMBER NULL ,
"KERNELCOLS" NUMBER NULL ,
"TAB_FLAGS" NUMBER NULL ,
"TRIGFLAG" NUMBER NULL ,
"ASSOC#" NUMBER NULL ,
"OBJ_FLAGS" NUMBER NULL ,
"TS#" NUMBER NULL ,
"TSNAME" VARCHAR2(30 BYTE) NULL ,
"PROPERTY" NUMBER NULL ,
"START_SCN" NUMBER NOT NULL ,
"DROP_SCN" NUMBER NULL ,
"XIDUSN" NUMBER NULL ,
"XIDSLT" NUMBER NULL ,
"XIDSQN" NUMBER NULL ,
"FLAGS" NUMBER NULL ,
"LOGMNR_SPARE1" NUMBER NULL ,
"LOGMNR_SPARE2" NUMBER NULL ,
"LOGMNR_SPARE3" VARCHAR2(1000 BYTE) NULL ,
"LOGMNR_SPARE4" DATE NULL ,
"LOGMNR_SPARE5" NUMBER NULL ,
"LOGMNR_SPARE6" NUMBER NULL ,
"LOGMNR_SPARE7" NUMBER NULL ,
"LOGMNR_SPARE8" NUMBER NULL ,
"LOGMNR_SPARE9" NUMBER NULL ,
"PARTTYPE" NUMBER NULL ,
"SUBPARTTYPE" NUMBER NULL ,
"UNSUPPORTEDCOLS" NUMBER NULL ,
"COMPLEXTYPECOLS" NUMBER NULL ,
"NTPARENTOBJNUM" NUMBER NULL ,
"NTPARENTOBJVERSION" NUMBER NULL ,
"NTPARENTINTCOLNUM" NUMBER NULL ,
"LOGMNRTLOFLAGS" NUMBER NULL ,
"LOGMNRMCV" VARCHAR2(30 BYTE) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNRC_GTLO
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNRP_CTAS_PART_MAP"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNRP_CTAS_PART_MAP";
CREATE TABLE "SYSTEM"."LOGMNRP_CTAS_PART_MAP" (
"LOGMNR_UID" NUMBER NOT NULL ,
"BASEOBJ#" NUMBER NOT NULL ,
"BASEOBJV#" NUMBER NOT NULL ,
"KEYOBJ#" NUMBER NOT NULL ,
"PART#" NUMBER NOT NULL ,
"SPARE1" NUMBER NULL ,
"SPARE2" NUMBER NULL ,
"SPARE3" VARCHAR2(1000 BYTE) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNRP_CTAS_PART_MAP
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGMNRT_MDDL$"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGMNRT_MDDL$";
CREATE TABLE "SYSTEM"."LOGMNRT_MDDL$" (
"SOURCE_OBJ#" NUMBER NOT NULL ,
"SOURCE_ROWID" ROWID NOT NULL ,
"DEST_ROWID" ROWID NOT NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGMNRT_MDDL$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGSTDBY$APPLY_MILESTONE"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGSTDBY$APPLY_MILESTONE";
CREATE TABLE "SYSTEM"."LOGSTDBY$APPLY_MILESTONE" (
"SESSION_ID" NUMBER NOT NULL ,
"COMMIT_SCN" NUMBER NOT NULL ,
"COMMIT_TIME" DATE NULL ,
"SYNCH_SCN" NUMBER NOT NULL ,
"EPOCH" NUMBER NOT NULL ,
"PROCESSED_SCN" NUMBER NOT NULL ,
"PROCESSED_TIME" DATE NULL ,
"FETCHLWM_SCN" NUMBER DEFAULT (0)  NOT NULL ,
"SPARE1" NUMBER NULL ,
"SPARE2" NUMBER NULL ,
"SPARE3" VARCHAR2(2000 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGSTDBY$APPLY_MILESTONE
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGSTDBY$APPLY_PROGRESS"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGSTDBY$APPLY_PROGRESS";
CREATE TABLE "SYSTEM"."LOGSTDBY$APPLY_PROGRESS" (
"XIDUSN" NUMBER NULL ,
"XIDSLT" NUMBER NULL ,
"XIDSQN" NUMBER NULL ,
"COMMIT_SCN" NUMBER NULL ,
"COMMIT_TIME" DATE NULL ,
"SPARE1" NUMBER NULL ,
"SPARE2" NUMBER NULL ,
"SPARE3" VARCHAR2(2000 BYTE) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGSTDBY$APPLY_PROGRESS
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGSTDBY$EDS_TABLES"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGSTDBY$EDS_TABLES";
CREATE TABLE "SYSTEM"."LOGSTDBY$EDS_TABLES" (
"OWNER" VARCHAR2(30 BYTE) NOT NULL ,
"TABLE_NAME" VARCHAR2(30 BYTE) NOT NULL ,
"SHADOW_TABLE_NAME" VARCHAR2(30 BYTE) NULL ,
"BASE_TRIGGER_NAME" VARCHAR2(30 BYTE) NULL ,
"SHADOW_TRIGGER_NAME" VARCHAR2(30 BYTE) NULL ,
"DBLINK" VARCHAR2(255 BYTE) NULL ,
"FLAGS" NUMBER NULL ,
"STATE" VARCHAR2(255 BYTE) NULL ,
"OBJV" NUMBER NULL ,
"OBJ#" NUMBER NULL ,
"SOBJ#" NUMBER NULL ,
"CTIME" TIMESTAMP(6)  NULL ,
"SPARE1" NUMBER NULL ,
"SPARE2" VARCHAR2(255 BYTE) NULL ,
"SPARE3" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGSTDBY$EDS_TABLES
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGSTDBY$EVENTS"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGSTDBY$EVENTS";
CREATE TABLE "SYSTEM"."LOGSTDBY$EVENTS" (
"EVENT_TIME" TIMESTAMP(6)  NOT NULL ,
"CURRENT_SCN" NUMBER NULL ,
"COMMIT_SCN" NUMBER NULL ,
"XIDUSN" NUMBER NULL ,
"XIDSLT" NUMBER NULL ,
"XIDSQN" NUMBER NULL ,
"ERRVAL" NUMBER NULL ,
"EVENT" VARCHAR2(2000 BYTE) NULL ,
"FULL_EVENT" CLOB NULL ,
"ERROR" VARCHAR2(2000 BYTE) NULL ,
"SPARE1" NUMBER NULL ,
"SPARE2" NUMBER NULL ,
"SPARE3" VARCHAR2(2000 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGSTDBY$EVENTS
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGSTDBY$FLASHBACK_SCN"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGSTDBY$FLASHBACK_SCN";
CREATE TABLE "SYSTEM"."LOGSTDBY$FLASHBACK_SCN" (
"PRIMARY_SCN" NUMBER NOT NULL ,
"PRIMARY_TIME" DATE NULL ,
"STANDBY_SCN" NUMBER NULL ,
"STANDBY_TIME" DATE NULL ,
"SPARE1" NUMBER NULL ,
"SPARE2" NUMBER NULL ,
"SPARE3" DATE NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGSTDBY$FLASHBACK_SCN
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGSTDBY$HISTORY"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGSTDBY$HISTORY";
CREATE TABLE "SYSTEM"."LOGSTDBY$HISTORY" (
"STREAM_SEQUENCE#" NUMBER NULL ,
"LMNR_SID" NUMBER NULL ,
"DBID" NUMBER NULL ,
"FIRST_CHANGE#" NUMBER NULL ,
"LAST_CHANGE#" NUMBER NULL ,
"SOURCE" NUMBER NULL ,
"STATUS" NUMBER NULL ,
"FIRST_TIME" DATE NULL ,
"LAST_TIME" DATE NULL ,
"DGNAME" VARCHAR2(255 BYTE) NULL ,
"SPARE1" NUMBER NULL ,
"SPARE2" NUMBER NULL ,
"SPARE3" VARCHAR2(2000 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGSTDBY$HISTORY
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGSTDBY$PARAMETERS"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGSTDBY$PARAMETERS";
CREATE TABLE "SYSTEM"."LOGSTDBY$PARAMETERS" (
"NAME" VARCHAR2(30 BYTE) NULL ,
"VALUE" VARCHAR2(2000 BYTE) NULL ,
"TYPE" NUMBER NULL ,
"SCN" NUMBER NULL ,
"SPARE1" NUMBER NULL ,
"SPARE2" NUMBER NULL ,
"SPARE3" VARCHAR2(2000 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGSTDBY$PARAMETERS
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGSTDBY$PLSQL"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGSTDBY$PLSQL";
CREATE TABLE "SYSTEM"."LOGSTDBY$PLSQL" (
"SESSION_ID" NUMBER NULL ,
"START_FINISH" NUMBER NULL ,
"CALL_TEXT" CLOB NULL ,
"SPARE1" NUMBER NULL ,
"SPARE2" NUMBER NULL ,
"SPARE3" VARCHAR2(2000 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGSTDBY$PLSQL
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGSTDBY$SCN"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGSTDBY$SCN";
CREATE TABLE "SYSTEM"."LOGSTDBY$SCN" (
"OBJ#" NUMBER NULL ,
"OBJNAME" VARCHAR2(4000 BYTE) NULL ,
"SCHEMA" VARCHAR2(30 BYTE) NULL ,
"TYPE" VARCHAR2(20 BYTE) NULL ,
"SCN" NUMBER NULL ,
"SPARE1" NUMBER NULL ,
"SPARE2" NUMBER NULL ,
"SPARE3" VARCHAR2(2000 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGSTDBY$SCN
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGSTDBY$SKIP"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGSTDBY$SKIP";
CREATE TABLE "SYSTEM"."LOGSTDBY$SKIP" (
"ERROR" NUMBER NULL ,
"STATEMENT_OPT" VARCHAR2(30 BYTE) NULL ,
"SCHEMA" VARCHAR2(30 BYTE) NULL ,
"NAME" VARCHAR2(65 BYTE) NULL ,
"USE_LIKE" NUMBER NULL ,
"ESC" VARCHAR2(1 BYTE) NULL ,
"PROC" VARCHAR2(98 BYTE) NULL ,
"ACTIVE" NUMBER NULL ,
"SPARE1" NUMBER NULL ,
"SPARE2" NUMBER NULL ,
"SPARE3" VARCHAR2(2000 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGSTDBY$SKIP
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."LOGSTDBY$SKIP_SUPPORT"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGSTDBY$SKIP_SUPPORT";
CREATE TABLE "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" (
"ACTION" NUMBER NOT NULL ,
"NAME" VARCHAR2(30 BYTE) NOT NULL ,
"REG" NUMBER NULL ,
"SPARE1" NUMBER NULL ,
"SPARE2" NUMBER NULL ,
"SPARE3" VARCHAR2(2000 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGSTDBY$SKIP_SUPPORT
-- ----------------------------
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('2', 'DML', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('6', 'DML', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('7', 'DML', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('4', 'CLUSTER', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('5', 'CLUSTER', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('8', 'CLUSTER', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('86', 'CLUSTER', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('177', 'CONTEXT', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('178', 'CONTEXT', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('32', 'DATABASE LINK', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('33', 'DATABASE LINK', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('225', 'DATABASE LINK', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('174', 'DIMENSION', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('175', 'DIMENSION', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('176', 'DIMENSION', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('157', 'DIRECTORY', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('158', 'DIRECTORY', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('9', 'INDEX', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('11', 'INDEX', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('10', 'INDEX', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('24', 'PROCEDURE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('25', 'PROCEDURE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('68', 'PROCEDURE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('91', 'PROCEDURE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('92', 'PROCEDURE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('93', 'PROCEDURE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('94', 'PROCEDURE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('95', 'PROCEDURE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('96', 'PROCEDURE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('97', 'PROCEDURE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('98', 'PROCEDURE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('99', 'PROCEDURE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('159', 'PROCEDURE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('196', 'PROCEDURE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('84', 'PROCEDURE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('65', 'PROFILE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('67', 'PROFILE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('66', 'PROFILE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('52', 'ROLE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('79', 'ROLE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('54', 'ROLE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('55', 'ROLE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('36', 'ROLLBACK STATEMENT', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('37', 'ROLLBACK STATEMENT', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('38', 'ROLLBACK STATEMENT', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('13', 'SEQUENCE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('14', 'SEQUENCE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('16', 'SEQUENCE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('19', 'SYNONYM', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('20', 'SYNONYM', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('110', 'SYNONYM', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('111', 'SYNONYM', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('1', 'TABLE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('15', 'TABLE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('12', 'TABLE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('85', 'TABLE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('39', 'TABLESPACE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('40', 'TABLESPACE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('41', 'TABLESPACE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('59', 'TRIGGER', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('60', 'TRIGGER', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('61', 'TRIGGER', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('118', 'TRIGGER', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('119', 'TRIGGER', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('120', 'TRIGGER', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('121', 'TRIGGER', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('77', 'TYPE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('78', 'TYPE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('80', 'TYPE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('81', 'TYPE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('82', 'TYPE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('83', 'TYPE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('51', 'USER', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('43', 'USER', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('53', 'USER', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('21', 'VIEW', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('22', 'VIEW', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('17', 'GRANT', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('18', 'REVOKE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('30', 'AUDIT', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('31', 'AUDIT', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('212', 'EDITION', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('213', 'EDITION', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('214', 'EDITION', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('160', 'JAVA', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('161', 'JAVA', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('162', 'JAVA', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('1000000', 'PL/SQL', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('1000001', 'PL/SQL_DDL', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('-1', 'ADAMS', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('0', 'ANONYMOUS', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('0', 'APPQOSSYS', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('0', 'BI', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('-1', 'BLAKE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('-1', 'CLARK', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('0', 'CTXSYS', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('0', 'DIP', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('0', 'DBSNMP', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('0', 'DMSYS', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('0', 'EXDSYS', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('0', 'EXFSYS', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('-1', 'HR', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('-1', 'IX', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('-1', 'JONES', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('0', 'LBACSYS', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('-1', 'MDDATA', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('0', 'MDSYS', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('0', 'MGMT_VIEW', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('0', 'MTSSYS', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('0', 'ODM', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('0', 'ODM_MTR', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('-1', 'OE', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('0', 'OLAPSYS', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('0', 'ORACLE_OCM', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('0', 'ORDDATA', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('0', 'ORDPLUGINS', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('0', 'ORDSYS', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('0', 'OUTLN', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('-1', 'PM', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('-1', 'SCOTT', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('0', 'SI_INFORMTN_SCHEMA', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('-1', 'SH', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('0', 'SYS', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('0', 'SYSTEM', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('0', 'SYSMAN', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('0', 'TSMSYS', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('0', 'WKPROXY', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('0', 'WKSYS', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('0', 'WK_TEST', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('0', 'WMSYS', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('0', 'XDB', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('0', 'XS$NULL', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('0', 'XTISYS', '0', null, null, null);
INSERT INTO "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" VALUES ('0', 'APEX_040000', '1', null, null, null);

-- ----------------------------
-- Table structure for "SYSTEM"."LOGSTDBY$SKIP_TRANSACTION"
-- ----------------------------
DROP TABLE "SYSTEM"."LOGSTDBY$SKIP_TRANSACTION";
CREATE TABLE "SYSTEM"."LOGSTDBY$SKIP_TRANSACTION" (
"XIDUSN" NUMBER NULL ,
"XIDSLT" NUMBER NULL ,
"XIDSQN" NUMBER NULL ,
"ACTIVE" NUMBER NULL ,
"COMMIT_SCN" NUMBER NULL ,
"SPARE2" NUMBER NULL ,
"SPARE3" VARCHAR2(2000 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of LOGSTDBY$SKIP_TRANSACTION
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."MVIEW$_ADV_AJG"
-- ----------------------------
DROP TABLE "SYSTEM"."MVIEW$_ADV_AJG";
CREATE TABLE "SYSTEM"."MVIEW$_ADV_AJG" (
"AJGID#" NUMBER NOT NULL ,
"RUNID#" NUMBER NOT NULL ,
"AJGDESLEN" NUMBER NOT NULL ,
"AJGDES" LONG RAW NOT NULL ,
"HASHVALUE" NUMBER NOT NULL ,
"FREQUENCY" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_AJG" IS 'Anchor-join graph representation';

-- ----------------------------
-- Records of MVIEW$_ADV_AJG
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."MVIEW$_ADV_BASETABLE"
-- ----------------------------
DROP TABLE "SYSTEM"."MVIEW$_ADV_BASETABLE";
CREATE TABLE "SYSTEM"."MVIEW$_ADV_BASETABLE" (
"COLLECTIONID#" NUMBER NOT NULL ,
"QUERYID#" NUMBER NOT NULL ,
"OWNER" VARCHAR2(30 BYTE) NULL ,
"TABLE_NAME" VARCHAR2(30 BYTE) NULL ,
"TABLE_TYPE" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_BASETABLE" IS 'Base tables refered by a query';

-- ----------------------------
-- Records of MVIEW$_ADV_BASETABLE
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."MVIEW$_ADV_CLIQUE"
-- ----------------------------
DROP TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE";
CREATE TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE" (
"CLIQUEID#" NUMBER NOT NULL ,
"RUNID#" NUMBER NOT NULL ,
"CLIQUEDESLEN" NUMBER NOT NULL ,
"CLIQUEDES" LONG RAW NOT NULL ,
"HASHVALUE" NUMBER NOT NULL ,
"FREQUENCY" NUMBER NOT NULL ,
"BYTECOST" NUMBER NOT NULL ,
"ROWSIZE" NUMBER NOT NULL ,
"NUMROWS" NUMBER NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE" IS 'Table for storing canonical form of Clique queries';

-- ----------------------------
-- Records of MVIEW$_ADV_CLIQUE
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."MVIEW$_ADV_ELIGIBLE"
-- ----------------------------
DROP TABLE "SYSTEM"."MVIEW$_ADV_ELIGIBLE";
CREATE TABLE "SYSTEM"."MVIEW$_ADV_ELIGIBLE" (
"SUMOBJN#" NUMBER NOT NULL ,
"RUNID#" NUMBER NOT NULL ,
"BYTECOST" NUMBER NOT NULL ,
"FLAGS" NUMBER NOT NULL ,
"FREQUENCY" NUMBER NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_ELIGIBLE" IS 'Summary management rewrite eligibility information';

-- ----------------------------
-- Records of MVIEW$_ADV_ELIGIBLE
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."MVIEW$_ADV_EXCEPTIONS"
-- ----------------------------
DROP TABLE "SYSTEM"."MVIEW$_ADV_EXCEPTIONS";
CREATE TABLE "SYSTEM"."MVIEW$_ADV_EXCEPTIONS" (
"RUNID#" NUMBER NULL ,
"OWNER" VARCHAR2(30 BYTE) NULL ,
"TABLE_NAME" VARCHAR2(30 BYTE) NULL ,
"DIMENSION_NAME" VARCHAR2(30 BYTE) NULL ,
"RELATIONSHIP" VARCHAR2(11 BYTE) NULL ,
"BAD_ROWID" ROWID NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_EXCEPTIONS" IS 'Output table for dimension validations';

-- ----------------------------
-- Records of MVIEW$_ADV_EXCEPTIONS
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."MVIEW$_ADV_FILTER"
-- ----------------------------
DROP TABLE "SYSTEM"."MVIEW$_ADV_FILTER";
CREATE TABLE "SYSTEM"."MVIEW$_ADV_FILTER" (
"FILTERID#" NUMBER NOT NULL ,
"SUBFILTERNUM#" NUMBER NOT NULL ,
"SUBFILTERTYPE" NUMBER NOT NULL ,
"STR_VALUE" VARCHAR2(1028 BYTE) NULL ,
"NUM_VALUE1" NUMBER NULL ,
"NUM_VALUE2" NUMBER NULL ,
"DATE_VALUE1" DATE NULL ,
"DATE_VALUE2" DATE NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_FILTER" IS 'Table for workload filter definition';

-- ----------------------------
-- Records of MVIEW$_ADV_FILTER
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."MVIEW$_ADV_FILTERINSTANCE"
-- ----------------------------
DROP TABLE "SYSTEM"."MVIEW$_ADV_FILTERINSTANCE";
CREATE TABLE "SYSTEM"."MVIEW$_ADV_FILTERINSTANCE" (
"RUNID#" NUMBER NOT NULL ,
"FILTERID#" NUMBER NULL ,
"SUBFILTERNUM#" NUMBER NULL ,
"SUBFILTERTYPE" NUMBER NULL ,
"STR_VALUE" VARCHAR2(1028 BYTE) NULL ,
"NUM_VALUE1" NUMBER NULL ,
"NUM_VALUE2" NUMBER NULL ,
"DATE_VALUE1" DATE NULL ,
"DATE_VALUE2" DATE NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_FILTERINSTANCE" IS 'Table for workload filter instance definition';

-- ----------------------------
-- Records of MVIEW$_ADV_FILTERINSTANCE
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."MVIEW$_ADV_FJG"
-- ----------------------------
DROP TABLE "SYSTEM"."MVIEW$_ADV_FJG";
CREATE TABLE "SYSTEM"."MVIEW$_ADV_FJG" (
"FJGID#" NUMBER NOT NULL ,
"AJGID#" NUMBER NOT NULL ,
"FJGDESLEN" NUMBER NOT NULL ,
"FJGDES" LONG RAW NOT NULL ,
"HASHVALUE" NUMBER NOT NULL ,
"FREQUENCY" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_FJG" IS 'Representation for query join sub-graph not in AJG ';

-- ----------------------------
-- Records of MVIEW$_ADV_FJG
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."MVIEW$_ADV_GC"
-- ----------------------------
DROP TABLE "SYSTEM"."MVIEW$_ADV_GC";
CREATE TABLE "SYSTEM"."MVIEW$_ADV_GC" (
"GCID#" NUMBER NOT NULL ,
"FJGID#" NUMBER NOT NULL ,
"GCDESLEN" NUMBER NOT NULL ,
"GCDES" LONG RAW NOT NULL ,
"HASHVALUE" NUMBER NOT NULL ,
"FREQUENCY" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_GC" IS 'Group-by columns of a query';

-- ----------------------------
-- Records of MVIEW$_ADV_GC
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."MVIEW$_ADV_INFO"
-- ----------------------------
DROP TABLE "SYSTEM"."MVIEW$_ADV_INFO";
CREATE TABLE "SYSTEM"."MVIEW$_ADV_INFO" (
"RUNID#" NUMBER NOT NULL ,
"SEQ#" NUMBER NOT NULL ,
"TYPE" NUMBER NOT NULL ,
"INFOLEN" NUMBER NOT NULL ,
"INFO" LONG RAW NULL ,
"STATUS" NUMBER NULL ,
"FLAG" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_INFO" IS 'Internal table for passing information from the SQL analyzer';

-- ----------------------------
-- Records of MVIEW$_ADV_INFO
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."MVIEW$_ADV_JOURNAL"
-- ----------------------------
DROP TABLE "SYSTEM"."MVIEW$_ADV_JOURNAL";
CREATE TABLE "SYSTEM"."MVIEW$_ADV_JOURNAL" (
"RUNID#" NUMBER NOT NULL ,
"SEQ#" NUMBER NOT NULL ,
"TIMESTAMP" DATE NOT NULL ,
"FLAGS" NUMBER NOT NULL ,
"NUM" NUMBER NULL ,
"TEXT" LONG NULL ,
"TEXTLEN" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_JOURNAL" IS 'Summary advisor journal table for debugging and information';

-- ----------------------------
-- Records of MVIEW$_ADV_JOURNAL
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."MVIEW$_ADV_LEVEL"
-- ----------------------------
DROP TABLE "SYSTEM"."MVIEW$_ADV_LEVEL";
CREATE TABLE "SYSTEM"."MVIEW$_ADV_LEVEL" (
"RUNID#" NUMBER NOT NULL ,
"LEVELID#" NUMBER NOT NULL ,
"DIMOBJ#" NUMBER NULL ,
"FLAGS" NUMBER NOT NULL ,
"TBLOBJ#" NUMBER NOT NULL ,
"COLUMNLIST" RAW(70) NOT NULL ,
"LEVELNAME" VARCHAR2(30 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_LEVEL" IS 'Level definition';

-- ----------------------------
-- Records of MVIEW$_ADV_LEVEL
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."MVIEW$_ADV_LOG"
-- ----------------------------
DROP TABLE "SYSTEM"."MVIEW$_ADV_LOG";
CREATE TABLE "SYSTEM"."MVIEW$_ADV_LOG" (
"RUNID#" NUMBER NOT NULL ,
"FILTERID#" NUMBER NULL ,
"RUN_BEGIN" DATE NULL ,
"RUN_END" DATE NULL ,
"RUN_TYPE" NUMBER NULL ,
"UNAME" VARCHAR2(30 BYTE) NULL ,
"STATUS" NUMBER NOT NULL ,
"MESSAGE" VARCHAR2(2000 BYTE) NULL ,
"COMPLETED" NUMBER NULL ,
"TOTAL" NUMBER NULL ,
"ERROR_CODE" VARCHAR2(20 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_LOG" IS 'Log all calls to summary advisory functions';

-- ----------------------------
-- Records of MVIEW$_ADV_LOG
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."MVIEW$_ADV_OUTPUT"
-- ----------------------------
DROP TABLE "SYSTEM"."MVIEW$_ADV_OUTPUT";
CREATE TABLE "SYSTEM"."MVIEW$_ADV_OUTPUT" (
"RUNID#" NUMBER NOT NULL ,
"OUTPUT_TYPE" NUMBER NOT NULL ,
"RANK#" NUMBER NOT NULL ,
"ACTION_TYPE" VARCHAR2(6 BYTE) NULL ,
"SUMMARY_OWNER" VARCHAR2(30 BYTE) NULL ,
"SUMMARY_NAME" VARCHAR2(30 BYTE) NULL ,
"GROUP_BY_COLUMNS" VARCHAR2(2000 BYTE) NULL ,
"WHERE_CLAUSE" VARCHAR2(2000 BYTE) NULL ,
"FROM_CLAUSE" VARCHAR2(2000 BYTE) NULL ,
"MEASURES_LIST" VARCHAR2(2000 BYTE) NULL ,
"FACT_TABLES" VARCHAR2(1000 BYTE) NULL ,
"GROUPING_LEVELS" VARCHAR2(2000 BYTE) NULL ,
"QUERYLEN" NUMBER NULL ,
"QUERY_TEXT" LONG NULL ,
"STORAGE_IN_BYTES" NUMBER NULL ,
"PCT_PERFORMANCE_GAIN" NUMBER NULL ,
"FREQUENCY" NUMBER NULL ,
"CUMULATIVE_BENEFIT" NUMBER NULL ,
"BENEFIT_TO_COST_RATIO" NUMBER NOT NULL ,
"VALIDATED" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_OUTPUT" IS 'Output table for summary recommendations and evaluations';

-- ----------------------------
-- Records of MVIEW$_ADV_OUTPUT
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."MVIEW$_ADV_PARAMETERS"
-- ----------------------------
DROP TABLE "SYSTEM"."MVIEW$_ADV_PARAMETERS";
CREATE TABLE "SYSTEM"."MVIEW$_ADV_PARAMETERS" (
"PARAMETER_NAME" VARCHAR2(30 BYTE) NOT NULL ,
"PARAMETER_TYPE" NUMBER NOT NULL ,
"STRING_VALUE" VARCHAR2(30 BYTE) NULL ,
"DATE_VALUE" DATE NULL ,
"NUMERICAL_VALUE" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_PARAMETERS" IS 'Summary advisor tuning parameters';

-- ----------------------------
-- Records of MVIEW$_ADV_PARAMETERS
-- ----------------------------
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('QSMSS_EXACT_DELETE', '0', null, null, '0.02');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('QSMSS_EXACT_BUCKETS', '0', null, null, '1000');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('QSMSS_PARTIAL_DELETE', '0', null, null, '0.02');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('QSMSS_PARTIAL_BUCKETS', '0', null, null, '1000');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('QSMSS_AJG_DELETE', '0', null, null, '0.02');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('QSMSS_AJG_BUCKETS', '0', null, null, '100');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('QSMSS_FJG_DELETE', '0', null, null, '0.02');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('QSMSS_GC_DELETE', '0', null, null, '0.02');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('QSMSS_MEA_DELETE', '0', null, null, '0.05');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('QSMSS_TRACE_LEVEL', '0', null, null, '0');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('QSMSS_REWRITE_NRF', '0', null, null, '10');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('qsma.console_output', '1', 'True', null, '0');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('qsma.wip_interval', '0', null, null, '250');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('qsma.commit_interval', '0', null, null, '100');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('qsma.sql_exclusions', '1', 'SYSTEM.%', null, '0');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('qsma.pretty', '1', 'True', null, '0');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('qsma.lcase_names', '1', 'True', null, '0');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('qsma.lcase_keywords', '1', 'False', null, '0');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('qsma.add_alias', '1', 'False', null, '0');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('qsma.ignore_ambig', '1', 'True', null, '0');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('qsma.fixup_alias', '1', 'False', null, '0');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('qsma.optimize', '1', 'True', null, '0');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('qsma.ignore_columns', '1', 'True', null, '0');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('qsma.fixup_schema', '1', 'False', null, '0');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('qsma.remove_optional_keywords', '1', 'False', null, '0');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('qsma.dump_tree', '1', 'True', null, '0');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('qsma.debug_flags', '1', null, null, '0');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('qsma.datetime_mask', '1', 'dd/MM/yyyy HH:mm', null, '0');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('QSMAE_MIN_CLQ_MF_RATIO', '0', null, null, '0.05');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('QSMAE_MIN_SUM_BC_RATIO', '0', null, null, '0.05');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('QSMAE_MAX_GCS', '0', null, null, '1000');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('QSMAE_PCT_COMPL_POLL_INTL', '0', null, null, '10');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('QSMAE_TRACE_LEVEL', '0', null, null, '0');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('QSMAE_AEP_MAX_LAT_SIZE', '0', null, null, '1024');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('QSMAE_AEP_MAX_FACT_TABLES', '0', null, null, '10');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('qsma.report.color1', '1', '#FFFFDE', null, '0');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('qsma.report.color2', '1', '#336699', null, '0');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('qsma.report.color3', '1', '#FFCC60', null, '0');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('qsma.report.color4', '1', 'white', null, '0');
INSERT INTO "SYSTEM"."MVIEW$_ADV_PARAMETERS" VALUES ('qsma.report.include_unused', '1', 'False', null, '0');

-- ----------------------------
-- Table structure for "SYSTEM"."MVIEW$_ADV_PLAN"
-- ----------------------------
DROP TABLE "SYSTEM"."MVIEW$_ADV_PLAN";
CREATE TABLE "SYSTEM"."MVIEW$_ADV_PLAN" (
"STATEMENT_ID" VARCHAR2(30 BYTE) NULL ,
"TIMESTAMP" DATE NULL ,
"REMARKS" VARCHAR2(80 BYTE) NULL ,
"OPERATION" VARCHAR2(30 BYTE) NULL ,
"OPTIONS" VARCHAR2(255 BYTE) NULL ,
"OBJECT_NODE" VARCHAR2(128 BYTE) NULL ,
"OBJECT_OWNER" VARCHAR2(30 BYTE) NULL ,
"OBJECT_NAME" VARCHAR2(30 BYTE) NULL ,
"OBJECT_INSTANCE" NUMBER NULL ,
"OBJECT_TYPE" VARCHAR2(30 BYTE) NULL ,
"OPTIMIZER" VARCHAR2(255 BYTE) NULL ,
"SEARCH_COLUMNS" NUMBER NULL ,
"ID" NUMBER NULL ,
"PARENT_ID" NUMBER NULL ,
"POSITION" NUMBER NULL ,
"COST" NUMBER NULL ,
"CARDINALITY" NUMBER NULL ,
"BYTES" NUMBER NULL ,
"OTHER_TAG" VARCHAR2(255 BYTE) NULL ,
"PARTITION_START" VARCHAR2(255 BYTE) NULL ,
"PARTITION_STOP" VARCHAR2(255 BYTE) NULL ,
"PARTITION_ID" NUMBER NULL ,
"OTHER" LONG NULL ,
"DISTRIBUTION" VARCHAR2(30 BYTE) NULL ,
"CPU_COST" NUMBER NULL ,
"IO_COST" NUMBER NULL ,
"TEMP_SPACE" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_PLAN" IS 'Private plan table for estimate_mview_size operations';

-- ----------------------------
-- Records of MVIEW$_ADV_PLAN
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."MVIEW$_ADV_PRETTY"
-- ----------------------------
DROP TABLE "SYSTEM"."MVIEW$_ADV_PRETTY";
CREATE TABLE "SYSTEM"."MVIEW$_ADV_PRETTY" (
"QUERYID#" NUMBER NULL ,
"SQL_TEXT" LONG NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_PRETTY" IS 'Table for sql parsing';

-- ----------------------------
-- Records of MVIEW$_ADV_PRETTY
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."MVIEW$_ADV_ROLLUP"
-- ----------------------------
DROP TABLE "SYSTEM"."MVIEW$_ADV_ROLLUP";
CREATE TABLE "SYSTEM"."MVIEW$_ADV_ROLLUP" (
"RUNID#" NUMBER NOT NULL ,
"CLEVELID#" NUMBER NOT NULL ,
"PLEVELID#" NUMBER NOT NULL ,
"FLAGS" NUMBER NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_ROLLUP" IS 'Each row repesents either a functional dependency or join-key relationship';

-- ----------------------------
-- Records of MVIEW$_ADV_ROLLUP
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."MVIEW$_ADV_SQLDEPEND"
-- ----------------------------
DROP TABLE "SYSTEM"."MVIEW$_ADV_SQLDEPEND";
CREATE TABLE "SYSTEM"."MVIEW$_ADV_SQLDEPEND" (
"COLLECTIONID#" NUMBER NULL ,
"INST_ID" NUMBER NULL ,
"FROM_ADDRESS" RAW(16) NULL ,
"FROM_HASH" NUMBER NULL ,
"TO_OWNER" VARCHAR2(64 BYTE) NULL ,
"TO_NAME" VARCHAR2(1000 BYTE) NULL ,
"TO_TYPE" NUMBER NULL ,
"CARDINALITY" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_SQLDEPEND" IS 'Temporary table for workload collections';

-- ----------------------------
-- Records of MVIEW$_ADV_SQLDEPEND
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."MVIEW$_ADV_TEMP"
-- ----------------------------
DROP TABLE "SYSTEM"."MVIEW$_ADV_TEMP";
CREATE TABLE "SYSTEM"."MVIEW$_ADV_TEMP" (
"ID#" NUMBER NULL ,
"SEQ#" NUMBER NULL ,
"TEXT" LONG NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_TEMP" IS 'Table for temporary data';

-- ----------------------------
-- Records of MVIEW$_ADV_TEMP
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."MVIEW$_ADV_WORKLOAD"
-- ----------------------------
DROP TABLE "SYSTEM"."MVIEW$_ADV_WORKLOAD";
CREATE TABLE "SYSTEM"."MVIEW$_ADV_WORKLOAD" (
"QUERYID#" NUMBER NOT NULL ,
"COLLECTIONID#" NUMBER NOT NULL ,
"COLLECTTIME" DATE NOT NULL ,
"APPLICATION" VARCHAR2(64 BYTE) NULL ,
"CARDINALITY" NUMBER NULL ,
"RESULTSIZE" NUMBER NULL ,
"UNAME" VARCHAR2(30 BYTE) NOT NULL ,
"QDATE" DATE NULL ,
"PRIORITY" NUMBER NULL ,
"EXEC_TIME" NUMBER NULL ,
"SQL_TEXT" LONG NOT NULL ,
"SQL_TEXTLEN" NUMBER NOT NULL ,
"SQL_HASH" NUMBER NULL ,
"SQL_ADDR" RAW(16) NULL ,
"FREQUENCY" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."MVIEW$_ADV_WORKLOAD" IS 'Shared workload repository for DBA users of summary advisor';

-- ----------------------------
-- Records of MVIEW$_ADV_WORKLOAD
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."NUMBERS"
-- ----------------------------
DROP TABLE "SYSTEM"."NUMBERS";
CREATE TABLE "SYSTEM"."NUMBERS" (
"NUM" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of NUMBERS
-- ----------------------------
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('45');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('34');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('31');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('19');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('18');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('14');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('33');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('23');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('50');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('33');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('38');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('35');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('7');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('15');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('47');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('8');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('43');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('26');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('43');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('25');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('27');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('38');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('50');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('1');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('1');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('32');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('35');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('35');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('26');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('40');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('38');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('2');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('3');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('10');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('26');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('9');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('27');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('37');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('47');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('20');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('48');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('4');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('30');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('2');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('49');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('13');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('26');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('11');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('24');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('26');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('47');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('30');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('1');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('11');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('2');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('29');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('40');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('10');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('13');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('26');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('49');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('31');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('14');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('50');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('43');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('36');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('15');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('16');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('26');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('33');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('9');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('39');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('8');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('42');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('14');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('41');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('14');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('23');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('13');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('10');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('30');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('19');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('6');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('13');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('46');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('21');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('50');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('7');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('27');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('31');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('7');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('13');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('21');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('37');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('47');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('31');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('28');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('46');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('4');
INSERT INTO "SYSTEM"."NUMBERS" VALUES ('26');

-- ----------------------------
-- Table structure for "SYSTEM"."OL$"
-- ----------------------------
DROP TABLE "SYSTEM"."OL$";
CREATE TABLE "SYSTEM"."OL$" (
"OL_NAME" VARCHAR2(30 BYTE) NULL ,
"SQL_TEXT" LONG NULL ,
"TEXTLEN" NUMBER NULL ,
"SIGNATURE" RAW(16) NULL ,
"HASH_VALUE" NUMBER NULL ,
"HASH_VALUE2" NUMBER NULL ,
"CATEGORY" VARCHAR2(30 BYTE) NULL ,
"VERSION" VARCHAR2(64 BYTE) NULL ,
"CREATOR" VARCHAR2(30 BYTE) NULL ,
"TIMESTAMP" DATE NULL ,
"FLAGS" NUMBER NULL ,
"HINTCOUNT" NUMBER NULL ,
"SPARE1" NUMBER NULL ,
"SPARE2" VARCHAR2(1000 BYTE) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of OL$
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."OL$HINTS"
-- ----------------------------
DROP TABLE "SYSTEM"."OL$HINTS";
CREATE TABLE "SYSTEM"."OL$HINTS" (
"OL_NAME" VARCHAR2(30 BYTE) NULL ,
"HINT#" NUMBER NULL ,
"CATEGORY" VARCHAR2(30 BYTE) NULL ,
"HINT_TYPE" NUMBER NULL ,
"HINT_TEXT" VARCHAR2(512 BYTE) NULL ,
"STAGE#" NUMBER NULL ,
"NODE#" NUMBER NULL ,
"TABLE_NAME" VARCHAR2(30 BYTE) NULL ,
"TABLE_TIN" NUMBER NULL ,
"TABLE_POS" NUMBER NULL ,
"REF_ID" NUMBER NULL ,
"USER_TABLE_NAME" VARCHAR2(64 BYTE) NULL ,
"COST" FLOAT(126) NULL ,
"CARDINALITY" FLOAT(126) NULL ,
"BYTES" FLOAT(126) NULL ,
"HINT_TEXTOFF" NUMBER NULL ,
"HINT_TEXTLEN" NUMBER NULL ,
"JOIN_PRED" VARCHAR2(2000 BYTE) NULL ,
"SPARE1" NUMBER NULL ,
"SPARE2" NUMBER NULL ,
"HINT_STRING" CLOB NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of OL$HINTS
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."OL$NODES"
-- ----------------------------
DROP TABLE "SYSTEM"."OL$NODES";
CREATE TABLE "SYSTEM"."OL$NODES" (
"OL_NAME" VARCHAR2(30 BYTE) NULL ,
"CATEGORY" VARCHAR2(30 BYTE) NULL ,
"NODE_ID" NUMBER NULL ,
"PARENT_ID" NUMBER NULL ,
"NODE_TYPE" NUMBER NULL ,
"NODE_TEXTLEN" NUMBER NULL ,
"NODE_TEXTOFF" NUMBER NULL ,
"NODE_NAME" VARCHAR2(64 BYTE) NULL 
)
NOLOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of OL$NODES
-- ----------------------------

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
-- Table structure for "SYSTEM"."REPCAT$_AUDIT_ATTRIBUTE"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_AUDIT_ATTRIBUTE";
CREATE TABLE "SYSTEM"."REPCAT$_AUDIT_ATTRIBUTE" (
"ATTRIBUTE" VARCHAR2(30 BYTE) NOT NULL ,
"DATA_TYPE_ID" NUMBER NOT NULL ,
"DATA_LENGTH" NUMBER NULL ,
"SOURCE" VARCHAR2(92 BYTE) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."REPCAT$_AUDIT_ATTRIBUTE" IS 'Information about attributes automatically maintained for replication';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_AUDIT_ATTRIBUTE"."ATTRIBUTE" IS 'Description of the attribute';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_AUDIT_ATTRIBUTE"."DATA_TYPE_ID" IS 'Datatype of the attribute value';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_AUDIT_ATTRIBUTE"."DATA_LENGTH" IS 'Length of the attribute value in byte';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_AUDIT_ATTRIBUTE"."SOURCE" IS 'Name of the function which returns the attribute value';

-- ----------------------------
-- Records of REPCAT$_AUDIT_ATTRIBUTE
-- ----------------------------
INSERT INTO "SYSTEM"."REPCAT$_AUDIT_ATTRIBUTE" VALUES ('TIMESTAMP', '3', null, 'SYSDATE');
INSERT INTO "SYSTEM"."REPCAT$_AUDIT_ATTRIBUTE" VALUES ('GLOBAL NAME', '2', '128', 'DBMS_REPUTIL.GLOBAL_NAME');

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_AUDIT_COLUMN"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_AUDIT_COLUMN";
CREATE TABLE "SYSTEM"."REPCAT$_AUDIT_COLUMN" (
"SNAME" VARCHAR2(30 BYTE) NOT NULL ,
"ONAME" VARCHAR2(30 BYTE) NOT NULL ,
"COLUMN_NAME" VARCHAR2(30 BYTE) NOT NULL ,
"BASE_SNAME" VARCHAR2(30 BYTE) NOT NULL ,
"BASE_ONAME" VARCHAR2(30 BYTE) NOT NULL ,
"BASE_CONFLICT_TYPE_ID" NUMBER NOT NULL ,
"BASE_REFERENCE_NAME" VARCHAR2(30 BYTE) NOT NULL ,
"ATTRIBUTE" VARCHAR2(30 BYTE) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."REPCAT$_AUDIT_COLUMN" IS 'Information about columns in all shadow tables for all replicated tables in the database';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_AUDIT_COLUMN"."SNAME" IS 'Owner of the shadow table';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_AUDIT_COLUMN"."ONAME" IS 'Name of the shadow table';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_AUDIT_COLUMN"."COLUMN_NAME" IS 'Name of the column in the shadow table';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_AUDIT_COLUMN"."BASE_SNAME" IS 'Owner of replicated table';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_AUDIT_COLUMN"."BASE_ONAME" IS 'Name of the replicated table';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_AUDIT_COLUMN"."BASE_CONFLICT_TYPE_ID" IS 'Type of conflict';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_AUDIT_COLUMN"."BASE_REFERENCE_NAME" IS 'Table name, unique constraint name, or column group name';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_AUDIT_COLUMN"."ATTRIBUTE" IS 'Description of the attribute';

-- ----------------------------
-- Records of REPCAT$_AUDIT_COLUMN
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_COLUMN_GROUP"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_COLUMN_GROUP";
CREATE TABLE "SYSTEM"."REPCAT$_COLUMN_GROUP" (
"SNAME" VARCHAR2(30 BYTE) NOT NULL ,
"ONAME" VARCHAR2(30 BYTE) NOT NULL ,
"GROUP_NAME" VARCHAR2(30 BYTE) NOT NULL ,
"GROUP_COMMENT" VARCHAR2(80 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."REPCAT$_COLUMN_GROUP" IS 'All column groups of replicated tables in the database';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_COLUMN_GROUP"."SNAME" IS 'Owner of replicated object';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_COLUMN_GROUP"."ONAME" IS 'Name of the replicated object';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_COLUMN_GROUP"."GROUP_NAME" IS 'Name of the column group';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_COLUMN_GROUP"."GROUP_COMMENT" IS 'Description of the column group';

-- ----------------------------
-- Records of REPCAT$_COLUMN_GROUP
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_CONFLICT"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_CONFLICT";
CREATE TABLE "SYSTEM"."REPCAT$_CONFLICT" (
"SNAME" VARCHAR2(30 BYTE) NOT NULL ,
"ONAME" VARCHAR2(30 BYTE) NOT NULL ,
"CONFLICT_TYPE_ID" NUMBER NOT NULL ,
"REFERENCE_NAME" VARCHAR2(30 BYTE) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."REPCAT$_CONFLICT" IS 'All conflicts for which users have specified resolutions in the database';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_CONFLICT"."SNAME" IS 'Owner of replicated object';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_CONFLICT"."ONAME" IS 'Name of the replicated object';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_CONFLICT"."CONFLICT_TYPE_ID" IS 'Type of conflict';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_CONFLICT"."REFERENCE_NAME" IS 'Table name, unique constraint name, or column group name';

-- ----------------------------
-- Records of REPCAT$_CONFLICT
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_DDL"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_DDL";
CREATE TABLE "SYSTEM"."REPCAT$_DDL" (
"LOG_ID" NUMBER NULL ,
"SOURCE" VARCHAR2(128 BYTE) NULL ,
"ROLE" VARCHAR2(1 BYTE) NULL ,
"MASTER" VARCHAR2(128 BYTE) NULL ,
"LINE" NUMBER NULL ,
"TEXT" VARCHAR2(2000 BYTE) NULL ,
"DDL_NUM" NUMBER DEFAULT 1       -- order of ddls to execute  NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."REPCAT$_DDL" IS 'Arguments that do not fit in a single repcat log record';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_DDL"."LOG_ID" IS 'Identifying number of the repcat log record';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_DDL"."SOURCE" IS 'Name of the database at which the request originated';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_DDL"."ROLE" IS 'Is this database the masterdef for the request';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_DDL"."MASTER" IS 'Name of the database that processes this request';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_DDL"."LINE" IS 'Ordering of records within a single request';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_DDL"."TEXT" IS 'Portion of an argument';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_DDL"."DDL_NUM" IS 'Ordering of DDLs to execute';

-- ----------------------------
-- Records of REPCAT$_DDL
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_EXCEPTIONS"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_EXCEPTIONS";
CREATE TABLE "SYSTEM"."REPCAT$_EXCEPTIONS" (
"EXCEPTION_ID" NUMBER NOT NULL ,
"USER_NAME" VARCHAR2(30 BYTE) NULL ,
"REQUEST" CLOB NULL ,
"JOB" NUMBER NULL ,
"ERROR_DATE" DATE NULL ,
"ERROR_NUMBER" NUMBER NULL ,
"ERROR_MESSAGE" VARCHAR2(4000 BYTE) NULL ,
"LINE_NUMBER" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."REPCAT$_EXCEPTIONS" IS 'Repcat processing exceptions table.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_EXCEPTIONS"."EXCEPTION_ID" IS 'Internal primary key of the exceptions table.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_EXCEPTIONS"."USER_NAME" IS 'User name of user submitting the exception.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_EXCEPTIONS"."REQUEST" IS 'Originating request containing the exception.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_EXCEPTIONS"."JOB" IS 'Originating job containing the exception.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_EXCEPTIONS"."ERROR_DATE" IS 'Date of occurance for the exception.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_EXCEPTIONS"."ERROR_NUMBER" IS 'Error number generating the exception.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_EXCEPTIONS"."ERROR_MESSAGE" IS 'Error message associated with the error generating the exception.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_EXCEPTIONS"."LINE_NUMBER" IS 'Line number of the exception.';

-- ----------------------------
-- Records of REPCAT$_EXCEPTIONS
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_EXTENSION"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_EXTENSION";
CREATE TABLE "SYSTEM"."REPCAT$_EXTENSION" (
"EXTENSION_ID" RAW(16) NOT NULL ,
"EXTENSION_CODE" NUMBER NULL ,
"MASTERDEF" VARCHAR2(128 BYTE) NULL ,
"EXPORT_REQUIRED" VARCHAR2(1 BYTE) NULL ,
"REPCATLOG_ID" NUMBER NULL ,
"EXTENSION_STATUS" NUMBER NULL ,
"FLASHBACK_SCN" NUMBER NULL ,
"PUSH_TO_MDEF" VARCHAR2(1 BYTE) NULL ,
"PUSH_TO_NEW" VARCHAR2(1 BYTE) NULL ,
"PERCENTAGE_FOR_CATCHUP_MDEF" NUMBER NULL ,
"CYCLE_SECONDS_MDEF" NUMBER NULL ,
"PERCENTAGE_FOR_CATCHUP_NEW" NUMBER NULL ,
"CYCLE_SECONDS_NEW" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."REPCAT$_EXTENSION" IS 'Information about replication extension requests';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_EXTENSION"."EXTENSION_ID" IS 'Globally unique identifier for replication extension';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_EXTENSION"."EXTENSION_CODE" IS 'Kind of replication extension';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_EXTENSION"."MASTERDEF" IS 'Master definition site for replication extension';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_EXTENSION"."EXPORT_REQUIRED" IS 'YES if this extension requires an export, and NO if no export is required';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_EXTENSION"."REPCATLOG_ID" IS 'Identifier of repcatlog records related to replication extension';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_EXTENSION"."EXTENSION_STATUS" IS 'Status of replication extension';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_EXTENSION"."FLASHBACK_SCN" IS 'Flashback_scn for export or change-based recovery for replication extension';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_EXTENSION"."PUSH_TO_MDEF" IS 'YES if existing masters partially push to masterdef, NO if no pushing';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_EXTENSION"."PUSH_TO_NEW" IS 'YES if existing masters partially push to new masters, NO if no pushing';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_EXTENSION"."PERCENTAGE_FOR_CATCHUP_MDEF" IS 'Fraction of push to masterdef cycle devoted to catching up';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_EXTENSION"."CYCLE_SECONDS_MDEF" IS 'Length of push to masterdef cycle when catching up';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_EXTENSION"."PERCENTAGE_FOR_CATCHUP_NEW" IS 'Fraction of push to new masters cycle devoted to catching up';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_EXTENSION"."CYCLE_SECONDS_NEW" IS 'Length of push to new masters cycle when catching up';

-- ----------------------------
-- Records of REPCAT$_EXTENSION
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_FLAVOR_OBJECTS"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_FLAVOR_OBJECTS";
CREATE TABLE "SYSTEM"."REPCAT$_FLAVOR_OBJECTS" (
"FLAVOR_ID" NUMBER NOT NULL ,
"GOWNER" VARCHAR2(30 BYTE) DEFAULT 'PUBLIC'  NOT NULL ,
"GNAME" VARCHAR2(30 BYTE) NOT NULL ,
"SNAME" VARCHAR2(30 BYTE) NOT NULL ,
"ONAME" VARCHAR2(30 BYTE) NOT NULL ,
"TYPE" NUMBER NOT NULL ,
"VERSION#" NUMBER NULL ,
"HASHCODE" RAW(17) NULL ,
"COLUMNS_PRESENT" RAW(125) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."REPCAT$_FLAVOR_OBJECTS" IS 'Replicated objects in flavors';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_FLAVOR_OBJECTS"."FLAVOR_ID" IS 'Flavor identifier';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_FLAVOR_OBJECTS"."GOWNER" IS 'Owner of the object group containing object';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_FLAVOR_OBJECTS"."GNAME" IS 'Object group containing object';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_FLAVOR_OBJECTS"."SNAME" IS 'Schema containing object';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_FLAVOR_OBJECTS"."ONAME" IS 'Name of object';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_FLAVOR_OBJECTS"."TYPE" IS 'Object type';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_FLAVOR_OBJECTS"."VERSION#" IS 'Version# of a user-defined type';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_FLAVOR_OBJECTS"."HASHCODE" IS 'Hashcode of a user-defined type';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_FLAVOR_OBJECTS"."COLUMNS_PRESENT" IS 'For tables, encoded mapping of columns present';

-- ----------------------------
-- Records of REPCAT$_FLAVOR_OBJECTS
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_FLAVORS"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_FLAVORS";
CREATE TABLE "SYSTEM"."REPCAT$_FLAVORS" (
"FLAVOR_ID" NUMBER NOT NULL ,
"GOWNER" VARCHAR2(30 BYTE) DEFAULT 'PUBLIC'  NULL ,
"GNAME" VARCHAR2(30 BYTE) NOT NULL ,
"FNAME" VARCHAR2(30 BYTE) NULL ,
"CREATION_DATE" DATE DEFAULT SYSDATE  NULL ,
"CREATED_BY" NUMBER DEFAULT UID  NULL ,
"PUBLISHED" VARCHAR2(1 BYTE) DEFAULT 'N'  NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."REPCAT$_FLAVORS" IS 'Flavors defined for replicated object groups';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_FLAVORS"."FLAVOR_ID" IS 'Flavor identifier, unique within object group';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_FLAVORS"."GOWNER" IS 'Owner of the object group';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_FLAVORS"."GNAME" IS 'Name of the object group';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_FLAVORS"."FNAME" IS 'Name of the flavor';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_FLAVORS"."CREATION_DATE" IS 'Date on which the flavor was created';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_FLAVORS"."CREATED_BY" IS 'Identifier of user that created the flavor';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_FLAVORS"."PUBLISHED" IS 'Indicates whether flavor is published (Y/N) or obsolete (O)';

-- ----------------------------
-- Records of REPCAT$_FLAVORS
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_GENERATED"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_GENERATED";
CREATE TABLE "SYSTEM"."REPCAT$_GENERATED" (
"SNAME" VARCHAR2(30 BYTE) NOT NULL ,
"ONAME" VARCHAR2(30 BYTE) NOT NULL ,
"TYPE" NUMBER NOT NULL ,
"REASON" NUMBER NULL ,
"BASE_SNAME" VARCHAR2(30 BYTE) NOT NULL ,
"BASE_ONAME" VARCHAR2(30 BYTE) NOT NULL ,
"BASE_TYPE" NUMBER NOT NULL ,
"PACKAGE_PREFIX" VARCHAR2(30 BYTE) NULL ,
"PROCEDURE_PREFIX" VARCHAR2(30 BYTE) NULL ,
"DISTRIBUTED" VARCHAR2(1 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."REPCAT$_GENERATED" IS 'Objects generated to support replication';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_GENERATED"."SNAME" IS 'Schema containing the generated object';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_GENERATED"."ONAME" IS 'Name of the generated object';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_GENERATED"."TYPE" IS 'Type of the generated object';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_GENERATED"."REASON" IS 'Reason the object was generated';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_GENERATED"."BASE_SNAME" IS 'Name of the object''s owner';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_GENERATED"."BASE_ONAME" IS 'Name of the object';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_GENERATED"."BASE_TYPE" IS 'Type of the object';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_GENERATED"."PACKAGE_PREFIX" IS 'Prefix for package wrapper';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_GENERATED"."PROCEDURE_PREFIX" IS 'Procedure prefix for package wrapper or procedure wrapper';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_GENERATED"."DISTRIBUTED" IS 'Is the generated object separately generated at each master';

-- ----------------------------
-- Records of REPCAT$_GENERATED
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_GROUPED_COLUMN"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_GROUPED_COLUMN";
CREATE TABLE "SYSTEM"."REPCAT$_GROUPED_COLUMN" (
"SNAME" VARCHAR2(30 BYTE) NOT NULL ,
"ONAME" VARCHAR2(30 BYTE) NOT NULL ,
"GROUP_NAME" VARCHAR2(30 BYTE) NOT NULL ,
"COLUMN_NAME" VARCHAR2(30 BYTE) NOT NULL ,
"POS" NUMBER NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."REPCAT$_GROUPED_COLUMN" IS 'Columns in all column groups of replicated tables in the database';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_GROUPED_COLUMN"."SNAME" IS 'Owner of replicated object';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_GROUPED_COLUMN"."ONAME" IS 'Name of the replicated object';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_GROUPED_COLUMN"."GROUP_NAME" IS 'Name of the column group';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_GROUPED_COLUMN"."COLUMN_NAME" IS 'Name of the column in the column group';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_GROUPED_COLUMN"."POS" IS 'Position of a column or an attribute in the table';

-- ----------------------------
-- Records of REPCAT$_GROUPED_COLUMN
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_INSTANTIATION_DDL"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_INSTANTIATION_DDL";
CREATE TABLE "SYSTEM"."REPCAT$_INSTANTIATION_DDL" (
"REFRESH_TEMPLATE_ID" NUMBER NOT NULL ,
"DDL_TEXT" CLOB NULL ,
"DDL_NUM" NUMBER NOT NULL ,
"PHASE" NUMBER NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."REPCAT$_INSTANTIATION_DDL" IS 'Table containing supplementary DDL to be executed during instantiation.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_INSTANTIATION_DDL"."REFRESH_TEMPLATE_ID" IS 'Primary key of template containing supplementary DDL.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_INSTANTIATION_DDL"."DDL_TEXT" IS 'Supplementary DDL string.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_INSTANTIATION_DDL"."DDL_NUM" IS 'Column for ordering of supplementary DDL.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_INSTANTIATION_DDL"."PHASE" IS 'Phase to execute the DDL string.';

-- ----------------------------
-- Records of REPCAT$_INSTANTIATION_DDL
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_KEY_COLUMNS"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_KEY_COLUMNS";
CREATE TABLE "SYSTEM"."REPCAT$_KEY_COLUMNS" (
"SNAME" VARCHAR2(30 BYTE) NOT NULL ,
"ONAME" VARCHAR2(30 BYTE) NOT NULL ,
"TYPE" NUMBER NULL ,
"COL" VARCHAR2(30 BYTE) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."REPCAT$_KEY_COLUMNS" IS 'Primary columns for a table using column-level replication';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_KEY_COLUMNS"."SNAME" IS 'Schema containing table';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_KEY_COLUMNS"."ONAME" IS 'Name of the table';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_KEY_COLUMNS"."TYPE" IS 'Type identifier';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_KEY_COLUMNS"."COL" IS 'Column in the table';

-- ----------------------------
-- Records of REPCAT$_KEY_COLUMNS
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_OBJECT_PARMS"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_OBJECT_PARMS";
CREATE TABLE "SYSTEM"."REPCAT$_OBJECT_PARMS" (
"TEMPLATE_PARAMETER_ID" NUMBER NOT NULL ,
"TEMPLATE_OBJECT_ID" NUMBER NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN "SYSTEM"."REPCAT$_OBJECT_PARMS"."TEMPLATE_PARAMETER_ID" IS 'Primary key of template parameter.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_OBJECT_PARMS"."TEMPLATE_OBJECT_ID" IS 'Primary key of object using the paramter.';

-- ----------------------------
-- Records of REPCAT$_OBJECT_PARMS
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_OBJECT_TYPES"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_OBJECT_TYPES";
CREATE TABLE "SYSTEM"."REPCAT$_OBJECT_TYPES" (
"OBJECT_TYPE_ID" NUMBER NOT NULL ,
"OBJECT_TYPE_NAME" VARCHAR2(200 BYTE) NULL ,
"FLAGS" RAW(255) NULL ,
"SPARE1" VARCHAR2(4000 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."REPCAT$_OBJECT_TYPES" IS 'Internal table for template object types.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_OBJECT_TYPES"."OBJECT_TYPE_ID" IS 'Internal primary key of the template object types table.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_OBJECT_TYPES"."OBJECT_TYPE_NAME" IS 'Descriptive name for the object type.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_OBJECT_TYPES"."FLAGS" IS 'Internal flags for object type processing.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_OBJECT_TYPES"."SPARE1" IS 'Reserved for future use.';

-- ----------------------------
-- Records of REPCAT$_OBJECT_TYPES
-- ----------------------------
INSERT INTO "SYSTEM"."REPCAT$_OBJECT_TYPES" VALUES ('-1017', 'GENERATED DDL', HexToRaw('02'), null);
INSERT INTO "SYSTEM"."REPCAT$_OBJECT_TYPES" VALUES ('-1016', 'DUMMY MATERIALIZED VIEW', HexToRaw('02'), null);
INSERT INTO "SYSTEM"."REPCAT$_OBJECT_TYPES" VALUES ('-1015', 'UPDATABLE MATERIALIZED VIEW LOG', HexToRaw('02'), null);
INSERT INTO "SYSTEM"."REPCAT$_OBJECT_TYPES" VALUES ('-1014', 'REFRESH GROUP', HexToRaw('02'), null);
INSERT INTO "SYSTEM"."REPCAT$_OBJECT_TYPES" VALUES ('-1013', 'SYNCHRONOUS MASTER REPGROUP', HexToRaw('02'), null);
INSERT INTO "SYSTEM"."REPCAT$_OBJECT_TYPES" VALUES ('-1012', 'ASYNCHRONOUS MASTER REPGROUP', HexToRaw('02'), null);
INSERT INTO "SYSTEM"."REPCAT$_OBJECT_TYPES" VALUES ('-1011', 'TEMPORARY TABLE', HexToRaw('02'), null);
INSERT INTO "SYSTEM"."REPCAT$_OBJECT_TYPES" VALUES ('-1005', 'SYNCHRONOUS UPDATABLE TABLE', HexToRaw('02'), null);
INSERT INTO "SYSTEM"."REPCAT$_OBJECT_TYPES" VALUES ('-1004', 'ASYNCHRONOUS UPDATABLE TABLE', HexToRaw('00'), null);
INSERT INTO "SYSTEM"."REPCAT$_OBJECT_TYPES" VALUES ('-1003', 'READ ONLY TABLE', HexToRaw('02'), null);
INSERT INTO "SYSTEM"."REPCAT$_OBJECT_TYPES" VALUES ('-1002', 'SITEOWNER', HexToRaw('02'), null);
INSERT INTO "SYSTEM"."REPCAT$_OBJECT_TYPES" VALUES ('-1001', 'USER', HexToRaw('02'), null);
INSERT INTO "SYSTEM"."REPCAT$_OBJECT_TYPES" VALUES ('-5', 'DATABASE LINK', HexToRaw('01'), null);
INSERT INTO "SYSTEM"."REPCAT$_OBJECT_TYPES" VALUES ('-1', 'MATERIALIZED VIEW', HexToRaw('01'), null);
INSERT INTO "SYSTEM"."REPCAT$_OBJECT_TYPES" VALUES ('1', 'INDEX', HexToRaw('01'), null);
INSERT INTO "SYSTEM"."REPCAT$_OBJECT_TYPES" VALUES ('2', 'TABLE', HexToRaw('01'), null);
INSERT INTO "SYSTEM"."REPCAT$_OBJECT_TYPES" VALUES ('4', 'VIEW', HexToRaw('03'), null);
INSERT INTO "SYSTEM"."REPCAT$_OBJECT_TYPES" VALUES ('5', 'SYNONYM', HexToRaw('01'), null);
INSERT INTO "SYSTEM"."REPCAT$_OBJECT_TYPES" VALUES ('6', 'SEQUENCE', HexToRaw('03'), null);
INSERT INTO "SYSTEM"."REPCAT$_OBJECT_TYPES" VALUES ('7', 'PROCEDURE', HexToRaw('03'), null);
INSERT INTO "SYSTEM"."REPCAT$_OBJECT_TYPES" VALUES ('8', 'FUNCTION', HexToRaw('03'), null);
INSERT INTO "SYSTEM"."REPCAT$_OBJECT_TYPES" VALUES ('9', 'PACKAGE', HexToRaw('03'), null);
INSERT INTO "SYSTEM"."REPCAT$_OBJECT_TYPES" VALUES ('10', 'PACKAGE BODY', HexToRaw('01'), null);
INSERT INTO "SYSTEM"."REPCAT$_OBJECT_TYPES" VALUES ('12', 'TRIGGER', HexToRaw('01'), null);
INSERT INTO "SYSTEM"."REPCAT$_OBJECT_TYPES" VALUES ('13', 'TYPE', HexToRaw('03'), null);
INSERT INTO "SYSTEM"."REPCAT$_OBJECT_TYPES" VALUES ('14', 'TYPE BODY', HexToRaw('01'), null);
INSERT INTO "SYSTEM"."REPCAT$_OBJECT_TYPES" VALUES ('32', 'INDEX TYPE', HexToRaw('01'), null);
INSERT INTO "SYSTEM"."REPCAT$_OBJECT_TYPES" VALUES ('33', 'OPERATOR', HexToRaw('01'), null);

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_PARAMETER_COLUMN"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_PARAMETER_COLUMN";
CREATE TABLE "SYSTEM"."REPCAT$_PARAMETER_COLUMN" (
"SNAME" VARCHAR2(30 BYTE) NOT NULL ,
"ONAME" VARCHAR2(30 BYTE) NOT NULL ,
"CONFLICT_TYPE_ID" NUMBER NOT NULL ,
"REFERENCE_NAME" VARCHAR2(30 BYTE) NOT NULL ,
"SEQUENCE_NO" NUMBER NOT NULL ,
"PARAMETER_TABLE_NAME" VARCHAR2(30 BYTE) NOT NULL ,
"PARAMETER_COLUMN_NAME" VARCHAR2(4000 BYTE) NULL ,
"PARAMETER_SEQUENCE_NO" NUMBER NOT NULL ,
"COLUMN_POS" NUMBER NOT NULL ,
"ATTRIBUTE_SEQUENCE_NO" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."REPCAT$_PARAMETER_COLUMN" IS 'All columns used for resolving conflicts in the database';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_PARAMETER_COLUMN"."SNAME" IS 'Owner of replicated object';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_PARAMETER_COLUMN"."ONAME" IS 'Name of the replicated object';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_PARAMETER_COLUMN"."CONFLICT_TYPE_ID" IS 'Type of conflict';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_PARAMETER_COLUMN"."REFERENCE_NAME" IS 'Table name, unique constraint name, or column group name';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_PARAMETER_COLUMN"."SEQUENCE_NO" IS 'Ordering on resolution';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_PARAMETER_COLUMN"."PARAMETER_TABLE_NAME" IS 'Name of the table to which the parameter column belongs';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_PARAMETER_COLUMN"."PARAMETER_COLUMN_NAME" IS 'Name of the parameter column used for resolving the conflict';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_PARAMETER_COLUMN"."PARAMETER_SEQUENCE_NO" IS 'Ordering on parameter column';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_PARAMETER_COLUMN"."COLUMN_POS" IS 'Column position of an attribute or a column';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_PARAMETER_COLUMN"."ATTRIBUTE_SEQUENCE_NO" IS 'Sequence number for an attribute of an ADT/pkREF column or a scalar column';

-- ----------------------------
-- Records of REPCAT$_PARAMETER_COLUMN
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_PRIORITY"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_PRIORITY";
CREATE TABLE "SYSTEM"."REPCAT$_PRIORITY" (
"SNAME" VARCHAR2(30 BYTE) NOT NULL ,
"PRIORITY_GROUP" VARCHAR2(30 BYTE) NOT NULL ,
"PRIORITY" NUMBER NOT NULL ,
"RAW_VALUE" RAW(2000) NULL ,
"CHAR_VALUE" CHAR(255 BYTE) NULL ,
"NUMBER_VALUE" NUMBER NULL ,
"DATE_VALUE" DATE NULL ,
"VARCHAR2_VALUE" VARCHAR2(4000 BYTE) NULL ,
"NCHAR_VALUE" NCHAR(500) NULL ,
"NVARCHAR2_VALUE" NVARCHAR2(1000) NULL ,
"LARGE_CHAR_VALUE" CHAR(2000 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."REPCAT$_PRIORITY" IS 'Values and their corresponding priorities in all priority groups in the database';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_PRIORITY"."SNAME" IS 'Name of the replicated object group';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_PRIORITY"."PRIORITY_GROUP" IS 'Name of the priority group';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_PRIORITY"."PRIORITY" IS 'Priority of the value';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_PRIORITY"."RAW_VALUE" IS 'Raw value';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_PRIORITY"."CHAR_VALUE" IS 'Blank-padded character string';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_PRIORITY"."NUMBER_VALUE" IS 'Numeric value';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_PRIORITY"."DATE_VALUE" IS 'Date value';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_PRIORITY"."VARCHAR2_VALUE" IS 'Character string';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_PRIORITY"."NCHAR_VALUE" IS 'NCHAR string';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_PRIORITY"."NVARCHAR2_VALUE" IS 'NVARCHAR2 string';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_PRIORITY"."LARGE_CHAR_VALUE" IS 'Blank-padded character string over 255 characters';

-- ----------------------------
-- Records of REPCAT$_PRIORITY
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_PRIORITY_GROUP"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_PRIORITY_GROUP";
CREATE TABLE "SYSTEM"."REPCAT$_PRIORITY_GROUP" (
"SNAME" VARCHAR2(30 BYTE) NOT NULL ,
"PRIORITY_GROUP" VARCHAR2(30 BYTE) NOT NULL ,
"DATA_TYPE_ID" NUMBER NOT NULL ,
"FIXED_DATA_LENGTH" NUMBER NULL ,
"PRIORITY_COMMENT" VARCHAR2(80 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."REPCAT$_PRIORITY_GROUP" IS 'Information about all priority groups in the database';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_PRIORITY_GROUP"."SNAME" IS 'Name of the replicated object group';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_PRIORITY_GROUP"."PRIORITY_GROUP" IS 'Name of the priority group';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_PRIORITY_GROUP"."DATA_TYPE_ID" IS 'Datatype of the value in the priority group';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_PRIORITY_GROUP"."FIXED_DATA_LENGTH" IS 'Length of the value in bytes if the datatype is CHAR';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_PRIORITY_GROUP"."PRIORITY_COMMENT" IS 'Description of the priority group';

-- ----------------------------
-- Records of REPCAT$_PRIORITY_GROUP
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_REFRESH_TEMPLATES"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_REFRESH_TEMPLATES";
CREATE TABLE "SYSTEM"."REPCAT$_REFRESH_TEMPLATES" (
"REFRESH_TEMPLATE_ID" NUMBER NOT NULL ,
"OWNER" VARCHAR2(30 BYTE) NOT NULL ,
"REFRESH_GROUP_NAME" VARCHAR2(30 BYTE) NOT NULL ,
"REFRESH_TEMPLATE_NAME" VARCHAR2(30 BYTE) NOT NULL ,
"TEMPLATE_COMMENT" VARCHAR2(2000 BYTE) NULL ,
"PUBLIC_TEMPLATE" VARCHAR2(1 BYTE) NULL ,
"LAST_MODIFIED" DATE NULL ,
"MODIFIED_BY" NUMBER NULL ,
"CREATION_DATE" DATE NULL ,
"CREATED_BY" NUMBER NULL ,
"REFRESH_GROUP_ID" NUMBER DEFAULT 0  NOT NULL ,
"TEMPLATE_TYPE_ID" NUMBER DEFAULT 1  NOT NULL ,
"TEMPLATE_STATUS_ID" NUMBER DEFAULT 0  NOT NULL ,
"FLAGS" RAW(255) NULL ,
"SPARE1" VARCHAR2(4000 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."REPCAT$_REFRESH_TEMPLATES" IS 'Primary table containing deployment template information.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REFRESH_TEMPLATES"."REFRESH_TEMPLATE_ID" IS 'Internal primary key of the REPCAT$_REFRESH_TEMPLATES table.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REFRESH_TEMPLATES"."OWNER" IS 'Owner of the refresh group template.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REFRESH_TEMPLATES"."REFRESH_GROUP_NAME" IS 'Name of the refresh group to create during instantiation.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REFRESH_TEMPLATES"."REFRESH_TEMPLATE_NAME" IS 'Name of the refresh group template.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REFRESH_TEMPLATES"."TEMPLATE_COMMENT" IS 'Optional comment field for the refresh group template.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REFRESH_TEMPLATES"."PUBLIC_TEMPLATE" IS 'Flag specifying public template or private template.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REFRESH_TEMPLATES"."LAST_MODIFIED" IS 'Date the row was last modified.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REFRESH_TEMPLATES"."MODIFIED_BY" IS 'User id of the user that modified the row.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REFRESH_TEMPLATES"."CREATION_DATE" IS 'Date the row was created.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REFRESH_TEMPLATES"."CREATED_BY" IS 'User id of the user that created the row.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REFRESH_TEMPLATES"."REFRESH_GROUP_ID" IS 'Internal primary key to default refresh group for the template.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REFRESH_TEMPLATES"."TEMPLATE_TYPE_ID" IS 'Internal primary key to the template types.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REFRESH_TEMPLATES"."TEMPLATE_STATUS_ID" IS 'Internal primary key to the template status table.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REFRESH_TEMPLATES"."FLAGS" IS 'Internal flags for the template.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REFRESH_TEMPLATES"."SPARE1" IS 'Reserved for future use.';

-- ----------------------------
-- Records of REPCAT$_REFRESH_TEMPLATES
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_REPCAT"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_REPCAT";
CREATE TABLE "SYSTEM"."REPCAT$_REPCAT" (
"GOWNER" VARCHAR2(30 BYTE) DEFAULT 'PUBLIC'  NOT NULL ,
"SNAME" VARCHAR2(30 BYTE) NOT NULL ,
"MASTER" VARCHAR2(1 BYTE) NULL ,
"STATUS" NUMBER NULL ,
"SCHEMA_COMMENT" VARCHAR2(80 BYTE) NULL ,
"FLAVOR_ID" NUMBER NULL ,
"FLAG" RAW(4) DEFAULT '00000000'  NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."REPCAT$_REPCAT" IS 'Information about all replicated object groups';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCAT"."GOWNER" IS 'Owner of the object group';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCAT"."SNAME" IS 'Name of the replicated object group';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCAT"."MASTER" IS 'Is the site a master site for the replicated object group';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCAT"."STATUS" IS 'If the site is a master, the master''s status';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCAT"."SCHEMA_COMMENT" IS 'Description of the replicated object group';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCAT"."FLAVOR_ID" IS 'Flavor identifier';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCAT"."FLAG" IS 'Miscellaneous repgroup info';

-- ----------------------------
-- Records of REPCAT$_REPCAT
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_REPCATLOG"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_REPCATLOG";
CREATE TABLE "SYSTEM"."REPCAT$_REPCATLOG" (
"VERSION" NUMBER NULL ,
"ID" NUMBER NOT NULL ,
"SOURCE" VARCHAR2(128 BYTE) NOT NULL ,
"USERID" VARCHAR2(30 BYTE) NULL ,
"TIMESTAMP" DATE NULL ,
"ROLE" VARCHAR2(1 BYTE) NOT NULL ,
"MASTER" VARCHAR2(128 BYTE) NOT NULL ,
"SNAME" VARCHAR2(30 BYTE) NULL ,
"REQUEST" NUMBER NULL ,
"ONAME" VARCHAR2(30 BYTE) NULL ,
"TYPE" NUMBER NULL ,
"A_COMMENT" VARCHAR2(2000 BYTE) NULL ,
"BOOL_ARG" VARCHAR2(1 BYTE) NULL ,
"ANO_BOOL_ARG" VARCHAR2(1 BYTE) NULL ,
"INT_ARG" NUMBER NULL ,
"ANO_INT_ARG" NUMBER NULL ,
"LINES" NUMBER NULL ,
"STATUS" NUMBER NULL ,
"MESSAGE" VARCHAR2(200 BYTE) NULL ,
"ERRNUM" NUMBER NULL ,
"GNAME" VARCHAR2(30 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."REPCAT$_REPCATLOG" IS 'Information about asynchronous administration requests';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCATLOG"."VERSION" IS 'Version of the repcat log record';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCATLOG"."ID" IS 'Identifying number of repcat log record';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCATLOG"."SOURCE" IS 'Name of the database at which the request originated';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCATLOG"."USERID" IS 'Name of the user who submitted the request';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCATLOG"."TIMESTAMP" IS 'When the request was submitted';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCATLOG"."ROLE" IS 'Is this database the masterdef for the request';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCATLOG"."MASTER" IS 'Name of the database that processes this request$_ddl';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCATLOG"."SNAME" IS 'Schema of replicated object';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCATLOG"."REQUEST" IS 'Name of the requested operation';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCATLOG"."ONAME" IS 'Replicated object name, if applicable';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCATLOG"."TYPE" IS 'Type of replicated object, if applicable';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCATLOG"."A_COMMENT" IS 'Textual argument used for comments';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCATLOG"."BOOL_ARG" IS 'Boolean argument';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCATLOG"."ANO_BOOL_ARG" IS 'Another Boolean argument';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCATLOG"."INT_ARG" IS 'Integer argument';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCATLOG"."ANO_INT_ARG" IS 'Another integer argument';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCATLOG"."LINES" IS 'The number of rows in system.repcat$_ddl at the processing site';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCATLOG"."STATUS" IS 'Status of the request at this database';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCATLOG"."MESSAGE" IS 'Error message associated with processing the request';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCATLOG"."ERRNUM" IS 'Oracle error number associated with processing the request';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCATLOG"."GNAME" IS 'Name of the replicated object group';

-- ----------------------------
-- Records of REPCAT$_REPCATLOG
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_REPCOLUMN"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_REPCOLUMN";
CREATE TABLE "SYSTEM"."REPCAT$_REPCOLUMN" (
"SNAME" VARCHAR2(30 BYTE) NOT NULL ,
"ONAME" VARCHAR2(30 BYTE) NOT NULL ,
"TYPE" NUMBER NOT NULL ,
"CNAME" VARCHAR2(30 BYTE) NOT NULL ,
"LCNAME" VARCHAR2(4000 BYTE) NULL ,
"TOID" RAW(16) NULL ,
"VERSION#" NUMBER NULL ,
"HASHCODE" RAW(17) NULL ,
"CTYPE_NAME" VARCHAR2(30 BYTE) NULL ,
"CTYPE_OWNER" VARCHAR2(30 BYTE) NULL ,
"ID" NUMBER NULL ,
"POS" NUMBER NULL ,
"TOP" VARCHAR2(30 BYTE) NULL ,
"FLAG" RAW(2) DEFAULT '0000'  NULL ,
"CTYPE" NUMBER NULL ,
"LENGTH" NUMBER NULL ,
"PRECISION#" NUMBER NULL ,
"SCALE" NUMBER NULL ,
"NULL$" NUMBER NULL ,
"CHARSETID" NUMBER NULL ,
"CHARSETFORM" NUMBER NULL ,
"PROPERTY" RAW(4) DEFAULT '00000000'  NULL ,
"CLENGTH" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."REPCAT$_REPCOLUMN" IS 'Replicated columns for a table sorted alphabetically in ascending order';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCOLUMN"."SNAME" IS 'Name of the object owner';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCOLUMN"."ONAME" IS 'Name of the object';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCOLUMN"."TYPE" IS 'Type of the object';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCOLUMN"."CNAME" IS 'Column name';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCOLUMN"."LCNAME" IS 'Long column name';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCOLUMN"."TOID" IS 'Type object identifier of a user-defined type';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCOLUMN"."VERSION#" IS 'Version# of a column of user-defined type';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCOLUMN"."HASHCODE" IS 'Hashcode of a column of user-defined type';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCOLUMN"."ID" IS 'Column ID';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCOLUMN"."POS" IS 'Ordering of column used as IN parameter in the replication procedures';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCOLUMN"."TOP" IS 'Top column name for an attribute';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCOLUMN"."FLAG" IS 'Replication information about column';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCOLUMN"."CTYPE" IS 'Type of the column';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCOLUMN"."LENGTH" IS 'Length of the column in bytes';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCOLUMN"."PRECISION#" IS 'Length: decimal digits (NUMBER) or binary digits (FLOAT)';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCOLUMN"."SCALE" IS 'Digits to right of decimal point in a number';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCOLUMN"."NULL$" IS 'Does column allow NULL values?';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCOLUMN"."CHARSETID" IS 'Character set identifier';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCOLUMN"."CHARSETFORM" IS 'Character set form';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPCOLUMN"."CLENGTH" IS 'The maximum length of the column in characters';

-- ----------------------------
-- Records of REPCAT$_REPCOLUMN
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_REPGROUP_PRIVS"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_REPGROUP_PRIVS";
CREATE TABLE "SYSTEM"."REPCAT$_REPGROUP_PRIVS" (
"USERID" NUMBER NULL ,
"USERNAME" VARCHAR2(30 BYTE) NOT NULL ,
"GOWNER" VARCHAR2(30 BYTE) NULL ,
"GNAME" VARCHAR2(30 BYTE) NULL ,
"GLOBAL_FLAG" NUMBER NOT NULL ,
"CREATED" DATE NOT NULL ,
"PRIVILEGE" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."REPCAT$_REPGROUP_PRIVS" IS 'Information about users who are registered for object group privileges';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPGROUP_PRIVS"."USERID" IS 'OBSOLETE COLUMN: Identifying number of the user';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPGROUP_PRIVS"."USERNAME" IS 'Identifying name of the registered user';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPGROUP_PRIVS"."GOWNER" IS 'Owner of the replicated object group';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPGROUP_PRIVS"."GNAME" IS 'Name of the replicated object group';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPGROUP_PRIVS"."GLOBAL_FLAG" IS '1 if gname is NULL, 0 otherwise';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPGROUP_PRIVS"."CREATED" IS 'Registration date';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPGROUP_PRIVS"."PRIVILEGE" IS 'Registered privileges';

-- ----------------------------
-- Records of REPCAT$_REPGROUP_PRIVS
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_REPOBJECT"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_REPOBJECT";
CREATE TABLE "SYSTEM"."REPCAT$_REPOBJECT" (
"SNAME" VARCHAR2(30 BYTE) NOT NULL ,
"ONAME" VARCHAR2(30 BYTE) NOT NULL ,
"TYPE" NUMBER NOT NULL ,
"VERSION#" NUMBER NULL ,
"HASHCODE" RAW(17) NULL ,
"ID" NUMBER NULL ,
"OBJECT_COMMENT" VARCHAR2(80 BYTE) NULL ,
"STATUS" NUMBER NULL ,
"GENPACKAGE" NUMBER NULL ,
"GENPLOGID" NUMBER NULL ,
"GENTRIGGER" NUMBER NULL ,
"GENTLOGID" NUMBER NULL ,
"GOWNER" VARCHAR2(30 BYTE) NULL ,
"GNAME" VARCHAR2(30 BYTE) NULL ,
"FLAG" RAW(4) DEFAULT '00000000'  NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."REPCAT$_REPOBJECT" IS 'Information about replicated objects';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPOBJECT"."SNAME" IS 'Name of the object owner';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPOBJECT"."ONAME" IS 'Name of the object';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPOBJECT"."TYPE" IS 'Type of the object';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPOBJECT"."VERSION#" IS 'Version of objects of TYPE';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPOBJECT"."HASHCODE" IS 'Hashcode of objects of TYPE';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPOBJECT"."ID" IS 'Identifier of the local object';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPOBJECT"."OBJECT_COMMENT" IS 'Description of the replicated object';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPOBJECT"."STATUS" IS 'Status of the last create or alter request on the local object';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPOBJECT"."GENPACKAGE" IS 'Status of whether the object needs to generate replication package';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPOBJECT"."GENPLOGID" IS 'Log id of message sent for generating package support';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPOBJECT"."GENTRIGGER" IS 'Status of whether the object needs to generate replication trigger';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPOBJECT"."GENTLOGID" IS 'Log id of message sent for generating trigger support';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPOBJECT"."GOWNER" IS 'Owner of the object''s object group';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPOBJECT"."GNAME" IS 'Name of the object''s object group';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPOBJECT"."FLAG" IS 'Information about replicated object';

-- ----------------------------
-- Records of REPCAT$_REPOBJECT
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_REPPROP"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_REPPROP";
CREATE TABLE "SYSTEM"."REPCAT$_REPPROP" (
"SNAME" VARCHAR2(30 BYTE) NOT NULL ,
"ONAME" VARCHAR2(30 BYTE) NOT NULL ,
"TYPE" NUMBER NOT NULL ,
"DBLINK" VARCHAR2(128 BYTE) NOT NULL ,
"HOW" NUMBER NULL ,
"PROPAGATE_COMMENT" VARCHAR2(80 BYTE) NULL ,
"DELIVERY_ORDER" NUMBER NULL ,
"RECIPIENT_KEY" NUMBER NULL ,
"EXTENSION_ID" RAW(16) DEFAULT '00'  NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."REPCAT$_REPPROP" IS 'Propagation information about replicated objects';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPPROP"."SNAME" IS 'Name of the object owner';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPPROP"."ONAME" IS 'Name of the object';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPPROP"."TYPE" IS 'Type of the object';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPPROP"."DBLINK" IS 'Destination database for propagation';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPPROP"."HOW" IS 'Propagation choice for the destination database';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPPROP"."PROPAGATE_COMMENT" IS 'Description of the propagation choice';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPPROP"."DELIVERY_ORDER" IS 'Value of delivery order when the master was added';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPPROP"."RECIPIENT_KEY" IS 'Recipient key for sname and oname, used in joining with def$_aqcall';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPPROP"."EXTENSION_ID" IS 'Identifier of any active extension request';

-- ----------------------------
-- Records of REPCAT$_REPPROP
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_REPSCHEMA"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_REPSCHEMA";
CREATE TABLE "SYSTEM"."REPCAT$_REPSCHEMA" (
"GOWNER" VARCHAR2(30 BYTE) DEFAULT 'PUBLIC'  NOT NULL ,
"SNAME" VARCHAR2(30 BYTE) NOT NULL ,
"DBLINK" VARCHAR2(128 BYTE) NOT NULL ,
"MASTERDEF" VARCHAR2(1 BYTE) NULL ,
"SNAPMASTER" VARCHAR2(1 BYTE) NULL ,
"MASTER_COMMENT" VARCHAR2(80 BYTE) NULL ,
"MASTER" VARCHAR2(1 BYTE) NULL ,
"PROP_UPDATES" NUMBER DEFAULT 0  NULL ,
"MY_DBLINK" VARCHAR2(1 BYTE) NULL ,
"EXTENSION_ID" RAW(16) DEFAULT '00'  NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."REPCAT$_REPSCHEMA" IS 'N-way replication information';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPSCHEMA"."GOWNER" IS 'Owner of the replicated object group';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPSCHEMA"."SNAME" IS 'Name of the replicated object group';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPSCHEMA"."DBLINK" IS 'A database site replicating the object group';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPSCHEMA"."MASTERDEF" IS 'Is the database the master definition site for the replicated object group';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPSCHEMA"."SNAPMASTER" IS 'For a snapshot site, is this the current refresh_master';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPSCHEMA"."MASTER_COMMENT" IS 'Description of the database site';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPSCHEMA"."MASTER" IS 'Redundant information from repcat$_repcat.master';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPSCHEMA"."PROP_UPDATES" IS 'Number of requested updates for master in repcat$_repprop';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPSCHEMA"."MY_DBLINK" IS 'A sanity check after import: is this master the current site';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_REPSCHEMA"."EXTENSION_ID" IS 'Dummy column for foreign key';

-- ----------------------------
-- Records of REPCAT$_REPSCHEMA
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_RESOL_STATS_CONTROL"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_RESOL_STATS_CONTROL";
CREATE TABLE "SYSTEM"."REPCAT$_RESOL_STATS_CONTROL" (
"SNAME" VARCHAR2(30 BYTE) NOT NULL ,
"ONAME" VARCHAR2(30 BYTE) NOT NULL ,
"CREATED" DATE NOT NULL ,
"STATUS" NUMBER NOT NULL ,
"STATUS_UPDATE_DATE" DATE NOT NULL ,
"PURGED_DATE" DATE NULL ,
"LAST_PURGE_START_DATE" DATE NULL ,
"LAST_PURGE_END_DATE" DATE NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."REPCAT$_RESOL_STATS_CONTROL" IS 'Information about statistics collection for conflict resolutions for all replicated tables in the database';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_RESOL_STATS_CONTROL"."SNAME" IS 'Owner of replicated object';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_RESOL_STATS_CONTROL"."ONAME" IS 'Name of the replicated object';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_RESOL_STATS_CONTROL"."CREATED" IS 'Timestamp for which statistics collection was first started';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_RESOL_STATS_CONTROL"."STATUS" IS 'Status of statistics collection: ACTIVE, CANCELLED';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_RESOL_STATS_CONTROL"."STATUS_UPDATE_DATE" IS 'Timestamp for which the status was last updated';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_RESOL_STATS_CONTROL"."PURGED_DATE" IS 'Timestamp for the last purge of statistics data';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_RESOL_STATS_CONTROL"."LAST_PURGE_START_DATE" IS 'The last start date of the statistics purging date range';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_RESOL_STATS_CONTROL"."LAST_PURGE_END_DATE" IS 'The last end date of the statistics purging date range';

-- ----------------------------
-- Records of REPCAT$_RESOL_STATS_CONTROL
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_RESOLUTION"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_RESOLUTION";
CREATE TABLE "SYSTEM"."REPCAT$_RESOLUTION" (
"SNAME" VARCHAR2(30 BYTE) NOT NULL ,
"ONAME" VARCHAR2(30 BYTE) NOT NULL ,
"CONFLICT_TYPE_ID" NUMBER NOT NULL ,
"REFERENCE_NAME" VARCHAR2(30 BYTE) NOT NULL ,
"SEQUENCE_NO" NUMBER NOT NULL ,
"METHOD_NAME" VARCHAR2(80 BYTE) NOT NULL ,
"FUNCTION_NAME" VARCHAR2(92 BYTE) NOT NULL ,
"PRIORITY_GROUP" VARCHAR2(30 BYTE) NULL ,
"RESOLUTION_COMMENT" VARCHAR2(80 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."REPCAT$_RESOLUTION" IS 'Description of all conflict resolutions in the database';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_RESOLUTION"."SNAME" IS 'Owner of replicated object';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_RESOLUTION"."ONAME" IS 'Name of the replicated object';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_RESOLUTION"."CONFLICT_TYPE_ID" IS 'Type of conflict';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_RESOLUTION"."REFERENCE_NAME" IS 'Table name, unique constraint name, or column group name';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_RESOLUTION"."SEQUENCE_NO" IS 'Ordering on resolution';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_RESOLUTION"."METHOD_NAME" IS 'Name of the conflict resolution method';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_RESOLUTION"."FUNCTION_NAME" IS 'Name of the resolution function';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_RESOLUTION"."PRIORITY_GROUP" IS 'Name of the priority group used in conflict resolution';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_RESOLUTION"."RESOLUTION_COMMENT" IS 'Description of the conflict resolution';

-- ----------------------------
-- Records of REPCAT$_RESOLUTION
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_RESOLUTION_METHOD"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_RESOLUTION_METHOD";
CREATE TABLE "SYSTEM"."REPCAT$_RESOLUTION_METHOD" (
"CONFLICT_TYPE_ID" NUMBER NOT NULL ,
"METHOD_NAME" VARCHAR2(80 BYTE) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."REPCAT$_RESOLUTION_METHOD" IS 'All conflict resolution methods in the database';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_RESOLUTION_METHOD"."CONFLICT_TYPE_ID" IS 'Type of conflict';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_RESOLUTION_METHOD"."METHOD_NAME" IS 'Name of the conflict resolution method';

-- ----------------------------
-- Records of REPCAT$_RESOLUTION_METHOD
-- ----------------------------
INSERT INTO "SYSTEM"."REPCAT$_RESOLUTION_METHOD" VALUES ('1', 'ADDITIVE');
INSERT INTO "SYSTEM"."REPCAT$_RESOLUTION_METHOD" VALUES ('1', 'AVERAGE');
INSERT INTO "SYSTEM"."REPCAT$_RESOLUTION_METHOD" VALUES ('1', 'DISCARD');
INSERT INTO "SYSTEM"."REPCAT$_RESOLUTION_METHOD" VALUES ('1', 'EARLIEST TIMESTAMP');
INSERT INTO "SYSTEM"."REPCAT$_RESOLUTION_METHOD" VALUES ('1', 'LATEST TIMESTAMP');
INSERT INTO "SYSTEM"."REPCAT$_RESOLUTION_METHOD" VALUES ('1', 'MAXIMUM');
INSERT INTO "SYSTEM"."REPCAT$_RESOLUTION_METHOD" VALUES ('1', 'MINIMUM');
INSERT INTO "SYSTEM"."REPCAT$_RESOLUTION_METHOD" VALUES ('1', 'OVERWRITE');
INSERT INTO "SYSTEM"."REPCAT$_RESOLUTION_METHOD" VALUES ('1', 'PRIORITY GROUP');
INSERT INTO "SYSTEM"."REPCAT$_RESOLUTION_METHOD" VALUES ('1', 'SITE PRIORITY');
INSERT INTO "SYSTEM"."REPCAT$_RESOLUTION_METHOD" VALUES ('1', 'USER FLAVOR FUNCTION');
INSERT INTO "SYSTEM"."REPCAT$_RESOLUTION_METHOD" VALUES ('1', 'USER FUNCTION');
INSERT INTO "SYSTEM"."REPCAT$_RESOLUTION_METHOD" VALUES ('2', 'APPEND SEQUENCE');
INSERT INTO "SYSTEM"."REPCAT$_RESOLUTION_METHOD" VALUES ('2', 'APPEND SITE NAME');
INSERT INTO "SYSTEM"."REPCAT$_RESOLUTION_METHOD" VALUES ('2', 'DISCARD');
INSERT INTO "SYSTEM"."REPCAT$_RESOLUTION_METHOD" VALUES ('2', 'USER FLAVOR FUNCTION');
INSERT INTO "SYSTEM"."REPCAT$_RESOLUTION_METHOD" VALUES ('2', 'USER FUNCTION');
INSERT INTO "SYSTEM"."REPCAT$_RESOLUTION_METHOD" VALUES ('3', 'USER FLAVOR FUNCTION');
INSERT INTO "SYSTEM"."REPCAT$_RESOLUTION_METHOD" VALUES ('3', 'USER FUNCTION');

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_RESOLUTION_STATISTICS"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_RESOLUTION_STATISTICS";
CREATE TABLE "SYSTEM"."REPCAT$_RESOLUTION_STATISTICS" (
"SNAME" VARCHAR2(30 BYTE) NOT NULL ,
"ONAME" VARCHAR2(30 BYTE) NOT NULL ,
"CONFLICT_TYPE_ID" NUMBER NOT NULL ,
"REFERENCE_NAME" VARCHAR2(30 BYTE) NOT NULL ,
"METHOD_NAME" VARCHAR2(80 BYTE) NOT NULL ,
"FUNCTION_NAME" VARCHAR2(92 BYTE) NOT NULL ,
"PRIORITY_GROUP" VARCHAR2(30 BYTE) NULL ,
"RESOLVED_DATE" DATE NOT NULL ,
"PRIMARY_KEY_VALUE" VARCHAR2(2000 BYTE) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."REPCAT$_RESOLUTION_STATISTICS" IS 'Statistics for conflict resolutions for all replicated tables in the database';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_RESOLUTION_STATISTICS"."SNAME" IS 'Owner of replicated object';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_RESOLUTION_STATISTICS"."ONAME" IS 'Name of the replicated object';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_RESOLUTION_STATISTICS"."CONFLICT_TYPE_ID" IS 'Type of conflict';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_RESOLUTION_STATISTICS"."REFERENCE_NAME" IS 'Table name, unique constraint name, or column group name';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_RESOLUTION_STATISTICS"."METHOD_NAME" IS 'Name of the conflict resolution method';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_RESOLUTION_STATISTICS"."FUNCTION_NAME" IS 'Name of the resolution function';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_RESOLUTION_STATISTICS"."PRIORITY_GROUP" IS 'Name of the priority group used in conflict resolution';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_RESOLUTION_STATISTICS"."RESOLVED_DATE" IS 'Timestamp for the resolution of the conflict';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_RESOLUTION_STATISTICS"."PRIMARY_KEY_VALUE" IS 'Primary key of the replicated row (character data)';

-- ----------------------------
-- Records of REPCAT$_RESOLUTION_STATISTICS
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_RUNTIME_PARMS"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_RUNTIME_PARMS";
CREATE TABLE "SYSTEM"."REPCAT$_RUNTIME_PARMS" (
"RUNTIME_PARM_ID" NUMBER NULL ,
"PARAMETER_NAME" VARCHAR2(30 BYTE) NULL ,
"PARM_VALUE" CLOB NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN "SYSTEM"."REPCAT$_RUNTIME_PARMS"."RUNTIME_PARM_ID" IS 'Primary key of the parameter values table.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_RUNTIME_PARMS"."PARAMETER_NAME" IS 'Name of the parameter.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_RUNTIME_PARMS"."PARM_VALUE" IS 'Parameter value.';

-- ----------------------------
-- Records of REPCAT$_RUNTIME_PARMS
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_SITE_OBJECTS"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_SITE_OBJECTS";
CREATE TABLE "SYSTEM"."REPCAT$_SITE_OBJECTS" (
"TEMPLATE_SITE_ID" NUMBER NOT NULL ,
"SNAME" VARCHAR2(30 BYTE) NULL ,
"ONAME" VARCHAR2(30 BYTE) NOT NULL ,
"OBJECT_TYPE_ID" NUMBER NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."REPCAT$_SITE_OBJECTS" IS 'Table for maintaining database objects deployed at a site.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_SITE_OBJECTS"."TEMPLATE_SITE_ID" IS 'Internal primary key of the template sites table.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_SITE_OBJECTS"."SNAME" IS 'Schema containing the deployed database object.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_SITE_OBJECTS"."ONAME" IS 'Name of the deployed database object.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_SITE_OBJECTS"."OBJECT_TYPE_ID" IS 'Internal ID of the object type of the deployed database object.';

-- ----------------------------
-- Records of REPCAT$_SITE_OBJECTS
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_SITES_NEW"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_SITES_NEW";
CREATE TABLE "SYSTEM"."REPCAT$_SITES_NEW" (
"EXTENSION_ID" RAW(16) NOT NULL ,
"GOWNER" VARCHAR2(30 BYTE) NOT NULL ,
"GNAME" VARCHAR2(30 BYTE) NOT NULL ,
"DBLINK" VARCHAR2(128 BYTE) NOT NULL ,
"FULL_INSTANTIATION" VARCHAR2(1 BYTE) NULL ,
"MASTER_STATUS" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."REPCAT$_SITES_NEW" IS 'Information about new masters for replication extension';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_SITES_NEW"."EXTENSION_ID" IS 'Globally unique identifier for replication extension';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_SITES_NEW"."GOWNER" IS 'Owner of the object group';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_SITES_NEW"."GNAME" IS 'Name of the replicated object group';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_SITES_NEW"."DBLINK" IS 'A database site that will replicate the object group';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_SITES_NEW"."FULL_INSTANTIATION" IS 'Y if the database uses full-database export or change-based recovery';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_SITES_NEW"."MASTER_STATUS" IS 'Instantiation status of the new master';

-- ----------------------------
-- Records of REPCAT$_SITES_NEW
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_SNAPGROUP"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_SNAPGROUP";
CREATE TABLE "SYSTEM"."REPCAT$_SNAPGROUP" (
"GOWNER" VARCHAR2(30 BYTE) DEFAULT 'PUBLIC'  NULL ,
"GNAME" VARCHAR2(30 BYTE) NULL ,
"DBLINK" VARCHAR2(128 BYTE) NULL ,
"GROUP_COMMENT" VARCHAR2(80 BYTE) NULL ,
"REP_TYPE" NUMBER NULL ,
"FLAVOR_ID" NUMBER NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."REPCAT$_SNAPGROUP" IS 'Snapshot repgroup registration information';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_SNAPGROUP"."GOWNER" IS 'Owner of the snapshot repgroup';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_SNAPGROUP"."GNAME" IS 'Name of the snapshot repgroup';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_SNAPGROUP"."DBLINK" IS 'Database site of the snapshot repgroup';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_SNAPGROUP"."GROUP_COMMENT" IS 'Description of the snapshot repgroup';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_SNAPGROUP"."REP_TYPE" IS 'Identifier of flavor at snapshot';

-- ----------------------------
-- Records of REPCAT$_SNAPGROUP
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS";
CREATE TABLE "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS" (
"TEMPLATE_OBJECT_ID" NUMBER NOT NULL ,
"REFRESH_TEMPLATE_ID" NUMBER NOT NULL ,
"OBJECT_NAME" VARCHAR2(30 BYTE) NOT NULL ,
"OBJECT_TYPE" NUMBER NOT NULL ,
"OBJECT_VERSION#" NUMBER NULL ,
"DDL_TEXT" CLOB NULL ,
"MASTER_ROLLBACK_SEG" VARCHAR2(30 BYTE) NULL ,
"DERIVED_FROM_SNAME" VARCHAR2(30 BYTE) NULL ,
"DERIVED_FROM_ONAME" VARCHAR2(30 BYTE) NULL ,
"FLAVOR_ID" NUMBER NULL ,
"SCHEMA_NAME" VARCHAR2(30 BYTE) NULL ,
"DDL_NUM" NUMBER DEFAULT 1  NOT NULL ,
"TEMPLATE_REFGROUP_ID" NUMBER DEFAULT 0  NOT NULL ,
"FLAGS" RAW(255) NULL ,
"SPARE1" VARCHAR2(4000 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS"."TEMPLATE_OBJECT_ID" IS 'Internal primary key of the REPCAT$_TEMPLATE_OBJECTS table.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS"."REFRESH_TEMPLATE_ID" IS 'Internal primary key of the REPCAT$_REFRESH_TEMPLATES table.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS"."OBJECT_NAME" IS 'Name of the database object.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS"."OBJECT_TYPE" IS 'Type of database object.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS"."OBJECT_VERSION#" IS 'Version# of database object of TYPE.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS"."DDL_TEXT" IS 'DDL string for creating the object or WHERE clause for snapshot query.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS"."MASTER_ROLLBACK_SEG" IS 'Rollback segment for use during snapshot refreshes.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS"."DERIVED_FROM_SNAME" IS 'Schema name of schema containing object this was derived from.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS"."DERIVED_FROM_ONAME" IS 'Object name of object this object was derived from.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS"."FLAVOR_ID" IS 'Foreign key to the REPCAT$_FLAVORS table.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS"."SCHEMA_NAME" IS 'Schema containing the object.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS"."DDL_NUM" IS 'Order of ddls to execute.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS"."TEMPLATE_REFGROUP_ID" IS 'Internal ID of the refresh group to contain the object.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS"."FLAGS" IS 'Internal flags for the object.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS"."SPARE1" IS 'Reserved for future use.';

-- ----------------------------
-- Records of REPCAT$_TEMPLATE_OBJECTS
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_TEMPLATE_PARMS"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_TEMPLATE_PARMS";
CREATE TABLE "SYSTEM"."REPCAT$_TEMPLATE_PARMS" (
"TEMPLATE_PARAMETER_ID" NUMBER NOT NULL ,
"REFRESH_TEMPLATE_ID" NUMBER NOT NULL ,
"PARAMETER_NAME" VARCHAR2(30 BYTE) NOT NULL ,
"DEFAULT_PARM_VALUE" CLOB NULL ,
"PROMPT_STRING" VARCHAR2(2000 BYTE) NULL ,
"USER_OVERRIDE" VARCHAR2(1 BYTE) DEFAULT 'Y'  NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_PARMS"."TEMPLATE_PARAMETER_ID" IS 'Internal primary key of the REPCAT$_TEMPLATE_PARMS table.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_PARMS"."REFRESH_TEMPLATE_ID" IS 'Internal primary key of the REPCAT$_REFRESH_TEMPLATES table.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_PARMS"."PARAMETER_NAME" IS 'name of the parameter.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_PARMS"."DEFAULT_PARM_VALUE" IS 'Default value for the parameter.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_PARMS"."PROMPT_STRING" IS 'String for use in prompting for parameter values.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_PARMS"."USER_OVERRIDE" IS 'User override flag.';

-- ----------------------------
-- Records of REPCAT$_TEMPLATE_PARMS
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_TEMPLATE_REFGROUPS"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_TEMPLATE_REFGROUPS";
CREATE TABLE "SYSTEM"."REPCAT$_TEMPLATE_REFGROUPS" (
"REFRESH_GROUP_ID" NUMBER NOT NULL ,
"REFRESH_GROUP_NAME" VARCHAR2(30 BYTE) NOT NULL ,
"REFRESH_TEMPLATE_ID" NUMBER NOT NULL ,
"ROLLBACK_SEG" VARCHAR2(30 BYTE) NULL ,
"START_DATE" VARCHAR2(200 BYTE) NULL ,
"INTERVAL" VARCHAR2(200 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."REPCAT$_TEMPLATE_REFGROUPS" IS 'Table for maintaining refresh group information for template.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_REFGROUPS"."REFRESH_GROUP_ID" IS 'Internal primary key of the refresh groups table.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_REFGROUPS"."REFRESH_GROUP_NAME" IS 'Name of the refresh group';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_REFGROUPS"."REFRESH_TEMPLATE_ID" IS 'Primary key of the template containing the refresh group.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_REFGROUPS"."ROLLBACK_SEG" IS 'Name of the rollback segment to use during refresh.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_REFGROUPS"."START_DATE" IS 'Refresh start date.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_REFGROUPS"."INTERVAL" IS 'Refresh interval.';

-- ----------------------------
-- Records of REPCAT$_TEMPLATE_REFGROUPS
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_TEMPLATE_SITES"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_TEMPLATE_SITES";
CREATE TABLE "SYSTEM"."REPCAT$_TEMPLATE_SITES" (
"TEMPLATE_SITE_ID" NUMBER NOT NULL ,
"REFRESH_TEMPLATE_NAME" VARCHAR2(30 BYTE) NOT NULL ,
"REFRESH_GROUP_NAME" VARCHAR2(30 BYTE) NULL ,
"TEMPLATE_OWNER" VARCHAR2(30 BYTE) NULL ,
"USER_NAME" VARCHAR2(30 BYTE) NOT NULL ,
"SITE_NAME" VARCHAR2(128 BYTE) NULL ,
"REPAPI_SITE_ID" NUMBER NULL ,
"STATUS" NUMBER NOT NULL ,
"REFRESH_TEMPLATE_ID" NUMBER NULL ,
"USER_ID" NUMBER NULL ,
"INSTANTIATION_DATE" DATE NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_SITES"."TEMPLATE_SITE_ID" IS 'Internal primary key of the REPCAT$_TEMPLATE_SITES table.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_SITES"."REFRESH_TEMPLATE_NAME" IS 'Name of the refresh group template.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_SITES"."REFRESH_GROUP_NAME" IS 'Name of the refresh group to create during instantiation.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_SITES"."TEMPLATE_OWNER" IS 'Owner of the refresh group template.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_SITES"."USER_NAME" IS 'Database user name.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_SITES"."SITE_NAME" IS 'Name of the site that has instantiated the template.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_SITES"."REPAPI_SITE_ID" IS 'Name of the site that has instantiated the template.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_SITES"."STATUS" IS 'Obsolete - do not use.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_SITES"."REFRESH_TEMPLATE_ID" IS 'Obsolete - do not use.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_SITES"."USER_ID" IS 'Obsolete - do not use.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_SITES"."INSTANTIATION_DATE" IS 'Date template was instantiated.';

-- ----------------------------
-- Records of REPCAT$_TEMPLATE_SITES
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_TEMPLATE_STATUS"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_TEMPLATE_STATUS";
CREATE TABLE "SYSTEM"."REPCAT$_TEMPLATE_STATUS" (
"TEMPLATE_STATUS_ID" NUMBER NOT NULL ,
"STATUS_TYPE_NAME" VARCHAR2(100 BYTE) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."REPCAT$_TEMPLATE_STATUS" IS 'Table for template status and template status codes.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_STATUS"."TEMPLATE_STATUS_ID" IS 'Internal primary key for the template status table.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_STATUS"."STATUS_TYPE_NAME" IS 'User friendly name for the template status.';

-- ----------------------------
-- Records of REPCAT$_TEMPLATE_STATUS
-- ----------------------------
INSERT INTO "SYSTEM"."REPCAT$_TEMPLATE_STATUS" VALUES ('0', 'Modifiable');
INSERT INTO "SYSTEM"."REPCAT$_TEMPLATE_STATUS" VALUES ('1', 'Frozen');
INSERT INTO "SYSTEM"."REPCAT$_TEMPLATE_STATUS" VALUES ('2', 'Deleted');

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_TEMPLATE_TARGETS"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_TEMPLATE_TARGETS";
CREATE TABLE "SYSTEM"."REPCAT$_TEMPLATE_TARGETS" (
"TEMPLATE_TARGET_ID" NUMBER NOT NULL ,
"TARGET_DATABASE" VARCHAR2(128 BYTE) NOT NULL ,
"TARGET_COMMENT" VARCHAR2(2000 BYTE) NULL ,
"CONNECT_STRING" VARCHAR2(4000 BYTE) NULL ,
"SPARE1" VARCHAR2(4000 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."REPCAT$_TEMPLATE_TARGETS" IS 'Internal table for tracking potential target databases for templates.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_TARGETS"."TEMPLATE_TARGET_ID" IS 'Internal primary key of the template targets table.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_TARGETS"."TARGET_DATABASE" IS 'Global identifier of the target database.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_TARGETS"."TARGET_COMMENT" IS 'Comment on the target database.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_TARGETS"."CONNECT_STRING" IS 'The connection descriptor used to connect to the target database.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_TARGETS"."SPARE1" IS 'The spare column';

-- ----------------------------
-- Records of REPCAT$_TEMPLATE_TARGETS
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_TEMPLATE_TYPES"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_TEMPLATE_TYPES";
CREATE TABLE "SYSTEM"."REPCAT$_TEMPLATE_TYPES" (
"TEMPLATE_TYPE_ID" NUMBER NOT NULL ,
"TEMPLATE_DESCRIPTION" VARCHAR2(200 BYTE) NULL ,
"FLAGS" RAW(255) NULL ,
"SPARE1" VARCHAR2(4000 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON TABLE "SYSTEM"."REPCAT$_TEMPLATE_TYPES" IS 'Internal table for maintaining types of templates.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_TYPES"."TEMPLATE_TYPE_ID" IS 'Internal primary key of the template types table.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_TYPES"."TEMPLATE_DESCRIPTION" IS 'Description of the template type.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_TYPES"."FLAGS" IS 'Bitmap flags controlling each type of template.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_TEMPLATE_TYPES"."SPARE1" IS 'Reserved for future expansion.';

-- ----------------------------
-- Records of REPCAT$_TEMPLATE_TYPES
-- ----------------------------
INSERT INTO "SYSTEM"."REPCAT$_TEMPLATE_TYPES" VALUES ('1', 'Deployment template', HexToRaw('01'), null);
INSERT INTO "SYSTEM"."REPCAT$_TEMPLATE_TYPES" VALUES ('2', 'IAS template', HexToRaw('02'), null);

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_USER_AUTHORIZATIONS"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_USER_AUTHORIZATIONS";
CREATE TABLE "SYSTEM"."REPCAT$_USER_AUTHORIZATIONS" (
"USER_AUTHORIZATION_ID" NUMBER NOT NULL ,
"USER_ID" NUMBER NOT NULL ,
"REFRESH_TEMPLATE_ID" NUMBER NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN "SYSTEM"."REPCAT$_USER_AUTHORIZATIONS"."USER_AUTHORIZATION_ID" IS 'Internal primary key of the REPCAT$_USER_AUTHORIZATIONS table.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_USER_AUTHORIZATIONS"."USER_ID" IS 'Database user id.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_USER_AUTHORIZATIONS"."REFRESH_TEMPLATE_ID" IS 'Internal primary key of the REPCAT$_REFRESH_TEMPLATES table.';

-- ----------------------------
-- Records of REPCAT$_USER_AUTHORIZATIONS
-- ----------------------------

-- ----------------------------
-- Table structure for "SYSTEM"."REPCAT$_USER_PARM_VALUES"
-- ----------------------------
DROP TABLE "SYSTEM"."REPCAT$_USER_PARM_VALUES";
CREATE TABLE "SYSTEM"."REPCAT$_USER_PARM_VALUES" (
"USER_PARAMETER_ID" NUMBER NOT NULL ,
"TEMPLATE_PARAMETER_ID" NUMBER NOT NULL ,
"USER_ID" NUMBER NOT NULL ,
"PARM_VALUE" CLOB NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;
COMMENT ON COLUMN "SYSTEM"."REPCAT$_USER_PARM_VALUES"."USER_PARAMETER_ID" IS 'Internal primary key of the REPCAT$_USER_PARM_VALUES table.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_USER_PARM_VALUES"."TEMPLATE_PARAMETER_ID" IS 'Internal primary key of the REPCAT$_TEMPLATE_PARMS table.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_USER_PARM_VALUES"."USER_ID" IS 'Database user id.';
COMMENT ON COLUMN "SYSTEM"."REPCAT$_USER_PARM_VALUES"."PARM_VALUE" IS 'Value of the parameter for this user.';

-- ----------------------------
-- Records of REPCAT$_USER_PARM_VALUES
-- ----------------------------

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
-- Table structure for "SYSTEM"."SQLPLUS_PRODUCT_PROFILE"
-- ----------------------------
DROP TABLE "SYSTEM"."SQLPLUS_PRODUCT_PROFILE";
CREATE TABLE "SYSTEM"."SQLPLUS_PRODUCT_PROFILE" (
"PRODUCT" VARCHAR2(30 BYTE) NOT NULL ,
"USERID" VARCHAR2(30 BYTE) NULL ,
"ATTRIBUTE" VARCHAR2(240 BYTE) NULL ,
"SCOPE" VARCHAR2(240 BYTE) NULL ,
"NUMERIC_VALUE" NUMBER(15,2) NULL ,
"CHAR_VALUE" VARCHAR2(240 BYTE) NULL ,
"DATE_VALUE" DATE NULL ,
"LONG_VALUE" LONG NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of SQLPLUS_PRODUCT_PROFILE
-- ----------------------------

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
-- Table structure for "SYSTEM"."VOLUNTEERS"
-- ----------------------------
DROP TABLE "SYSTEM"."VOLUNTEERS";
CREATE TABLE "SYSTEM"."VOLUNTEERS" (
"DIS_ID" VARCHAR2(10 BYTE) NOT NULL ,
"NAME" VARCHAR2(50 BYTE) NOT NULL ,
"ORG" VARCHAR2(200 BYTE) NULL ,
"CONTACT" VARCHAR2(25 BYTE) NOT NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of VOLUNTEERS
-- ----------------------------
INSERT INTO "SYSTEM"."VOLUNTEERS" VALUES ('na001', 'Md.Sahabuddin', 'Bangladesh Army', '0195568789');

-- ----------------------------
-- View structure for "SYSTEM"."AQ$_DEF$_AQCALL_F"
-- ----------------------------
CREATE OR REPLACE FORCE VIEW "SYSTEM"."AQ$_DEF$_AQCALL_F" AS 
SELECT  /*+ NO_MERGE (qo) USE_NL(qt) */ qt.q_name Q_NAME, qt.rowid ROW_ID, qt.msgid MSGID, qt.corrid CORRID, qt.priority PRIORITY, qt.state STATE, cast(FROM_TZ(qt.delay, '00:00') at time zone sessiontimezone as timestamp) DELAY, qt.expiration EXPIRATION, cast(FROM_TZ(qt.enq_time, '00:00') at time zone sessiontimezone as timestamp) ENQ_TIME, qt.enq_uid ENQ_UID, qt.enq_tid ENQ_TID, cast(FROM_TZ(qt.deq_time, '00:00') at time zone sessiontimezone as timestamp) DEQ_TIME, qt.deq_uid DEQ_UID, qt.deq_tid DEQ_TID, qt.retry_count RETRY_COUNT, qt.exception_qschema EXCEPTION_QSCHEMA, qt.exception_queue EXCEPTION_QUEUE, qt.cscn CSCN, qt.dscn DSCN, qt.chain_no CHAIN_NO, qt.local_order_no LOCAL_ORDER_NO, cast(FROM_TZ(qt.time_manager_info, '00:00') at time zone sessiontimezone as timestamp)   TIME_MANAGER_INFO, qt.step_no STEP_NO, qt.user_data USER_DATA , qo.qid QUEUE_ID  FROM "DEF$_AQCALL" qt, SYS.ALL_INT_DEQUEUE_QUEUES  qo  WHERE qt.q_name = qo.name AND qo.owner = 'SYSTEM'
WITH READ ONLY 
CONSTRAINTS "SYS_C003542";

-- ----------------------------
-- View structure for "SYSTEM"."AQ$_DEF$_AQERROR_F"
-- ----------------------------
CREATE OR REPLACE FORCE VIEW "SYSTEM"."AQ$_DEF$_AQERROR_F" AS 
SELECT  /*+ NO_MERGE (qo) USE_NL(qt) */ qt.q_name Q_NAME, qt.rowid ROW_ID, qt.msgid MSGID, qt.corrid CORRID, qt.priority PRIORITY, qt.state STATE, cast(FROM_TZ(qt.delay, '00:00') at time zone sessiontimezone as timestamp) DELAY, qt.expiration EXPIRATION, cast(FROM_TZ(qt.enq_time, '00:00') at time zone sessiontimezone as timestamp) ENQ_TIME, qt.enq_uid ENQ_UID, qt.enq_tid ENQ_TID, cast(FROM_TZ(qt.deq_time, '00:00') at time zone sessiontimezone as timestamp) DEQ_TIME, qt.deq_uid DEQ_UID, qt.deq_tid DEQ_TID, qt.retry_count RETRY_COUNT, qt.exception_qschema EXCEPTION_QSCHEMA, qt.exception_queue EXCEPTION_QUEUE, qt.cscn CSCN, qt.dscn DSCN, qt.chain_no CHAIN_NO, qt.local_order_no LOCAL_ORDER_NO, cast(FROM_TZ(qt.time_manager_info, '00:00') at time zone sessiontimezone as timestamp)   TIME_MANAGER_INFO, qt.step_no STEP_NO, qt.user_data USER_DATA , qo.qid QUEUE_ID  FROM "DEF$_AQERROR" qt, SYS.ALL_INT_DEQUEUE_QUEUES  qo  WHERE qt.q_name = qo.name AND qo.owner = 'SYSTEM'
WITH READ ONLY 
CONSTRAINTS "SYS_C003545";

-- ----------------------------
-- View structure for "SYSTEM"."AQ$DEF$_AQCALL"
-- ----------------------------
CREATE OR REPLACE FORCE VIEW "SYSTEM"."AQ$DEF$_AQCALL" AS 
SELECT q_name QUEUE, msgid MSG_ID, corrid CORR_ID, priority MSG_PRIORITY, decode(state, 0,   'READY',
                                1,   'WAIT',
                                2,   'PROCESSED',
                                3,   'EXPIRED',
                                10,  'BUFFERED_EXPIRED') MSG_STATE, cast(FROM_TZ(delay, '00:00')
                  at time zone sessiontimezone as date) DELAY, cast(FROM_TZ(delay, '00:00')
               at time zone sessiontimezone as timestamp) DELAY_TIMESTAMP, expiration, cast(FROM_TZ(enq_time, '00:00')
                  at time zone sessiontimezone as date) ENQ_TIME, cast(FROM_TZ(enq_time, '00:00')
                  at time zone sessiontimezone as timestamp) 
                  ENQ_TIMESTAMP, enq_uid ENQ_USER_ID, enq_tid ENQ_TXN_ID, cast(FROM_TZ(deq_time, '00:00')
                  at time zone sessiontimezone as date) DEQ_TIME, cast(FROM_TZ(deq_time, '00:00')
                  at time zone sessiontimezone as timestamp) 
                  DEQ_TIMESTAMP, deq_uid DEQ_USER_ID, deq_tid DEQ_TXN_ID, retry_count,  decode (state, 0, exception_qschema, 
                                  1, exception_qschema, 
                                  2, exception_qschema,  
                                  NULL) EXCEPTION_QUEUE_OWNER,  decode (state, 0, exception_queue, 
                                  1, exception_queue, 
                                  2, exception_queue,  
                                  NULL) EXCEPTION_QUEUE,  user_data,  decode (state, 3, 
                     decode (deq_tid, 'INVALID_TRANSACTION', NULL, 
                             exception_queue), NULL)
                                ORIGINAL_QUEUE_NAME,  decode (state, 3, 
                     decode (deq_tid, 'INVALID_TRANSACTION', NULL, 
                             exception_qschema), NULL)
                                ORIGINAL_QUEUE_OWNER,  decode(state, 3, 
                     decode(deq_time, NULL, 
                       decode(deq_tid, NULL,
                       decode (expiration , NULL , 'MAX_RETRY_EXCEEDED',
                            'TIME_EXPIRATION'),
                              'INVALID_TRANSACTION', NULL,
                              'MAX_RETRY_EXCEEDED'), NULL), NULL) 
                             EXPIRATION_REASON  FROM "DEF$_AQCALL" WHERE state != 7 AND   state != 9
WITH READ ONLY 
CONSTRAINTS "SYS_C003541";

-- ----------------------------
-- View structure for "SYSTEM"."AQ$DEF$_AQERROR"
-- ----------------------------
CREATE OR REPLACE FORCE VIEW "SYSTEM"."AQ$DEF$_AQERROR" AS 
SELECT q_name QUEUE, msgid MSG_ID, corrid CORR_ID, priority MSG_PRIORITY, decode(state, 0,   'READY',
                                1,   'WAIT',
                                2,   'PROCESSED',
                                3,   'EXPIRED',
                                10,  'BUFFERED_EXPIRED') MSG_STATE, cast(FROM_TZ(delay, '00:00')
                  at time zone sessiontimezone as date) DELAY, cast(FROM_TZ(delay, '00:00')
               at time zone sessiontimezone as timestamp) DELAY_TIMESTAMP, expiration, cast(FROM_TZ(enq_time, '00:00')
                  at time zone sessiontimezone as date) ENQ_TIME, cast(FROM_TZ(enq_time, '00:00')
                  at time zone sessiontimezone as timestamp) 
                  ENQ_TIMESTAMP, enq_uid ENQ_USER_ID, enq_tid ENQ_TXN_ID, cast(FROM_TZ(deq_time, '00:00')
                  at time zone sessiontimezone as date) DEQ_TIME, cast(FROM_TZ(deq_time, '00:00')
                  at time zone sessiontimezone as timestamp) 
                  DEQ_TIMESTAMP, deq_uid DEQ_USER_ID, deq_tid DEQ_TXN_ID, retry_count,  decode (state, 0, exception_qschema, 
                                  1, exception_qschema, 
                                  2, exception_qschema,  
                                  NULL) EXCEPTION_QUEUE_OWNER,  decode (state, 0, exception_queue, 
                                  1, exception_queue, 
                                  2, exception_queue,  
                                  NULL) EXCEPTION_QUEUE,  user_data,  decode (state, 3, 
                     decode (deq_tid, 'INVALID_TRANSACTION', NULL, 
                             exception_queue), NULL)
                                ORIGINAL_QUEUE_NAME,  decode (state, 3, 
                     decode (deq_tid, 'INVALID_TRANSACTION', NULL, 
                             exception_qschema), NULL)
                                ORIGINAL_QUEUE_OWNER,  decode(state, 3, 
                     decode(deq_time, NULL, 
                       decode(deq_tid, NULL,
                       decode (expiration , NULL , 'MAX_RETRY_EXCEEDED',
                            'TIME_EXPIRATION'),
                              'INVALID_TRANSACTION', NULL,
                              'MAX_RETRY_EXCEEDED'), NULL), NULL) 
                             EXPIRATION_REASON  FROM "DEF$_AQERROR" WHERE state != 7 AND   state != 9
WITH READ ONLY 
CONSTRAINTS "SYS_C003544";

-- ----------------------------
-- View structure for "SYSTEM"."MVIEW_EVALUATIONS"
-- ----------------------------
CREATE OR REPLACE FORCE VIEW "SYSTEM"."MVIEW_EVALUATIONS" AS 
select
  t1.runid# as runid,
  summary_owner AS mview_owner,
  summary_name AS mview_name,
  rank# as rank,
  storage_in_bytes,
  frequency,
  cumulative_benefit,
  benefit_to_cost_ratio
from SYSTEM.MVIEW$_ADV_OUTPUT t1, SYSTEM.MVIEW$_ADV_LOG t2, ALL_USERS u
where
  t1.runid# = t2.runid# and
  u.username = t2.uname and
  u.user_id = userenv('SCHEMAID') and
  t1.output_type = 1
order by t1.rank#;
COMMENT ON TABLE "SYSTEM"."MVIEW_EVALUATIONS" IS 'This view gives DBA access to summary evaluation output';

-- ----------------------------
-- View structure for "SYSTEM"."MVIEW_EXCEPTIONS"
-- ----------------------------
CREATE OR REPLACE FORCE VIEW "SYSTEM"."MVIEW_EXCEPTIONS" AS 
select
  t1.runid# as runid,
  owner,
  table_name,
  dimension_name,
  relationship,
  bad_rowid
from SYSTEM.MVIEW$_ADV_EXCEPTIONS t1, SYSTEM.MVIEW$_ADV_LOG t2, ALL_USERS u
where
  t1.runid# = t2.runid# and
  u.username = t2.uname and
  u.user_id = userenv('SCHEMAID');
COMMENT ON TABLE "SYSTEM"."MVIEW_EXCEPTIONS" IS 'This view gives DBA access to dimension validation results';

-- ----------------------------
-- View structure for "SYSTEM"."MVIEW_FILTER"
-- ----------------------------
CREATE OR REPLACE FORCE VIEW "SYSTEM"."MVIEW_FILTER" AS 
select
      a.filterid# as filterid,
      a.subfilternum# as subfilternum,
      decode(a.subfiltertype,1,'APPLICATION',2,'CARDINALITY',3,'LASTUSE',
                             4,'FREQUENCY',5,'USER',6,'PRIORITY',7,'BASETABLE',
                             8,'RESPONSETIME',9,'COLLECTIONID',10,'TRACENAME',
                             11,'SCHEMA','UNKNOWN') AS subfiltertype,
      a.str_value,
      to_number(decode(a.num_value1,-999,NULL,a.num_value1)) AS num_value1,
      to_number(decode(a.num_value2,-999,NULL,a.num_value2)) AS num_value2,
      a.date_value1,
      a.date_value2
   from system.mview$_adv_filter a, system.mview$_adv_log b, ALL_USERS u
   WHERE a.filterid# = b.runid#
   AND b.uname = u.username
   AND u.user_id = userenv('SCHEMAID');
COMMENT ON TABLE "SYSTEM"."MVIEW_FILTER" IS 'Workload filter records';

-- ----------------------------
-- View structure for "SYSTEM"."MVIEW_FILTERINSTANCE"
-- ----------------------------
CREATE OR REPLACE FORCE VIEW "SYSTEM"."MVIEW_FILTERINSTANCE" AS 
select
      a.runid# as runid,
      a.filterid# as filterid,
      a.subfilternum# as subfilternum,
      decode(a.subfiltertype,1,'APPLICATION',2,'CARDINALITY',3,'LASTUSE',
                             4,'FREQUENCY',5,'USER',6,'PRIORITY',7,'BASETABLE',
                             8,'RESPONSETIME',9,'COLLECTIONID',10,'TRACENAME',
                             11,'SCHEMA','UNKNOWN') AS subfiltertype,
      a.str_value,
      to_number(decode(a.num_value1,-999,NULL,a.num_value1)) AS num_value1,
      to_number(decode(a.num_value2,-999,NULL,a.num_value2)) AS num_value2,
      a.date_value1,
      a.date_value2
   from system.mview$_adv_filterinstance a;
COMMENT ON TABLE "SYSTEM"."MVIEW_FILTERINSTANCE" IS 'Workload filter instance records';

-- ----------------------------
-- View structure for "SYSTEM"."MVIEW_LOG"
-- ----------------------------
CREATE OR REPLACE FORCE VIEW "SYSTEM"."MVIEW_LOG" AS 
select
      m.runid# as id,
      m.filterid# as filterid,
      m.run_begin,
      m.run_end,
      decode(m.run_type,1,'EVALUATE',2,'EVALUATE_W',3,'RECOMMEND',
                      4,'RECOMMEND_W',5,'VALIDATE',6,'WORKLOAD',
                      7,'FILTER','UNKNOWN') AS type,
      decode(m.status,0,'UNUSED',1,'CANCELLED',2,'IN_PROGRESS',3,'COMPLETED',
                    4,'ERROR','UNKNOWN') AS status,
      m.message,
      m.completed,
      m.total,
      m.error_code
   from system.mview$_adv_log m, all_users u
   where m.uname = u.username
   and   u.user_id = userenv('SCHEMAID');
COMMENT ON TABLE "SYSTEM"."MVIEW_LOG" IS 'Advisor session log';

-- ----------------------------
-- View structure for "SYSTEM"."MVIEW_RECOMMENDATIONS"
-- ----------------------------
CREATE OR REPLACE FORCE VIEW "SYSTEM"."MVIEW_RECOMMENDATIONS" AS 
select
  t1.runid# as runid,
  t1.from_clause as all_tables,
  fact_tables,
  grouping_levels,
  query_text,
  rank# as recommendation_number,
  action_type as recommended_action,
  summary_owner as mview_owner,
  summary_name as mview_name,
  storage_in_bytes,
  pct_performance_gain,
  benefit_to_cost_ratio
from SYSTEM.MVIEW$_ADV_OUTPUT t1, SYSTEM.MVIEW$_ADV_LOG t2, ALL_USERS u
where
  t1.runid# = t2.runid# and
  u.username = t2.uname and
  u.user_id = userenv('SCHEMAID') and
  t1.output_type = 0
order by t1.rank#;
COMMENT ON TABLE "SYSTEM"."MVIEW_RECOMMENDATIONS" IS 'This view gives DBA access to summary recommendations';

-- ----------------------------
-- View structure for "SYSTEM"."MVIEW_WORKLOAD"
-- ----------------------------
CREATE OR REPLACE FORCE VIEW "SYSTEM"."MVIEW_WORKLOAD" AS 
select
  a.collectionid# as workloadid,
  a.collecttime as import_time,
  a.queryid# as queryid,
  a.application,
  a.cardinality,
  a.resultsize,
  a.qdate as lastuse,
  a.frequency,
  a.uname as owner,
  a.priority,
  a.sql_text as query,
  a.exec_time as responsetime
from SYSTEM.MVIEW$_ADV_WORKLOAD A, SYSTEM.MVIEW$_ADV_LOG B, ALL_USERS D
WHERE a.collectionid# = b.runid#
AND b.uname = d.username
AND d.user_id = userenv('SCHEMAID');
COMMENT ON TABLE "SYSTEM"."MVIEW_WORKLOAD" IS 'This view gives DBA access to shared workload';

-- ----------------------------
-- View structure for "SYSTEM"."PRODUCT_PRIVS"
-- ----------------------------
CREATE OR REPLACE FORCE VIEW "SYSTEM"."PRODUCT_PRIVS" AS 
SELECT PRODUCT, USERID, ATTRIBUTE, SCOPE,
         NUMERIC_VALUE, CHAR_VALUE, DATE_VALUE, LONG_VALUE
  FROM SQLPLUS_PRODUCT_PROFILE
  WHERE USERID = 'PUBLIC' OR USER LIKE USERID;

-- ----------------------------
-- Procedure structure for "SYSTEM"."CURSORINPROCEDURE"
-- ----------------------------
CREATE OR REPLACE PROCEDURE "SYSTEM"."CURSORINPROCEDURE"  IS
CURSOR c IS
SELECT * from NUMBERS;
BEGIN
   open c;
END;
/

-- ----------------------------
-- Procedure structure for "SYSTEM"."NEWCURSORINPROC"
-- ----------------------------
CREATE OR REPLACE PROCEDURE "SYSTEM"."NEWCURSORINPROC"(c OUT SYS_REFCURSOR)  AS
BEGIN
   open c FOR
     select ECONOMICAL_EFFECT from ECONOMICAL;
END;
/

-- ----------------------------
-- Procedure structure for "SYSTEM"."NEWSHOW"
-- ----------------------------
CREATE OR REPLACE PROCEDURE "SYSTEM"."NEWSHOW"(c out CURSOR)  IS 
CURSOR c IS
	SELECT * from NUMBERS;
BEGIN
    open c; 
END;

/

-- ----------------------------
-- Procedure structure for "SYSTEM"."ORA$_SYS_REP_AUTH"
-- ----------------------------
CREATE OR REPLACE procedure "SYSTEM"."ORA$_SYS_REP_AUTH" as
begin
  EXECUTE IMMEDIATE 'GRANT SELECT ON SYSTEM.repcat$_repschema TO SYS ' ||
                 'WITH GRANT OPTION';
  EXECUTE IMMEDIATE 'GRANT SELECT ON SYSTEM.repcat$_repprop TO SYS ' ||
                 'WITH GRANT OPTION';
  EXECUTE IMMEDIATE 'GRANT SELECT ON SYSTEM.def$_aqcall TO SYS ' ||
                 'WITH GRANT OPTION';
  EXECUTE IMMEDIATE 'GRANT SELECT ON SYSTEM.def$_calldest TO SYS ' ||
                 'WITH GRANT OPTION';
  EXECUTE IMMEDIATE 'GRANT SELECT ON SYSTEM.def$_error TO SYS ' ||
                 'WITH GRANT OPTION';
  EXECUTE IMMEDIATE 'GRANT SELECT ON SYSTEM.def$_destination TO SYS ' ||
                 'WITH GRANT OPTION';
end;
/

-- ----------------------------
-- Procedure structure for "SYSTEM"."SEARCHBYNAME"
-- ----------------------------
CREATE OR REPLACE PROCEDURE "SYSTEM"."SEARCHBYNAME" (disName IN DISASTER."NAME"%TYPE
                                          ,searchName OUT SYS_REFCURSOR
                                          ,humanLife OUT EFFECT.HUMANLIFE%TYPE
                                          ,economicLoss OUT ECONOMICAL.ECONOMICAL_EFFECT%TYPE
                                          ,days OUT RESCUE.DAYS % TYPE
                                          ,rescue OUT RESCUE.RESCUE_NUMBER%TYPE) AS
BEGIN
   
   OPEN searchName FOR
  SELECT DISASTER.NAME as Name,RECORDS.DIS_TYPE as Type,DISDATE.DIS_DATE,RECORDS.PLACE 
  FROM DISASTER,RECORDS,DISDATE
  WHERE DISASTER."ID" = RECORDS.RECORD_ID and DISASTER."ID" = DISDATE.DISDATE_ID and DISASTER."NAME" = disName;
   SELECT EFFECT.HUMANLIFE into humanLife FROM EFFECT,DISASTER
   where EFFECT.EFFECT_ID = DISASTER."ID" and DISASTER."NAME" = disName;
   SELECT ECONOMICAL.ECONOMICAL_EFFECT into economicLoss FROM ECONOMICAL,DISASTER
   where ECONOMICAL.ECONOMICAL_ID = DISASTER."ID" and DISASTER."NAME" = disName;
   SELECT RESCUE.DAYS into days FROM RESCUE,DISASTER
   where RESCUE.RESCUE_ID = DISASTER."ID" and DISASTER."NAME" = disName;
   SELECT RESCUE.RESCUE_NUMBER into rescue FROM RESCUE,DISASTER
   where RESCUE.RESCUE_ID = DISASTER."ID" and DISASTER."NAME" = disName;
END;
/

-- ----------------------------
-- Procedure structure for "SYSTEM"."SEARCHBYTYPE"
-- ----------------------------
CREATE OR REPLACE PROCEDURE "SYSTEM"."SEARCHBYTYPE"
(disType IN RECORDS.DIS_TYPE%TYPE,
 c OUT SYS_REFCURSOR
 )
AS
BEGIN
  OPEN c FOR
  SELECT distinct DISASTER.NAME as Name,RECORDS.DIS_TYPE as Type 
  FROM DISASTER,RECORDS 
  WHERE DISASTER."ID" = RECORDS.RECORD_ID and RECORDS.DIS_TYPE = disType;
   
END;
/

-- ----------------------------
-- Procedure structure for "SYSTEM"."SEARCHBYYEAR"
-- ----------------------------
CREATE OR REPLACE PROCEDURE "SYSTEM"."SEARCHBYYEAR" ( dis_year IN DISASTER."ID"%TYPE
                                          ,searchYear OUT SYS_REFCURSOR
                                          ,humanLife OUT EFFECT.HUMANLIFE%TYPE
                                          ,economicLoss OUT ECONOMICAL.ECONOMICAL_EFFECT%TYPE
                                          ,disCount OUT NUMBER
                                          ,disProne OUT SYS_REFCURSOR) AS

BEGIN
   OPEN searchYear FOR
  SELECT distinct DISASTER.NAME as Name,RECORDS.DIS_TYPE as Type,DISDATE.DIS_DATE
  FROM DISASTER,RECORDS,DISDATE
  WHERE DISASTER."ID" = RECORDS.RECORD_ID and DISASTER."ID" = DISDATE.DISDATE_ID 
and DISDATE.DIS_DATE between '01-Jan-'||dis_year and  '31-Dec-'||dis_year;

   select sum(EFFECT.HUMANLIFE) into humanLife from EFFECT,DISDATE 
where EFFECT.EFFECT_ID = DISDATE.DISDATE_ID 
and DISDATE.DIS_DATE between '01-Jan-'||dis_year and  '31-Dec-'||dis_year;
   SELECT sum(ECONOMICAL.ECONOMICAL_EFFECT) INTO economicLoss FROM ECONOMICAL,DISDATE
   where ECONOMICAL.ECONOMICAL_ID = DISDATE.DISDATE_ID and 
DISDATE.DIS_DATE BETWEEN '01-Jan-'||dis_year and  '31-Dec-'||dis_year;
   SELECT count(DISDATE_ID) into disCount FROM DISDATE
where DIS_DATE BETWEEN '01-Jan-'||dis_year and  '31-Dec-'||dis_year;
OPEN disProne FOR
  select PLACE from 
(
select RECORDS.PLACE,count(RECORDS.PLACE) as total from RECORDS,DISDATE WHERE RECORDS.RECORD_ID = DISDATE.DISDATE_ID 
and DISDATE.DIS_DATE BETWEEN '01-Jan-'||dis_year and  '31-Dec-'||dis_year
GROUP BY RECORDS.PLACE ORDER BY total DESC
)
where ROWNUM < 6;

   

END;
/

-- ----------------------------
-- Procedure structure for "SYSTEM"."SEARCHPREVENTION"
-- ----------------------------
CREATE OR REPLACE PROCEDURE "SYSTEM"."SEARCHPREVENTION" (disName IN DISASTER."NAME"%TYPE
                                              ,causes OUT PREVENTION.CAUSES % TYPE
                                              ,prev OUT PREVENTION.PREVENTION%TYPE) AS
BEGIN
   
   
   
   select PREVENTION.CAUSES into causes from PREVENTION,DISASTER 
   where PREVENTION.PREVENTION_ID = DISASTER."ID" 
   and DISASTER."NAME" = disName;
   select PREVENTION.PREVENTION into prev from PREVENTION,DISASTER 
   where PREVENTION.PREVENTION_ID = DISASTER."ID" 
   and DISASTER."NAME" = disName;
END;
/

-- ----------------------------
-- Procedure structure for "SYSTEM"."SHOWRESULT"
-- ----------------------------
CREATE OR REPLACE PROCEDURE "SYSTEM"."SHOWRESULT"  IS 
CURSOR c IS
	SELECT * from NUMBERS;
BEGIN
    open c; 
END;

/

-- ----------------------------
-- Procedure structure for "SYSTEM"."TOTALCOST"
-- ----------------------------
CREATE OR REPLACE PROCEDURE "SYSTEM"."TOTALCOST"(totalCost OUT NUMBER)  IS 
BEGIN
	SELECT sum(cost) into totalCost from TOOLS;
END;

/

-- ----------------------------
-- Procedure structure for "SYSTEM"."TOTALSUM"
-- ----------------------------
CREATE OR REPLACE PROCEDURE "SYSTEM"."TOTALSUM" (total OUT NUMBER) IS
BEGIN
   SELECT SUM(NUM) into total
   FROM NUMBERS;
   
   
END;
BEGIN
totalsum(c);
dbms_output.put_line(c);
END;
/

-- ----------------------------
-- Function structure for "SYSTEM"."TOTALENTRY"
-- ----------------------------
CREATE OR REPLACE FUNCTION "SYSTEM"."TOTALENTRY"
RETURN NUMBER AS
   total NUMBER;
BEGIN
   SELECT sum(NUM) into total FROM NUMBERS;
   RETURN total;
END;
/

-- ----------------------------
-- Function structure for "SYSTEM"."TOTALF"
-- ----------------------------
CREATE OR REPLACE FUNCTION "SYSTEM"."TOTALF"
RETURN number IS
   total NUMBER;
BEGIN
   SELECT SUM(NUM) into total
   FROM NUMBERS;
   
   RETURN total;
END;
/

-- ----------------------------
-- Sequence structure for "SYSTEM"."LOGMNR_EVOLVE_SEQ$"
-- ----------------------------
DROP SEQUENCE "SYSTEM"."LOGMNR_EVOLVE_SEQ$";
CREATE SEQUENCE "SYSTEM"."LOGMNR_EVOLVE_SEQ$"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 1
 NOCACHE 
 ORDER ;

-- ----------------------------
-- Sequence structure for "SYSTEM"."LOGMNR_SEQ$"
-- ----------------------------
DROP SEQUENCE "SYSTEM"."LOGMNR_SEQ$";
CREATE SEQUENCE "SYSTEM"."LOGMNR_SEQ$"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 1
 NOCACHE 
 ORDER ;

-- ----------------------------
-- Sequence structure for "SYSTEM"."LOGMNR_UIDS$"
-- ----------------------------
DROP SEQUENCE "SYSTEM"."LOGMNR_UIDS$";
CREATE SEQUENCE "SYSTEM"."LOGMNR_UIDS$"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 100
 NOCACHE 
 ORDER ;

-- ----------------------------
-- Sequence structure for "SYSTEM"."MVIEW$_ADVSEQ_GENERIC"
-- ----------------------------
DROP SEQUENCE "SYSTEM"."MVIEW$_ADVSEQ_GENERIC";
CREATE SEQUENCE "SYSTEM"."MVIEW$_ADVSEQ_GENERIC"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 4294967295
 START WITH 1
 CACHE 50;

-- ----------------------------
-- Sequence structure for "SYSTEM"."MVIEW$_ADVSEQ_ID"
-- ----------------------------
DROP SEQUENCE "SYSTEM"."MVIEW$_ADVSEQ_ID";
CREATE SEQUENCE "SYSTEM"."MVIEW$_ADVSEQ_ID"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 4294967295
 START WITH 1
 CACHE 20;

-- ----------------------------
-- Sequence structure for "SYSTEM"."REPCAT$_EXCEPTIONS_S"
-- ----------------------------
DROP SEQUENCE "SYSTEM"."REPCAT$_EXCEPTIONS_S";
CREATE SEQUENCE "SYSTEM"."REPCAT$_EXCEPTIONS_S"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 1
 CACHE 20;

-- ----------------------------
-- Sequence structure for "SYSTEM"."REPCAT$_FLAVOR_NAME_S"
-- ----------------------------
DROP SEQUENCE "SYSTEM"."REPCAT$_FLAVOR_NAME_S";
CREATE SEQUENCE "SYSTEM"."REPCAT$_FLAVOR_NAME_S"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 1
 NOCACHE ;

-- ----------------------------
-- Sequence structure for "SYSTEM"."REPCAT$_FLAVORS_S"
-- ----------------------------
DROP SEQUENCE "SYSTEM"."REPCAT$_FLAVORS_S";
CREATE SEQUENCE "SYSTEM"."REPCAT$_FLAVORS_S"
 INCREMENT BY 1
 MINVALUE -2147483647
 MAXVALUE 2147483647
 START WITH 1
 NOCACHE ;

-- ----------------------------
-- Sequence structure for "SYSTEM"."REPCAT$_REFRESH_TEMPLATES_S"
-- ----------------------------
DROP SEQUENCE "SYSTEM"."REPCAT$_REFRESH_TEMPLATES_S";
CREATE SEQUENCE "SYSTEM"."REPCAT$_REFRESH_TEMPLATES_S"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 1
 CACHE 20;

-- ----------------------------
-- Sequence structure for "SYSTEM"."REPCAT$_REPPROP_KEY"
-- ----------------------------
DROP SEQUENCE "SYSTEM"."REPCAT$_REPPROP_KEY";
CREATE SEQUENCE "SYSTEM"."REPCAT$_REPPROP_KEY"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 1
 CACHE 20;

-- ----------------------------
-- Sequence structure for "SYSTEM"."REPCAT$_RUNTIME_PARMS_S"
-- ----------------------------
DROP SEQUENCE "SYSTEM"."REPCAT$_RUNTIME_PARMS_S";
CREATE SEQUENCE "SYSTEM"."REPCAT$_RUNTIME_PARMS_S"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 1
 CACHE 20;

-- ----------------------------
-- Sequence structure for "SYSTEM"."REPCAT$_TEMP_OUTPUT_S"
-- ----------------------------
DROP SEQUENCE "SYSTEM"."REPCAT$_TEMP_OUTPUT_S";
CREATE SEQUENCE "SYSTEM"."REPCAT$_TEMP_OUTPUT_S"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 1
 CACHE 20;

-- ----------------------------
-- Sequence structure for "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS_S"
-- ----------------------------
DROP SEQUENCE "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS_S";
CREATE SEQUENCE "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS_S"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 1
 CACHE 20;

-- ----------------------------
-- Sequence structure for "SYSTEM"."REPCAT$_TEMPLATE_PARMS_S"
-- ----------------------------
DROP SEQUENCE "SYSTEM"."REPCAT$_TEMPLATE_PARMS_S";
CREATE SEQUENCE "SYSTEM"."REPCAT$_TEMPLATE_PARMS_S"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 1
 CACHE 20;

-- ----------------------------
-- Sequence structure for "SYSTEM"."REPCAT$_TEMPLATE_REFGROUPS_S"
-- ----------------------------
DROP SEQUENCE "SYSTEM"."REPCAT$_TEMPLATE_REFGROUPS_S";
CREATE SEQUENCE "SYSTEM"."REPCAT$_TEMPLATE_REFGROUPS_S"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 1
 CACHE 20;

-- ----------------------------
-- Sequence structure for "SYSTEM"."REPCAT$_TEMPLATE_SITES_S"
-- ----------------------------
DROP SEQUENCE "SYSTEM"."REPCAT$_TEMPLATE_SITES_S";
CREATE SEQUENCE "SYSTEM"."REPCAT$_TEMPLATE_SITES_S"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 1
 CACHE 20;

-- ----------------------------
-- Sequence structure for "SYSTEM"."REPCAT$_USER_AUTHORIZATIONS_S"
-- ----------------------------
DROP SEQUENCE "SYSTEM"."REPCAT$_USER_AUTHORIZATIONS_S";
CREATE SEQUENCE "SYSTEM"."REPCAT$_USER_AUTHORIZATIONS_S"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 1
 CACHE 20;

-- ----------------------------
-- Sequence structure for "SYSTEM"."REPCAT$_USER_PARM_VALUES_S"
-- ----------------------------
DROP SEQUENCE "SYSTEM"."REPCAT$_USER_PARM_VALUES_S";
CREATE SEQUENCE "SYSTEM"."REPCAT$_USER_PARM_VALUES_S"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 1
 CACHE 20;

-- ----------------------------
-- Sequence structure for "SYSTEM"."REPCAT_LOG_SEQUENCE"
-- ----------------------------
DROP SEQUENCE "SYSTEM"."REPCAT_LOG_SEQUENCE";
CREATE SEQUENCE "SYSTEM"."REPCAT_LOG_SEQUENCE"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 1
 CACHE 20;

-- ----------------------------
-- Sequence structure for "SYSTEM"."TEMPLATE$_TARGETS_S"
-- ----------------------------
DROP SEQUENCE "SYSTEM"."TEMPLATE$_TARGETS_S";
CREATE SEQUENCE "SYSTEM"."TEMPLATE$_TARGETS_S"
 INCREMENT BY 1
 MINVALUE 1
 MAXVALUE 9999999999999999999999999999
 START WITH 1
 CACHE 20;

-- ----------------------------
-- Uniques structure for table "SYSTEM"."AQ$_INTERNET_AGENT_PRIVS"
-- ----------------------------
ALTER TABLE "SYSTEM"."AQ$_INTERNET_AGENT_PRIVS" ADD UNIQUE ("AGENT_NAME", "DB_USERNAME");

-- ----------------------------
-- Checks structure for table "SYSTEM"."AQ$_INTERNET_AGENT_PRIVS"
-- ----------------------------
ALTER TABLE "SYSTEM"."AQ$_INTERNET_AGENT_PRIVS" ADD CHECK ("AGENT_NAME" IS NOT NULL);
ALTER TABLE "SYSTEM"."AQ$_INTERNET_AGENT_PRIVS" ADD CHECK ("DB_USERNAME" IS NOT NULL);

-- ----------------------------
-- Indexes structure for table AQ$_INTERNET_AGENTS
-- ----------------------------

-- ----------------------------
-- Checks structure for table "SYSTEM"."AQ$_INTERNET_AGENTS"
-- ----------------------------
ALTER TABLE "SYSTEM"."AQ$_INTERNET_AGENTS" ADD CHECK ("AGENT_NAME" IS NOT NULL);
ALTER TABLE "SYSTEM"."AQ$_INTERNET_AGENTS" ADD CHECK ("PROTOCOL" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."AQ$_INTERNET_AGENTS"
-- ----------------------------
ALTER TABLE "SYSTEM"."AQ$_INTERNET_AGENTS" ADD PRIMARY KEY ("AGENT_NAME");

-- ----------------------------
-- Indexes structure for table AQ$_QUEUE_TABLES
-- ----------------------------
CREATE INDEX "SYSTEM"."I1_QUEUE_TABLES"
ON "SYSTEM"."AQ$_QUEUE_TABLES" ("OBJNO" ASC, "SCHEMA" ASC, "FLAGS" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."AQ$_QUEUE_TABLES"
-- ----------------------------
ALTER TABLE "SYSTEM"."AQ$_QUEUE_TABLES" ADD CHECK ("SCHEMA" IS NOT NULL);
ALTER TABLE "SYSTEM"."AQ$_QUEUE_TABLES" ADD CHECK ("NAME" IS NOT NULL);
ALTER TABLE "SYSTEM"."AQ$_QUEUE_TABLES" ADD CHECK ("UDATA_TYPE" IS NOT NULL);
ALTER TABLE "SYSTEM"."AQ$_QUEUE_TABLES" ADD CHECK ("OBJNO" IS NOT NULL);
ALTER TABLE "SYSTEM"."AQ$_QUEUE_TABLES" ADD CHECK ("FLAGS" IS NOT NULL);
ALTER TABLE "SYSTEM"."AQ$_QUEUE_TABLES" ADD CHECK ("SORT_COLS" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."AQ$_QUEUE_TABLES"
-- ----------------------------
ALTER TABLE "SYSTEM"."AQ$_QUEUE_TABLES" ADD PRIMARY KEY ("OBJNO");

-- ----------------------------
-- Indexes structure for table AQ$_QUEUES
-- ----------------------------
CREATE INDEX "SYSTEM"."I1_QUEUES"
ON "SYSTEM"."AQ$_QUEUES" ("NAME" ASC, "EVENTID" ASC, "TABLE_OBJNO" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Uniques structure for table "SYSTEM"."AQ$_QUEUES"
-- ----------------------------
ALTER TABLE "SYSTEM"."AQ$_QUEUES" ADD UNIQUE ("NAME", "TABLE_OBJNO");

-- ----------------------------
-- Checks structure for table "SYSTEM"."AQ$_QUEUES"
-- ----------------------------
ALTER TABLE "SYSTEM"."AQ$_QUEUES" ADD CHECK ("EVENTID" IS NOT NULL);
ALTER TABLE "SYSTEM"."AQ$_QUEUES" ADD CHECK ("NAME" IS NOT NULL);
ALTER TABLE "SYSTEM"."AQ$_QUEUES" ADD CHECK ("TABLE_OBJNO" IS NOT NULL);
ALTER TABLE "SYSTEM"."AQ$_QUEUES" ADD CHECK ("USAGE" IS NOT NULL);
ALTER TABLE "SYSTEM"."AQ$_QUEUES" ADD CHECK ("ENABLE_FLAG" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."AQ$_QUEUES"
-- ----------------------------
ALTER TABLE "SYSTEM"."AQ$_QUEUES" ADD PRIMARY KEY ("OID");

-- ----------------------------
-- Indexes structure for table AQ$_SCHEDULES
-- ----------------------------

-- ----------------------------
-- Uniques structure for table "SYSTEM"."AQ$_SCHEDULES"
-- ----------------------------
ALTER TABLE "SYSTEM"."AQ$_SCHEDULES" ADD UNIQUE ("JOBNO");

-- ----------------------------
-- Checks structure for table "SYSTEM"."AQ$_SCHEDULES"
-- ----------------------------
ALTER TABLE "SYSTEM"."AQ$_SCHEDULES" ADD CHECK ("DESTINATION" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."AQ$_SCHEDULES"
-- ----------------------------
ALTER TABLE "SYSTEM"."AQ$_SCHEDULES" ADD PRIMARY KEY ("OID", "DESTINATION");

-- ----------------------------
-- Indexes structure for table DEF$_AQCALL
-- ----------------------------
CREATE INDEX "SYSTEM"."DEF$_TRANORDER"
ON "SYSTEM"."DEF$_AQCALL" ("CSCN" ASC, "ENQ_TID" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."DEF$_AQCALL"
-- ----------------------------
ALTER TABLE "SYSTEM"."DEF$_AQCALL" ADD PRIMARY KEY ("ENQ_TID", "STEP_NO");

-- ----------------------------
-- Indexes structure for table DEF$_AQERROR
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."DEF$_AQERROR"
-- ----------------------------
ALTER TABLE "SYSTEM"."DEF$_AQERROR" ADD PRIMARY KEY ("ENQ_TID", "STEP_NO");

-- ----------------------------
-- Indexes structure for table DEF$_CALLDEST
-- ----------------------------
CREATE INDEX "SYSTEM"."DEF$_CALLDEST_N2"
ON "SYSTEM"."DEF$_CALLDEST" ("DBLINK" ASC, "CATCHUP" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."DEF$_CALLDEST"
-- ----------------------------
ALTER TABLE "SYSTEM"."DEF$_CALLDEST" ADD PRIMARY KEY ("ENQ_TID", "DBLINK", "STEP_NO");

-- ----------------------------
-- Indexes structure for table DEF$_DEFAULTDEST
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."DEF$_DEFAULTDEST"
-- ----------------------------
ALTER TABLE "SYSTEM"."DEF$_DEFAULTDEST" ADD PRIMARY KEY ("DBLINK");

-- ----------------------------
-- Indexes structure for table DEF$_DESTINATION
-- ----------------------------

-- ----------------------------
-- Checks structure for table "SYSTEM"."DEF$_DESTINATION"
-- ----------------------------
ALTER TABLE "SYSTEM"."DEF$_DESTINATION" ADD CHECK ("LAST_DELIVERED" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."DEF$_DESTINATION"
-- ----------------------------
ALTER TABLE "SYSTEM"."DEF$_DESTINATION" ADD PRIMARY KEY ("DBLINK", "CATCHUP");

-- ----------------------------
-- Indexes structure for table DEF$_ERROR
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."DEF$_ERROR"
-- ----------------------------
ALTER TABLE "SYSTEM"."DEF$_ERROR" ADD PRIMARY KEY ("ENQ_TID");

-- ----------------------------
-- Indexes structure for table DEF$_LOB
-- ----------------------------
CREATE INDEX "SYSTEM"."DEF$_LOB_N1"
ON "SYSTEM"."DEF$_LOB" ("ENQ_TID" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."DEF$_LOB"
-- ----------------------------
ALTER TABLE "SYSTEM"."DEF$_LOB" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table DEF$_PROPAGATOR
-- ----------------------------

-- ----------------------------
-- Triggers structure for table "SYSTEM"."DEF$_PROPAGATOR"
-- ----------------------------
CREATE OR REPLACE TRIGGER "SYSTEM"."DEF$_PROPAGATOR_TRIG" BEFORE INSERT ON "SYSTEM"."DEF$_PROPAGATOR" REFERENCING OLD AS "OLD" NEW AS "NEW" ENABLE
DECLARE
  prop_count  NUMBER;
BEGIN
  SELECT count(*) into prop_count
    FROM system.def$_propagator;

  IF (prop_count > 0) THEN
    -- Raise duplicate propagator error
    sys.dbms_sys_error.raise_system_error(-23394);
  END IF;
END;;

-- ----------------------------
-- Checks structure for table "SYSTEM"."DEF$_PROPAGATOR"
-- ----------------------------
ALTER TABLE "SYSTEM"."DEF$_PROPAGATOR" ADD CHECK ("USERNAME" IS NOT NULL);
ALTER TABLE "SYSTEM"."DEF$_PROPAGATOR" ADD CHECK ("CREATED" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."DEF$_PROPAGATOR"
-- ----------------------------
ALTER TABLE "SYSTEM"."DEF$_PROPAGATOR" ADD PRIMARY KEY ("USERID");

-- ----------------------------
-- Indexes structure for table DEF$_PUSHED_TRANSACTIONS
-- ----------------------------

-- ----------------------------
-- Checks structure for table "SYSTEM"."DEF$_PUSHED_TRANSACTIONS"
-- ----------------------------
ALTER TABLE "SYSTEM"."DEF$_PUSHED_TRANSACTIONS" ADD CHECK (disabled IN ('T', 'F'));

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."DEF$_PUSHED_TRANSACTIONS"
-- ----------------------------
ALTER TABLE "SYSTEM"."DEF$_PUSHED_TRANSACTIONS" ADD PRIMARY KEY ("SOURCE_SITE_ID");

-- ----------------------------
-- Indexes structure for table DISASTER
-- ----------------------------

-- ----------------------------
-- Checks structure for table "SYSTEM"."DISASTER"
-- ----------------------------
ALTER TABLE "SYSTEM"."DISASTER" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."DISASTER" ADD CHECK ("TYPE" IS NOT NULL);
ALTER TABLE "SYSTEM"."DISASTER" ADD CHECK ("NAME" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."DISASTER"
-- ----------------------------
ALTER TABLE "SYSTEM"."DISASTER" ADD PRIMARY KEY ("ID");

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
-- Uniques structure for table "SYSTEM"."ECONOMICAL"
-- ----------------------------
ALTER TABLE "SYSTEM"."ECONOMICAL" ADD UNIQUE ("ECONOMICAL_ID");

-- ----------------------------
-- Checks structure for table "SYSTEM"."ECONOMICAL"
-- ----------------------------
ALTER TABLE "SYSTEM"."ECONOMICAL" ADD CHECK ("ECONOMICAL_ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."ECONOMICAL" ADD CHECK ("ECONOMICAL_EFFECT" IS NOT NULL);

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
-- Checks structure for table "SYSTEM"."ENVIRONMENTAL"
-- ----------------------------
ALTER TABLE "SYSTEM"."ENVIRONMENTAL" ADD CHECK ("ENVIRONMENTAL_ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."ENVIRONMENTAL" ADD CHECK ("ENVIRONMENTAL_EFFECT" IS NOT NULL);

-- ----------------------------
-- Checks structure for table "SYSTEM"."FOREIGNHELP"
-- ----------------------------
ALTER TABLE "SYSTEM"."FOREIGNHELP" ADD CHECK ("DIS_ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."FOREIGNHELP" ADD CHECK ("COUNTINST" IS NOT NULL);

-- ----------------------------
-- Indexes structure for table HELP
-- ----------------------------

-- ----------------------------
-- Checks structure for table "SYSTEM"."HELP"
-- ----------------------------
ALTER TABLE "SYSTEM"."HELP" ADD CHECK ("TOPIC" IS NOT NULL);
ALTER TABLE "SYSTEM"."HELP" ADD CHECK ("SEQ" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."HELP"
-- ----------------------------
ALTER TABLE "SYSTEM"."HELP" ADD PRIMARY KEY ("TOPIC", "SEQ");

-- ----------------------------
-- Indexes structure for table LOGMNR_AGE_SPILL$
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_AGE_SPILL$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_AGE_SPILL$" ADD PRIMARY KEY ("SESSION#", "XIDUSN", "XIDSLT", "XIDSQN", "CHUNK", "SEQUENCE#");

-- ----------------------------
-- Indexes structure for table LOGMNR_ATTRCOL$
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNR_I1ATTRCOL$"
ON "SYSTEM"."LOGMNR_ATTRCOL$" ("LOGMNR_UID" ASC, "OBJ#" ASC, "INTCOL#" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNR_ATTRCOL$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_ATTRCOL$" ADD CHECK ("OBJ#" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_ATTRCOL$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_ATTRCOL$" ADD PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;

-- ----------------------------
-- Indexes structure for table LOGMNR_ATTRIBUTE$
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNR_I1ATTRIBUTE$"
ON "SYSTEM"."LOGMNR_ATTRIBUTE$" ("LOGMNR_UID" ASC, "TOID" ASC, "VERSION#" ASC, "ATTRIBUTE#" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNR_ATTRIBUTE$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_ATTRIBUTE$" ADD CHECK ("TOID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_ATTRIBUTE$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_ATTRIBUTE$" ADD PRIMARY KEY ("LOGMNR_UID", "TOID", "VERSION#", "ATTRIBUTE#") DISABLE;

-- ----------------------------
-- Indexes structure for table LOGMNR_CCOL$
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNR_I1CCOL$"
ON "SYSTEM"."LOGMNR_CCOL$" ("LOGMNR_UID" ASC, "CON#" ASC, "INTCOL#" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNR_CCOL$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_CCOL$" ADD CHECK ("INTCOL#" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_CCOL$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_CCOL$" ADD PRIMARY KEY ("LOGMNR_UID", "CON#", "INTCOL#") DISABLE;

-- ----------------------------
-- Indexes structure for table LOGMNR_CDEF$
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNR_I1CDEF$"
ON "SYSTEM"."LOGMNR_CDEF$" ("LOGMNR_UID" ASC, "CON#" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNR_CDEF$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_CDEF$" ADD CHECK ("OBJ#" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_CDEF$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_CDEF$" ADD PRIMARY KEY ("LOGMNR_UID", "CON#") DISABLE;

-- ----------------------------
-- Indexes structure for table LOGMNR_COL$
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNR_I1COL$"
ON "SYSTEM"."LOGMNR_COL$" ("LOGMNR_UID" ASC, "OBJ#" ASC, "INTCOL#" ASC)
NOLOGGING
VISIBLE;
CREATE INDEX "SYSTEM"."LOGMNR_I2COL$"
ON "SYSTEM"."LOGMNR_COL$" ("LOGMNR_UID" ASC, "OBJ#" ASC, "NAME" ASC)
NOLOGGING
VISIBLE;
CREATE INDEX "SYSTEM"."LOGMNR_I3COL$"
ON "SYSTEM"."LOGMNR_COL$" ("LOGMNR_UID" ASC, "OBJ#" ASC, "COL#" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNR_COL$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_COL$" ADD CHECK ("OBJ#" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_COL$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_COL$" ADD PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;

-- ----------------------------
-- Indexes structure for table LOGMNR_COLTYPE$
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNR_I1COLTYPE$"
ON "SYSTEM"."LOGMNR_COLTYPE$" ("LOGMNR_UID" ASC, "OBJ#" ASC, "INTCOL#" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNR_COLTYPE$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_COLTYPE$" ADD CHECK ("OBJ#" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_COLTYPE$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_COLTYPE$" ADD PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;

-- ----------------------------
-- Indexes structure for table LOGMNR_DICTIONARY$
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNR_I1DICTIONARY$"
ON "SYSTEM"."LOGMNR_DICTIONARY$" ("LOGMNR_UID" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNR_DICTIONARY$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_DICTIONARY$" ADD CHECK ("DB_DICT_OBJECTCOUNT" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_DICTIONARY$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_DICTIONARY$" ADD PRIMARY KEY ("LOGMNR_UID") DISABLE;

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_DICTSTATE$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_DICTSTATE$" ADD PRIMARY KEY ("LOGMNR_UID") DISABLE;

-- ----------------------------
-- Indexes structure for table LOGMNR_ENC$
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNR_I1ENC$"
ON "SYSTEM"."LOGMNR_ENC$" ("LOGMNR_UID" ASC, "OBJ#" ASC, "OWNER#" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNR_ENC$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_ENC$" ADD CHECK ("MKEYID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_ENC$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_ENC$" ADD PRIMARY KEY ("LOGMNR_UID", "OBJ#", "OWNER#") DISABLE;

-- ----------------------------
-- Indexes structure for table LOGMNR_ICOL$
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNR_I1ICOL$"
ON "SYSTEM"."LOGMNR_ICOL$" ("LOGMNR_UID" ASC, "OBJ#" ASC, "INTCOL#" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNR_ICOL$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_ICOL$" ADD CHECK ("INTCOL#" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_ICOL$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_ICOL$" ADD PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;

-- ----------------------------
-- Indexes structure for table LOGMNR_IND$
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNR_I1IND$"
ON "SYSTEM"."LOGMNR_IND$" ("LOGMNR_UID" ASC, "OBJ#" ASC)
NOLOGGING
VISIBLE;
CREATE INDEX "SYSTEM"."LOGMNR_I2IND$"
ON "SYSTEM"."LOGMNR_IND$" ("LOGMNR_UID" ASC, "BO#" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNR_IND$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_IND$" ADD CHECK ("OBJ#" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_IND$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_IND$" ADD PRIMARY KEY ("LOGMNR_UID", "OBJ#") DISABLE;

-- ----------------------------
-- Indexes structure for table LOGMNR_INDCOMPART$
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNR_I1INDCOMPART$"
ON "SYSTEM"."LOGMNR_INDCOMPART$" ("LOGMNR_UID" ASC, "OBJ#" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNR_INDCOMPART$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_INDCOMPART$" ADD CHECK ("PART#" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_INDCOMPART$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_INDCOMPART$" ADD PRIMARY KEY ("LOGMNR_UID", "OBJ#") DISABLE;

-- ----------------------------
-- Indexes structure for table LOGMNR_INDPART$
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNR_I1INDPART$"
ON "SYSTEM"."LOGMNR_INDPART$" ("LOGMNR_UID" ASC, "OBJ#" ASC, "BO#" ASC)
NOLOGGING
VISIBLE;
CREATE INDEX "SYSTEM"."LOGMNR_I2INDPART$"
ON "SYSTEM"."LOGMNR_INDPART$" ("LOGMNR_UID" ASC, "BO#" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNR_INDPART$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_INDPART$" ADD CHECK ("TS#" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_INDPART$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_INDPART$" ADD PRIMARY KEY ("LOGMNR_UID", "OBJ#", "BO#") DISABLE;

-- ----------------------------
-- Indexes structure for table LOGMNR_INDSUBPART$
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNR_I1INDSUBPART$"
ON "SYSTEM"."LOGMNR_INDSUBPART$" ("LOGMNR_UID" ASC, "OBJ#" ASC, "POBJ#" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNR_INDSUBPART$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_INDSUBPART$" ADD CHECK ("TS#" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_INDSUBPART$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_INDSUBPART$" ADD PRIMARY KEY ("LOGMNR_UID", "OBJ#", "POBJ#") DISABLE;

-- ----------------------------
-- Indexes structure for table LOGMNR_INTEGRATED_SPILL$
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_INTEGRATED_SPILL$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_INTEGRATED_SPILL$" ADD PRIMARY KEY ("SESSION#", "XIDUSN", "XIDSLT", "XIDSQN", "CHUNK", "FLAG");

-- ----------------------------
-- Indexes structure for table LOGMNR_KOPM$
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNR_I1KOPM$"
ON "SYSTEM"."LOGMNR_KOPM$" ("LOGMNR_UID" ASC, "NAME" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNR_KOPM$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_KOPM$" ADD CHECK ("NAME" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_KOPM$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_KOPM$" ADD PRIMARY KEY ("LOGMNR_UID", "NAME") DISABLE;

-- ----------------------------
-- Indexes structure for table LOGMNR_LOB$
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNR_I1LOB$"
ON "SYSTEM"."LOGMNR_LOB$" ("LOGMNR_UID" ASC, "OBJ#" ASC, "INTCOL#" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNR_LOB$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_LOB$" ADD CHECK ("CHUNK" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_LOB$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_LOB$" ADD PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;

-- ----------------------------
-- Indexes structure for table LOGMNR_LOBFRAG$
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNR_I1LOBFRAG$"
ON "SYSTEM"."LOGMNR_LOBFRAG$" ("LOGMNR_UID" ASC, "FRAGOBJ#" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNR_LOBFRAG$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_LOBFRAG$" ADD CHECK ("FRAG#" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_LOBFRAG$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_LOBFRAG$" ADD PRIMARY KEY ("LOGMNR_UID", "FRAGOBJ#") DISABLE;

-- ----------------------------
-- Indexes structure for table LOGMNR_LOG$
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNR_LOG$_FIRST_CHANGE#"
ON "SYSTEM"."LOGMNR_LOG$" ("FIRST_CHANGE#" ASC)
LOGGING
VISIBLE;
CREATE INDEX "SYSTEM"."LOGMNR_LOG$_FLAGS"
ON "SYSTEM"."LOGMNR_LOG$" ("FLAGS" ASC)
LOGGING
VISIBLE;
CREATE INDEX "SYSTEM"."LOGMNR_LOG$_RECID"
ON "SYSTEM"."LOGMNR_LOG$" ("RECID" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_LOG$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_LOG$" ADD PRIMARY KEY ("SESSION#", "THREAD#", "SEQUENCE#", "FIRST_CHANGE#", "DB_ID", "RESETLOGS_CHANGE#", "RESET_TIMESTAMP");

-- ----------------------------
-- Indexes structure for table LOGMNR_LOGMNR_BUILDLOG
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNR_I1LOGMNR_BUILDLOG"
ON "SYSTEM"."LOGMNR_LOGMNR_BUILDLOG" ("LOGMNR_UID" ASC, "INITIAL_XID" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNR_LOGMNR_BUILDLOG"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_LOGMNR_BUILDLOG" ADD CHECK ("INITIAL_XID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_LOGMNR_BUILDLOG"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_LOGMNR_BUILDLOG" ADD PRIMARY KEY ("LOGMNR_UID", "INITIAL_XID") DISABLE;

-- ----------------------------
-- Indexes structure for table LOGMNR_NTAB$
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNR_I1NTAB$"
ON "SYSTEM"."LOGMNR_NTAB$" ("LOGMNR_UID" ASC, "OBJ#" ASC, "INTCOL#" ASC)
NOLOGGING
VISIBLE;
CREATE INDEX "SYSTEM"."LOGMNR_I2NTAB$"
ON "SYSTEM"."LOGMNR_NTAB$" ("LOGMNR_UID" ASC, "NTAB#" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNR_NTAB$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_NTAB$" ADD CHECK ("OBJ#" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_NTAB$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_NTAB$" ADD PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;

-- ----------------------------
-- Indexes structure for table LOGMNR_OBJ$
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNR_I1OBJ$"
ON "SYSTEM"."LOGMNR_OBJ$" ("LOGMNR_UID" ASC, "OBJ#" ASC)
NOLOGGING
VISIBLE;
CREATE INDEX "SYSTEM"."LOGMNR_I2OBJ$"
ON "SYSTEM"."LOGMNR_OBJ$" ("LOGMNR_UID" ASC, "OID$" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNR_OBJ$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_OBJ$" ADD CHECK ("OBJ#" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_OBJ$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_OBJ$" ADD PRIMARY KEY ("LOGMNR_UID", "OBJ#") DISABLE;

-- ----------------------------
-- Indexes structure for table LOGMNR_OPQTYPE$
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNR_I1OPQTYPE$"
ON "SYSTEM"."LOGMNR_OPQTYPE$" ("LOGMNR_UID" ASC, "OBJ#" ASC, "INTCOL#" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNR_OPQTYPE$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_OPQTYPE$" ADD CHECK ("INTCOL#" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGMNR_OPQTYPE$" ADD CHECK ("OBJ#" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_OPQTYPE$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_OPQTYPE$" ADD PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;

-- ----------------------------
-- Indexes structure for table LOGMNR_PARAMETER$
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNR_PARAMETER_INDX"
ON "SYSTEM"."LOGMNR_PARAMETER$" ("SESSION#" ASC, "NAME" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNR_PARAMETER$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_PARAMETER$" ADD CHECK ("SESSION#" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGMNR_PARAMETER$" ADD CHECK ("NAME" IS NOT NULL);

-- ----------------------------
-- Indexes structure for table LOGMNR_PARTOBJ$
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNR_I1PARTOBJ$"
ON "SYSTEM"."LOGMNR_PARTOBJ$" ("LOGMNR_UID" ASC, "OBJ#" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNR_PARTOBJ$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_PARTOBJ$" ADD CHECK ("OBJ#" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_PARTOBJ$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_PARTOBJ$" ADD PRIMARY KEY ("LOGMNR_UID", "OBJ#") DISABLE;

-- ----------------------------
-- Indexes structure for table LOGMNR_PROCESSED_LOG$
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_PROCESSED_LOG$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_PROCESSED_LOG$" ADD PRIMARY KEY ("SESSION#", "THREAD#");

-- ----------------------------
-- Indexes structure for table LOGMNR_PROPS$
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNR_I1PROPS$"
ON "SYSTEM"."LOGMNR_PROPS$" ("LOGMNR_UID" ASC, "NAME" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNR_PROPS$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_PROPS$" ADD CHECK ("NAME" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_PROPS$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_PROPS$" ADD PRIMARY KEY ("LOGMNR_UID", "NAME") DISABLE;

-- ----------------------------
-- Indexes structure for table LOGMNR_REFCON$
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNR_I1REFCON$"
ON "SYSTEM"."LOGMNR_REFCON$" ("LOGMNR_UID" ASC, "OBJ#" ASC, "INTCOL#" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNR_REFCON$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_REFCON$" ADD CHECK ("OBJ#" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_REFCON$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_REFCON$" ADD PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;

-- ----------------------------
-- Indexes structure for table LOGMNR_RESTART_CKPT$
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_RESTART_CKPT$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_RESTART_CKPT$" ADD PRIMARY KEY ("SESSION#", "CKPT_SCN", "XIDUSN", "XIDSLT", "XIDSQN", "SESSION_NUM", "SERIAL_NUM");

-- ----------------------------
-- Indexes structure for table LOGMNR_RESTART_CKPT_TXINFO$
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_RESTART_CKPT_TXINFO$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_RESTART_CKPT_TXINFO$" ADD PRIMARY KEY ("SESSION#", "XIDUSN", "XIDSLT", "XIDSQN", "SESSION_NUM", "SERIAL_NUM", "EFFECTIVE_SCN");

-- ----------------------------
-- Indexes structure for table LOGMNR_SEED$
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNR_I1SEED$"
ON "SYSTEM"."LOGMNR_SEED$" ("LOGMNR_UID" ASC, "OBJ#" ASC, "INTCOL#" ASC)
NOLOGGING
VISIBLE;
CREATE INDEX "SYSTEM"."LOGMNR_I2SEED$"
ON "SYSTEM"."LOGMNR_SEED$" ("LOGMNR_UID" ASC, "SCHEMANAME" ASC, "TABLE_NAME" ASC, "COL_NAME" ASC, "OBJ#" ASC, "INTCOL#" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNR_SEED$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_SEED$" ADD CHECK ("NULL$" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_SEED$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_SEED$" ADD PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#") DISABLE;

-- ----------------------------
-- Indexes structure for table LOGMNR_SESSION$
-- ----------------------------

-- ----------------------------
-- Uniques structure for table "SYSTEM"."LOGMNR_SESSION$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_SESSION$" ADD UNIQUE ("SESSION_NAME");

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNR_SESSION$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_SESSION$" ADD CHECK ("SESSION_NAME" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_SESSION$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_SESSION$" ADD PRIMARY KEY ("SESSION#");

-- ----------------------------
-- Indexes structure for table LOGMNR_SESSION_ACTIONS$
-- ----------------------------

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNR_SESSION_ACTIONS$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_SESSION_ACTIONS$" ADD CHECK ("ACTIONNAME" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGMNR_SESSION_ACTIONS$" ADD CHECK ("LOGMNRSESSION#" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGMNR_SESSION_ACTIONS$" ADD CHECK ("PROCESSROLE#" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGMNR_SESSION_ACTIONS$" ADD CHECK ("ACTIONTYPE#" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_SESSION_ACTIONS$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_SESSION_ACTIONS$" ADD PRIMARY KEY ("LOGMNRSESSION#", "ACTIONNAME");

-- ----------------------------
-- Indexes structure for table LOGMNR_SESSION_EVOLVE$
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_SESSION_EVOLVE$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_SESSION_EVOLVE$" ADD PRIMARY KEY ("SESSION#", "DB_ID", "RESET_SCN", "RESET_TIMESTAMP");

-- ----------------------------
-- Indexes structure for table LOGMNR_SPILL$
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_SPILL$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_SPILL$" ADD PRIMARY KEY ("SESSION#", "XIDUSN", "XIDSLT", "XIDSQN", "CHUNK", "STARTIDX", "ENDIDX", "FLAG", "SEQUENCE#");

-- ----------------------------
-- Indexes structure for table LOGMNR_SUBCOLTYPE$
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNR_I1SUBCOLTYPE$"
ON "SYSTEM"."LOGMNR_SUBCOLTYPE$" ("LOGMNR_UID" ASC, "OBJ#" ASC, "INTCOL#" ASC, "TOID" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNR_SUBCOLTYPE$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_SUBCOLTYPE$" ADD CHECK ("INTCOL#" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGMNR_SUBCOLTYPE$" ADD CHECK ("TOID" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGMNR_SUBCOLTYPE$" ADD CHECK ("VERSION#" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGMNR_SUBCOLTYPE$" ADD CHECK ("OBJ#" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_SUBCOLTYPE$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_SUBCOLTYPE$" ADD PRIMARY KEY ("LOGMNR_UID", "OBJ#", "INTCOL#", "TOID") DISABLE;

-- ----------------------------
-- Indexes structure for table LOGMNR_TAB$
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNR_I1TAB$"
ON "SYSTEM"."LOGMNR_TAB$" ("LOGMNR_UID" ASC, "OBJ#" ASC)
NOLOGGING
VISIBLE;
CREATE INDEX "SYSTEM"."LOGMNR_I2TAB$"
ON "SYSTEM"."LOGMNR_TAB$" ("LOGMNR_UID" ASC, "BOBJ#" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNR_TAB$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_TAB$" ADD CHECK ("OBJ#" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_TAB$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_TAB$" ADD PRIMARY KEY ("LOGMNR_UID", "OBJ#") DISABLE;

-- ----------------------------
-- Indexes structure for table LOGMNR_TABCOMPART$
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNR_I1TABCOMPART$"
ON "SYSTEM"."LOGMNR_TABCOMPART$" ("LOGMNR_UID" ASC, "OBJ#" ASC)
NOLOGGING
VISIBLE;
CREATE INDEX "SYSTEM"."LOGMNR_I2TABCOMPART$"
ON "SYSTEM"."LOGMNR_TABCOMPART$" ("LOGMNR_UID" ASC, "BO#" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNR_TABCOMPART$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_TABCOMPART$" ADD CHECK ("PART#" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_TABCOMPART$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_TABCOMPART$" ADD PRIMARY KEY ("LOGMNR_UID", "OBJ#") DISABLE;

-- ----------------------------
-- Indexes structure for table LOGMNR_TABPART$
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNR_I1TABPART$"
ON "SYSTEM"."LOGMNR_TABPART$" ("LOGMNR_UID" ASC, "OBJ#" ASC, "BO#" ASC)
NOLOGGING
VISIBLE;
CREATE INDEX "SYSTEM"."LOGMNR_I2TABPART$"
ON "SYSTEM"."LOGMNR_TABPART$" ("LOGMNR_UID" ASC, "BO#" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNR_TABPART$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_TABPART$" ADD CHECK ("BO#" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_TABPART$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_TABPART$" ADD PRIMARY KEY ("LOGMNR_UID", "OBJ#", "BO#") DISABLE;

-- ----------------------------
-- Indexes structure for table LOGMNR_TABSUBPART$
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNR_I1TABSUBPART$"
ON "SYSTEM"."LOGMNR_TABSUBPART$" ("LOGMNR_UID" ASC, "OBJ#" ASC, "POBJ#" ASC)
NOLOGGING
VISIBLE;
CREATE INDEX "SYSTEM"."LOGMNR_I2TABSUBPART$"
ON "SYSTEM"."LOGMNR_TABSUBPART$" ("LOGMNR_UID" ASC, "POBJ#" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNR_TABSUBPART$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_TABSUBPART$" ADD CHECK ("TS#" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_TABSUBPART$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_TABSUBPART$" ADD PRIMARY KEY ("LOGMNR_UID", "OBJ#", "POBJ#") DISABLE;

-- ----------------------------
-- Indexes structure for table LOGMNR_TS$
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNR_I1TS$"
ON "SYSTEM"."LOGMNR_TS$" ("LOGMNR_UID" ASC, "TS#" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNR_TS$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_TS$" ADD CHECK ("BLOCKSIZE" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_TS$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_TS$" ADD PRIMARY KEY ("LOGMNR_UID", "TS#") DISABLE;

-- ----------------------------
-- Indexes structure for table LOGMNR_TYPE$
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNR_I1TYPE$"
ON "SYSTEM"."LOGMNR_TYPE$" ("LOGMNR_UID" ASC, "TOID" ASC, "VERSION#" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNR_TYPE$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_TYPE$" ADD CHECK ("TOID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_TYPE$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_TYPE$" ADD PRIMARY KEY ("LOGMNR_UID", "TOID", "VERSION#") DISABLE;

-- ----------------------------
-- Indexes structure for table LOGMNR_UID$
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_UID$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_UID$" ADD PRIMARY KEY ("SESSION#");

-- ----------------------------
-- Indexes structure for table LOGMNR_USER$
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNR_I1USER$"
ON "SYSTEM"."LOGMNR_USER$" ("LOGMNR_UID" ASC, "USER#" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNR_USER$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_USER$" ADD CHECK ("NAME" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNR_USER$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNR_USER$" ADD PRIMARY KEY ("LOGMNR_UID", "USER#") DISABLE;

-- ----------------------------
-- Indexes structure for table LOGMNRC_DBNAME_UID_MAP
-- ----------------------------

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNRC_DBNAME_UID_MAP"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNRC_DBNAME_UID_MAP" ADD CHECK ("GLOBAL_NAME" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNRC_DBNAME_UID_MAP"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNRC_DBNAME_UID_MAP" ADD PRIMARY KEY ("GLOBAL_NAME");

-- ----------------------------
-- Indexes structure for table LOGMNRC_GSBA
-- ----------------------------

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNRC_GSBA"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNRC_GSBA" ADD CHECK ("LOGMNR_UID" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGMNRC_GSBA" ADD CHECK ("AS_OF_SCN" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNRC_GSBA"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNRC_GSBA" ADD PRIMARY KEY ("LOGMNR_UID", "AS_OF_SCN");

-- ----------------------------
-- Indexes structure for table LOGMNRC_GSII
-- ----------------------------

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNRC_GSII"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNRC_GSII" ADD CHECK ("LOGMNR_UID" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGMNRC_GSII" ADD CHECK ("OBJ#" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGMNRC_GSII" ADD CHECK ("BO#" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGMNRC_GSII" ADD CHECK ("INDTYPE#" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNRC_GSII"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNRC_GSII" ADD PRIMARY KEY ("LOGMNR_UID", "OBJ#");

-- ----------------------------
-- Indexes structure for table LOGMNRC_GTCS
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNRC_I2GTCS"
ON "SYSTEM"."LOGMNRC_GTCS" ("LOGMNR_UID" ASC, "OBJ#" ASC, "OBJV#" ASC, "SEGCOL#" ASC, "INTCOL#" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNRC_GTCS"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNRC_GTCS" ADD CHECK ("LOGMNR_UID" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGMNRC_GTCS" ADD CHECK ("OBJ#" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGMNRC_GTCS" ADD CHECK ("OBJV#" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGMNRC_GTCS" ADD CHECK ("SEGCOL#" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGMNRC_GTCS" ADD CHECK ("INTCOL#" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGMNRC_GTCS" ADD CHECK ("COLNAME" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGMNRC_GTCS" ADD CHECK ("TYPE#" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNRC_GTCS"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNRC_GTCS" ADD PRIMARY KEY ("LOGMNR_UID", "OBJ#", "OBJV#", "INTCOL#");

-- ----------------------------
-- Indexes structure for table LOGMNRC_GTLO
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNRC_I2GTLO"
ON "SYSTEM"."LOGMNRC_GTLO" ("LOGMNR_UID" ASC, "BASEOBJ#" ASC, "BASEOBJV#" ASC)
NOLOGGING
VISIBLE;
CREATE INDEX "SYSTEM"."LOGMNRC_I3GTLO"
ON "SYSTEM"."LOGMNRC_GTLO" ("LOGMNR_UID" ASC, "DROP_SCN" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNRC_GTLO"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNRC_GTLO" ADD CHECK ("LOGMNR_UID" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGMNRC_GTLO" ADD CHECK ("KEYOBJ#" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGMNRC_GTLO" ADD CHECK ("LVLCNT" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGMNRC_GTLO" ADD CHECK ("BASEOBJ#" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGMNRC_GTLO" ADD CHECK ("BASEOBJV#" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGMNRC_GTLO" ADD CHECK ("LVL0TYPE#" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGMNRC_GTLO" ADD CHECK ("OWNERNAME" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGMNRC_GTLO" ADD CHECK ("LVL0NAME" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGMNRC_GTLO" ADD CHECK ("INTCOLS" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGMNRC_GTLO" ADD CHECK ("START_SCN" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNRC_GTLO"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNRC_GTLO" ADD PRIMARY KEY ("LOGMNR_UID", "KEYOBJ#", "BASEOBJV#");

-- ----------------------------
-- Indexes structure for table LOGMNRP_CTAS_PART_MAP
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGMNRP_CTAS_PART_MAP_I"
ON "SYSTEM"."LOGMNRP_CTAS_PART_MAP" ("LOGMNR_UID" ASC, "BASEOBJ#" ASC, "BASEOBJV#" ASC, "PART#" ASC)
NOLOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNRP_CTAS_PART_MAP"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNRP_CTAS_PART_MAP" ADD CHECK ("LOGMNR_UID" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGMNRP_CTAS_PART_MAP" ADD CHECK ("BASEOBJ#" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGMNRP_CTAS_PART_MAP" ADD CHECK ("BASEOBJV#" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGMNRP_CTAS_PART_MAP" ADD CHECK ("KEYOBJ#" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGMNRP_CTAS_PART_MAP" ADD CHECK ("PART#" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNRP_CTAS_PART_MAP"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNRP_CTAS_PART_MAP" ADD PRIMARY KEY ("LOGMNR_UID", "BASEOBJV#", "KEYOBJ#");

-- ----------------------------
-- Indexes structure for table LOGMNRT_MDDL$
-- ----------------------------

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGMNRT_MDDL$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNRT_MDDL$" ADD CHECK ("DEST_ROWID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGMNRT_MDDL$"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGMNRT_MDDL$" ADD PRIMARY KEY ("SOURCE_OBJ#", "SOURCE_ROWID");

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGSTDBY$APPLY_MILESTONE"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGSTDBY$APPLY_MILESTONE" ADD CHECK ("SESSION_ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGSTDBY$APPLY_MILESTONE" ADD CHECK ("COMMIT_SCN" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGSTDBY$APPLY_MILESTONE" ADD CHECK ("SYNCH_SCN" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGSTDBY$APPLY_MILESTONE" ADD CHECK ("EPOCH" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGSTDBY$APPLY_MILESTONE" ADD CHECK ("PROCESSED_SCN" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGSTDBY$APPLY_MILESTONE" ADD CHECK ("FETCHLWM_SCN" IS NOT NULL);

-- ----------------------------
-- Indexes structure for table LOGSTDBY$EDS_TABLES
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGSTDBY$EDS_TABLES"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGSTDBY$EDS_TABLES" ADD PRIMARY KEY ("OWNER", "TABLE_NAME");

-- ----------------------------
-- Indexes structure for table LOGSTDBY$EVENTS
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGSTDBY$EVENTS_IND"
ON "SYSTEM"."LOGSTDBY$EVENTS" ("EVENT_TIME" ASC)
LOGGING
VISIBLE;
CREATE INDEX "SYSTEM"."LOGSTDBY$EVENTS_IND_SCN"
ON "SYSTEM"."LOGSTDBY$EVENTS" ("COMMIT_SCN" ASC)
LOGGING
VISIBLE;
CREATE INDEX "SYSTEM"."LOGSTDBY$EVENTS_IND_XID"
ON "SYSTEM"."LOGSTDBY$EVENTS" ("XIDUSN" ASC, "XIDSLT" ASC, "XIDSQN" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGSTDBY$EVENTS"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGSTDBY$EVENTS" ADD CHECK ("EVENT_TIME" IS NOT NULL);

-- ----------------------------
-- Indexes structure for table LOGSTDBY$FLASHBACK_SCN
-- ----------------------------

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGSTDBY$FLASHBACK_SCN"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGSTDBY$FLASHBACK_SCN" ADD CHECK ("PRIMARY_SCN" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."LOGSTDBY$FLASHBACK_SCN"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGSTDBY$FLASHBACK_SCN" ADD PRIMARY KEY ("PRIMARY_SCN");

-- ----------------------------
-- Indexes structure for table LOGSTDBY$SKIP
-- ----------------------------
CREATE INDEX "SYSTEM"."LOGSTDBY$SKIP_IDX1"
ON "SYSTEM"."LOGSTDBY$SKIP" ("USE_LIKE" ASC, "SCHEMA" ASC, "NAME" ASC)
LOGGING
VISIBLE;
CREATE INDEX "SYSTEM"."LOGSTDBY$SKIP_IDX2"
ON "SYSTEM"."LOGSTDBY$SKIP" ("STATEMENT_OPT" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Indexes structure for table LOGSTDBY$SKIP_SUPPORT
-- ----------------------------
CREATE UNIQUE INDEX "SYSTEM"."LOGSTDBY$SKIP_IND"
ON "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" ("NAME" ASC, "ACTION" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."LOGSTDBY$SKIP_SUPPORT"
-- ----------------------------
ALTER TABLE "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" ADD CHECK ("ACTION" IS NOT NULL);
ALTER TABLE "SYSTEM"."LOGSTDBY$SKIP_SUPPORT" ADD CHECK ("NAME" IS NOT NULL);

-- ----------------------------
-- Indexes structure for table MVIEW$_ADV_AJG
-- ----------------------------

-- ----------------------------
-- Checks structure for table "SYSTEM"."MVIEW$_ADV_AJG"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_AJG" ADD CHECK ("AJGID#" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_AJG" ADD CHECK ("RUNID#" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_AJG" ADD CHECK ("AJGDESLEN" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_AJG" ADD CHECK ("AJGDES" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_AJG" ADD CHECK ("HASHVALUE" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."MVIEW$_ADV_AJG"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_AJG" ADD PRIMARY KEY ("AJGID#");

-- ----------------------------
-- Indexes structure for table MVIEW$_ADV_BASETABLE
-- ----------------------------
CREATE INDEX "SYSTEM"."MVIEW$_ADV_BASETABLE_IDX_01"
ON "SYSTEM"."MVIEW$_ADV_BASETABLE" ("QUERYID#" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."MVIEW$_ADV_BASETABLE"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_BASETABLE" ADD CHECK ("COLLECTIONID#" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_BASETABLE" ADD CHECK ("QUERYID#" IS NOT NULL);

-- ----------------------------
-- Indexes structure for table MVIEW$_ADV_CLIQUE
-- ----------------------------

-- ----------------------------
-- Checks structure for table "SYSTEM"."MVIEW$_ADV_CLIQUE"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE" ADD CHECK ("CLIQUEID#" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE" ADD CHECK ("RUNID#" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE" ADD CHECK ("CLIQUEDESLEN" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE" ADD CHECK ("CLIQUEDES" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE" ADD CHECK ("HASHVALUE" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE" ADD CHECK ("FREQUENCY" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE" ADD CHECK ("BYTECOST" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE" ADD CHECK ("ROWSIZE" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE" ADD CHECK ("NUMROWS" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."MVIEW$_ADV_CLIQUE"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE" ADD PRIMARY KEY ("CLIQUEID#");

-- ----------------------------
-- Indexes structure for table MVIEW$_ADV_ELIGIBLE
-- ----------------------------

-- ----------------------------
-- Checks structure for table "SYSTEM"."MVIEW$_ADV_ELIGIBLE"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_ELIGIBLE" ADD CHECK ("SUMOBJN#" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_ELIGIBLE" ADD CHECK ("RUNID#" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_ELIGIBLE" ADD CHECK ("BYTECOST" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_ELIGIBLE" ADD CHECK ("FLAGS" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_ELIGIBLE" ADD CHECK ("FREQUENCY" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."MVIEW$_ADV_ELIGIBLE"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_ELIGIBLE" ADD PRIMARY KEY ("SUMOBJN#", "RUNID#");

-- ----------------------------
-- Indexes structure for table MVIEW$_ADV_FILTER
-- ----------------------------

-- ----------------------------
-- Checks structure for table "SYSTEM"."MVIEW$_ADV_FILTER"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_FILTER" ADD CHECK ("FILTERID#" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_FILTER" ADD CHECK ("SUBFILTERNUM#" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_FILTER" ADD CHECK ("SUBFILTERTYPE" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."MVIEW$_ADV_FILTER"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_FILTER" ADD PRIMARY KEY ("FILTERID#", "SUBFILTERNUM#");

-- ----------------------------
-- Checks structure for table "SYSTEM"."MVIEW$_ADV_FILTERINSTANCE"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_FILTERINSTANCE" ADD CHECK ("RUNID#" IS NOT NULL);

-- ----------------------------
-- Indexes structure for table MVIEW$_ADV_FJG
-- ----------------------------

-- ----------------------------
-- Checks structure for table "SYSTEM"."MVIEW$_ADV_FJG"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_FJG" ADD CHECK ("FJGID#" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_FJG" ADD CHECK ("AJGID#" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_FJG" ADD CHECK ("FJGDESLEN" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_FJG" ADD CHECK ("FJGDES" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_FJG" ADD CHECK ("HASHVALUE" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."MVIEW$_ADV_FJG"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_FJG" ADD PRIMARY KEY ("FJGID#");

-- ----------------------------
-- Indexes structure for table MVIEW$_ADV_GC
-- ----------------------------

-- ----------------------------
-- Checks structure for table "SYSTEM"."MVIEW$_ADV_GC"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_GC" ADD CHECK ("GCID#" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_GC" ADD CHECK ("FJGID#" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_GC" ADD CHECK ("GCDESLEN" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_GC" ADD CHECK ("GCDES" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_GC" ADD CHECK ("HASHVALUE" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."MVIEW$_ADV_GC"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_GC" ADD PRIMARY KEY ("GCID#");

-- ----------------------------
-- Indexes structure for table MVIEW$_ADV_INFO
-- ----------------------------

-- ----------------------------
-- Checks structure for table "SYSTEM"."MVIEW$_ADV_INFO"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_INFO" ADD CHECK ("RUNID#" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_INFO" ADD CHECK ("SEQ#" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_INFO" ADD CHECK ("TYPE" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_INFO" ADD CHECK ("INFOLEN" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."MVIEW$_ADV_INFO"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_INFO" ADD PRIMARY KEY ("RUNID#", "SEQ#");

-- ----------------------------
-- Indexes structure for table MVIEW$_ADV_JOURNAL
-- ----------------------------

-- ----------------------------
-- Checks structure for table "SYSTEM"."MVIEW$_ADV_JOURNAL"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_JOURNAL" ADD CHECK ("RUNID#" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_JOURNAL" ADD CHECK ("SEQ#" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_JOURNAL" ADD CHECK ("TIMESTAMP" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_JOURNAL" ADD CHECK ("FLAGS" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."MVIEW$_ADV_JOURNAL"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_JOURNAL" ADD PRIMARY KEY ("RUNID#", "SEQ#");

-- ----------------------------
-- Indexes structure for table MVIEW$_ADV_LEVEL
-- ----------------------------

-- ----------------------------
-- Checks structure for table "SYSTEM"."MVIEW$_ADV_LEVEL"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_LEVEL" ADD CHECK ("RUNID#" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_LEVEL" ADD CHECK ("LEVELID#" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_LEVEL" ADD CHECK ("FLAGS" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_LEVEL" ADD CHECK ("TBLOBJ#" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_LEVEL" ADD CHECK ("COLUMNLIST" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."MVIEW$_ADV_LEVEL"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_LEVEL" ADD PRIMARY KEY ("RUNID#", "LEVELID#");

-- ----------------------------
-- Indexes structure for table MVIEW$_ADV_LOG
-- ----------------------------

-- ----------------------------
-- Checks structure for table "SYSTEM"."MVIEW$_ADV_LOG"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_LOG" ADD CHECK ("STATUS" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."MVIEW$_ADV_LOG"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_LOG" ADD PRIMARY KEY ("RUNID#");

-- ----------------------------
-- Indexes structure for table MVIEW$_ADV_OUTPUT
-- ----------------------------

-- ----------------------------
-- Checks structure for table "SYSTEM"."MVIEW$_ADV_OUTPUT"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_OUTPUT" ADD CHECK ("RUNID#" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_OUTPUT" ADD CHECK ("OUTPUT_TYPE" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_OUTPUT" ADD CHECK ("BENEFIT_TO_COST_RATIO" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."MVIEW$_ADV_OUTPUT"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_OUTPUT" ADD PRIMARY KEY ("RUNID#", "RANK#");

-- ----------------------------
-- Indexes structure for table MVIEW$_ADV_PARAMETERS
-- ----------------------------

-- ----------------------------
-- Checks structure for table "SYSTEM"."MVIEW$_ADV_PARAMETERS"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_PARAMETERS" ADD CHECK ("PARAMETER_TYPE" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."MVIEW$_ADV_PARAMETERS"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_PARAMETERS" ADD PRIMARY KEY ("PARAMETER_NAME");

-- ----------------------------
-- Indexes structure for table MVIEW$_ADV_PRETTY
-- ----------------------------
CREATE INDEX "SYSTEM"."MVIEW$_ADV_PRETTY_IDX_01"
ON "SYSTEM"."MVIEW$_ADV_PRETTY" ("QUERYID#" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Indexes structure for table MVIEW$_ADV_ROLLUP
-- ----------------------------

-- ----------------------------
-- Checks structure for table "SYSTEM"."MVIEW$_ADV_ROLLUP"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_ROLLUP" ADD CHECK ("RUNID#" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_ROLLUP" ADD CHECK ("CLEVELID#" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_ROLLUP" ADD CHECK ("PLEVELID#" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_ROLLUP" ADD CHECK ("FLAGS" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."MVIEW$_ADV_ROLLUP"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_ROLLUP" ADD PRIMARY KEY ("RUNID#", "CLEVELID#", "PLEVELID#");

-- ----------------------------
-- Indexes structure for table MVIEW$_ADV_SQLDEPEND
-- ----------------------------
CREATE INDEX "SYSTEM"."MVIEW$_ADV_SQLDEPEND_IDX_01"
ON "SYSTEM"."MVIEW$_ADV_SQLDEPEND" ("COLLECTIONID#" ASC, "FROM_ADDRESS" ASC, "FROM_HASH" ASC, "INST_ID" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Indexes structure for table MVIEW$_ADV_TEMP
-- ----------------------------
CREATE INDEX "SYSTEM"."MVIEW$_ADV_TEMP_IDX_01"
ON "SYSTEM"."MVIEW$_ADV_TEMP" ("ID#" ASC, "SEQ#" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Indexes structure for table MVIEW$_ADV_WORKLOAD
-- ----------------------------
CREATE INDEX "SYSTEM"."MVIEW$_ADV_WORKLOAD_IDX_01"
ON "SYSTEM"."MVIEW$_ADV_WORKLOAD" ("COLLECTIONID#" ASC, "QUERYID#" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."MVIEW$_ADV_WORKLOAD"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_WORKLOAD" ADD CHECK ("QUERYID#" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_WORKLOAD" ADD CHECK ("COLLECTIONID#" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_WORKLOAD" ADD CHECK ("COLLECTTIME" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_WORKLOAD" ADD CHECK ("UNAME" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_WORKLOAD" ADD CHECK ("SQL_TEXT" IS NOT NULL);
ALTER TABLE "SYSTEM"."MVIEW$_ADV_WORKLOAD" ADD CHECK ("SQL_TEXTLEN" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."MVIEW$_ADV_WORKLOAD"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_WORKLOAD" ADD PRIMARY KEY ("QUERYID#");

-- ----------------------------
-- Indexes structure for table OL$
-- ----------------------------
CREATE UNIQUE INDEX "SYSTEM"."OL$NAME"
ON "SYSTEM"."OL$" ("OL_NAME" ASC)
LOGGING
VISIBLE;
CREATE UNIQUE INDEX "SYSTEM"."OL$SIGNATURE"
ON "SYSTEM"."OL$" ("SIGNATURE" ASC, "CATEGORY" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Indexes structure for table OL$HINTS
-- ----------------------------
CREATE UNIQUE INDEX "SYSTEM"."OL$HNT_NUM"
ON "SYSTEM"."OL$HINTS" ("OL_NAME" ASC, "HINT#" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."PREVENTION"
-- ----------------------------
ALTER TABLE "SYSTEM"."PREVENTION" ADD CHECK ("PREVENTION_ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."PREVENTION" ADD CHECK ("CAUSES" IS NOT NULL);

-- ----------------------------
-- Checks structure for table "SYSTEM"."RECORDS"
-- ----------------------------
ALTER TABLE "SYSTEM"."RECORDS" ADD CHECK ("RECORD_ID" IS NOT NULL);

-- ----------------------------
-- Checks structure for table "SYSTEM"."RELIEF"
-- ----------------------------
ALTER TABLE "SYSTEM"."RELIEF" ADD CHECK ("RELIEF_ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."RELIEF" ADD CHECK ("EXPENSE" IS NOT NULL);

-- ----------------------------
-- Indexes structure for table REPCAT$_AUDIT_ATTRIBUTE
-- ----------------------------

-- ----------------------------
-- Checks structure for table "SYSTEM"."REPCAT$_AUDIT_ATTRIBUTE"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_AUDIT_ATTRIBUTE" ADD CHECK ((data_type_id in (2, 4, 5, 6, 7) and
                  data_length is not null)
              or (data_type_id not in (2, 4, 5, 6, 7) and
                  data_length is null)
                 );
ALTER TABLE "SYSTEM"."REPCAT$_AUDIT_ATTRIBUTE" ADD CHECK ("DATA_TYPE_ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_AUDIT_ATTRIBUTE" ADD CHECK ("SOURCE" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."REPCAT$_AUDIT_ATTRIBUTE"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_AUDIT_ATTRIBUTE" ADD PRIMARY KEY ("ATTRIBUTE");

-- ----------------------------
-- Indexes structure for table REPCAT$_AUDIT_COLUMN
-- ----------------------------
CREATE INDEX "SYSTEM"."REPCAT$_AUDIT_COLUMN_F1_IDX"
ON "SYSTEM"."REPCAT$_AUDIT_COLUMN" ("ATTRIBUTE" ASC)
LOGGING
VISIBLE;
CREATE INDEX "SYSTEM"."REPCAT$_AUDIT_COLUMN_F2_IDX"
ON "SYSTEM"."REPCAT$_AUDIT_COLUMN" ("BASE_SNAME" ASC, "BASE_ONAME" ASC, "BASE_CONFLICT_TYPE_ID" ASC, "BASE_REFERENCE_NAME" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."REPCAT$_AUDIT_COLUMN"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_AUDIT_COLUMN" ADD CHECK ("BASE_SNAME" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_AUDIT_COLUMN" ADD CHECK ("BASE_ONAME" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_AUDIT_COLUMN" ADD CHECK ("BASE_CONFLICT_TYPE_ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_AUDIT_COLUMN" ADD CHECK ("BASE_REFERENCE_NAME" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_AUDIT_COLUMN" ADD CHECK ("ATTRIBUTE" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."REPCAT$_AUDIT_COLUMN"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_AUDIT_COLUMN" ADD PRIMARY KEY ("COLUMN_NAME", "ONAME", "SNAME");

-- ----------------------------
-- Indexes structure for table REPCAT$_COLUMN_GROUP
-- ----------------------------

-- ----------------------------
-- Checks structure for table "SYSTEM"."REPCAT$_COLUMN_GROUP"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_COLUMN_GROUP" ADD CHECK ("SNAME" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_COLUMN_GROUP" ADD CHECK ("ONAME" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_COLUMN_GROUP" ADD CHECK ("GROUP_NAME" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."REPCAT$_COLUMN_GROUP"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_COLUMN_GROUP" ADD PRIMARY KEY ("SNAME", "ONAME", "GROUP_NAME");

-- ----------------------------
-- Indexes structure for table REPCAT$_CONFLICT
-- ----------------------------

-- ----------------------------
-- Checks structure for table "SYSTEM"."REPCAT$_CONFLICT"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_CONFLICT" ADD CHECK (conflict_type_id in (1, 2, 3));

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."REPCAT$_CONFLICT"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_CONFLICT" ADD PRIMARY KEY ("SNAME", "ONAME", "CONFLICT_TYPE_ID", "REFERENCE_NAME");

-- ----------------------------
-- Indexes structure for table REPCAT$_DDL
-- ----------------------------
CREATE UNIQUE INDEX "SYSTEM"."REPCAT$_DDL"
ON "SYSTEM"."REPCAT$_DDL" ("LOG_ID" ASC, "SOURCE" ASC, "ROLE" ASC, "MASTER" ASC, "LINE" ASC)
LOGGING
VISIBLE;
CREATE INDEX "SYSTEM"."REPCAT$_DDL_INDEX"
ON "SYSTEM"."REPCAT$_DDL" ("LOG_ID" ASC, "SOURCE" ASC, "ROLE" ASC, "MASTER" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Indexes structure for table REPCAT$_EXCEPTIONS
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."REPCAT$_EXCEPTIONS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_EXCEPTIONS" ADD PRIMARY KEY ("EXCEPTION_ID");

-- ----------------------------
-- Indexes structure for table REPCAT$_EXTENSION
-- ----------------------------

-- ----------------------------
-- Checks structure for table "SYSTEM"."REPCAT$_EXTENSION"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_EXTENSION" ADD CHECK (extension_code IN (0));
ALTER TABLE "SYSTEM"."REPCAT$_EXTENSION" ADD CHECK (export_required IN ('Y', 'N'));
ALTER TABLE "SYSTEM"."REPCAT$_EXTENSION" ADD CHECK (push_to_mdef IN ('Y', 'N'));
ALTER TABLE "SYSTEM"."REPCAT$_EXTENSION" ADD CHECK (push_to_new IN ('Y', 'N'));
ALTER TABLE "SYSTEM"."REPCAT$_EXTENSION" ADD CHECK (extension_status IN (0, 1, 2, 3, 4));

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."REPCAT$_EXTENSION"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_EXTENSION" ADD PRIMARY KEY ("EXTENSION_ID");

-- ----------------------------
-- Indexes structure for table REPCAT$_FLAVOR_OBJECTS
-- ----------------------------
CREATE INDEX "SYSTEM"."REPCAT$_FLAVOR_OBJECTS_FG"
ON "SYSTEM"."REPCAT$_FLAVOR_OBJECTS" ("FLAVOR_ID" ASC, "GNAME" ASC, "GOWNER" ASC)
LOGGING
VISIBLE;
CREATE INDEX "SYSTEM"."REPCAT$_FLAVOR_OBJECTS_FK1_IDX"
ON "SYSTEM"."REPCAT$_FLAVOR_OBJECTS" ("GNAME" ASC, "GOWNER" ASC)
LOGGING
VISIBLE;
CREATE INDEX "SYSTEM"."REPCAT$_FLAVOR_OBJECTS_FK2_IDX"
ON "SYSTEM"."REPCAT$_FLAVOR_OBJECTS" ("GNAME" ASC, "FLAVOR_ID" ASC, "GOWNER" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."REPCAT$_FLAVOR_OBJECTS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_FLAVOR_OBJECTS" ADD CHECK (version# >= 0 AND version# < 65536);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."REPCAT$_FLAVOR_OBJECTS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_FLAVOR_OBJECTS" ADD PRIMARY KEY ("SNAME", "ONAME", "TYPE", "GNAME", "FLAVOR_ID", "GOWNER");

-- ----------------------------
-- Indexes structure for table REPCAT$_FLAVORS
-- ----------------------------
CREATE INDEX "SYSTEM"."REPCAT$_FLAVORS_FK1_IDX"
ON "SYSTEM"."REPCAT$_FLAVORS" ("GNAME" ASC, "GOWNER" ASC)
LOGGING
VISIBLE;
CREATE INDEX "SYSTEM"."REPCAT$_FLAVORS_FNAME"
ON "SYSTEM"."REPCAT$_FLAVORS" ("FNAME" ASC)
LOGGING
VISIBLE;
CREATE UNIQUE INDEX "SYSTEM"."REPCAT$_FLAVORS_GNAME"
ON "SYSTEM"."REPCAT$_FLAVORS" ("GNAME" ASC, "FNAME" ASC, "GOWNER" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Uniques structure for table "SYSTEM"."REPCAT$_FLAVORS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_FLAVORS" ADD UNIQUE ("GNAME", "FLAVOR_ID", "GOWNER");

-- ----------------------------
-- Checks structure for table "SYSTEM"."REPCAT$_FLAVORS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_FLAVORS" ADD CHECK (published is NULL or (published in ('Y','N','O')));
ALTER TABLE "SYSTEM"."REPCAT$_FLAVORS" ADD CHECK ("FLAVOR_ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_FLAVORS" ADD CHECK ("GNAME" IS NOT NULL);

-- ----------------------------
-- Indexes structure for table REPCAT$_GENERATED
-- ----------------------------
CREATE INDEX "SYSTEM"."REPCAT$_GENERATED_N1"
ON "SYSTEM"."REPCAT$_GENERATED" ("BASE_SNAME" ASC, "BASE_ONAME" ASC, "BASE_TYPE" ASC)
LOGGING
VISIBLE;
CREATE INDEX "SYSTEM"."REPCAT$_REPGEN_PRNT_IDX"
ON "SYSTEM"."REPCAT$_GENERATED" ("SNAME" ASC, "ONAME" ASC, "TYPE" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."REPCAT$_GENERATED"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_GENERATED" ADD CHECK (reason IN (0, 1, 2, 3, 4, 5, 6, 7, 9, 10));

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."REPCAT$_GENERATED"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_GENERATED" ADD PRIMARY KEY ("SNAME", "ONAME", "TYPE", "BASE_SNAME", "BASE_ONAME", "BASE_TYPE");

-- ----------------------------
-- Indexes structure for table REPCAT$_GROUPED_COLUMN
-- ----------------------------
CREATE INDEX "SYSTEM"."REPCAT$_GROUPED_COLUMN_F1_IDX"
ON "SYSTEM"."REPCAT$_GROUPED_COLUMN" ("SNAME" ASC, "ONAME" ASC, "GROUP_NAME" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."REPCAT$_GROUPED_COLUMN"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_GROUPED_COLUMN" ADD PRIMARY KEY ("SNAME", "ONAME", "GROUP_NAME", "COLUMN_NAME", "POS");

-- ----------------------------
-- Indexes structure for table REPCAT$_INSTANTIATION_DDL
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."REPCAT$_INSTANTIATION_DDL"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_INSTANTIATION_DDL" ADD PRIMARY KEY ("REFRESH_TEMPLATE_ID", "PHASE", "DDL_NUM");

-- ----------------------------
-- Indexes structure for table REPCAT$_KEY_COLUMNS
-- ----------------------------
CREATE INDEX "SYSTEM"."REPCAT$_KEY_COLUMNS_PRNT_IDX"
ON "SYSTEM"."REPCAT$_KEY_COLUMNS" ("SNAME" ASC, "ONAME" ASC, "TYPE" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."REPCAT$_KEY_COLUMNS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_KEY_COLUMNS" ADD PRIMARY KEY ("SNAME", "ONAME", "COL");

-- ----------------------------
-- Indexes structure for table REPCAT$_OBJECT_PARMS
-- ----------------------------
CREATE INDEX "SYSTEM"."REPCAT$_OBJECT_PARMS_N2"
ON "SYSTEM"."REPCAT$_OBJECT_PARMS" ("TEMPLATE_OBJECT_ID" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."REPCAT$_OBJECT_PARMS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_OBJECT_PARMS" ADD CHECK ("TEMPLATE_PARAMETER_ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_OBJECT_PARMS" ADD CHECK ("TEMPLATE_OBJECT_ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."REPCAT$_OBJECT_PARMS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_OBJECT_PARMS" ADD PRIMARY KEY ("TEMPLATE_PARAMETER_ID", "TEMPLATE_OBJECT_ID");

-- ----------------------------
-- Indexes structure for table REPCAT$_OBJECT_TYPES
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."REPCAT$_OBJECT_TYPES"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_OBJECT_TYPES" ADD PRIMARY KEY ("OBJECT_TYPE_ID");

-- ----------------------------
-- Indexes structure for table REPCAT$_PARAMETER_COLUMN
-- ----------------------------
CREATE INDEX "SYSTEM"."REPCAT$_PARAMETER_COLUMN_F1_I"
ON "SYSTEM"."REPCAT$_PARAMETER_COLUMN" ("SNAME" ASC, "ONAME" ASC, "CONFLICT_TYPE_ID" ASC, "REFERENCE_NAME" ASC, "SEQUENCE_NO" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."REPCAT$_PARAMETER_COLUMN"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_PARAMETER_COLUMN" ADD PRIMARY KEY ("SNAME", "ONAME", "CONFLICT_TYPE_ID", "REFERENCE_NAME", "SEQUENCE_NO", "PARAMETER_TABLE_NAME", "PARAMETER_SEQUENCE_NO", "COLUMN_POS");

-- ----------------------------
-- Indexes structure for table REPCAT$_PRIORITY
-- ----------------------------
CREATE INDEX "SYSTEM"."REPCAT$_PRIORITY_F1_IDX"
ON "SYSTEM"."REPCAT$_PRIORITY" ("PRIORITY_GROUP" ASC, "SNAME" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."REPCAT$_PRIORITY"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_PRIORITY" ADD CHECK ("SNAME" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_PRIORITY" ADD CHECK ("PRIORITY_GROUP" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_PRIORITY" ADD CHECK ("PRIORITY" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."REPCAT$_PRIORITY"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_PRIORITY" ADD PRIMARY KEY ("SNAME", "PRIORITY_GROUP", "PRIORITY");

-- ----------------------------
-- Indexes structure for table REPCAT$_PRIORITY_GROUP
-- ----------------------------

-- ----------------------------
-- Uniques structure for table "SYSTEM"."REPCAT$_PRIORITY_GROUP"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_PRIORITY_GROUP" ADD UNIQUE ("SNAME", "PRIORITY_GROUP", "DATA_TYPE_ID", "FIXED_DATA_LENGTH");

-- ----------------------------
-- Checks structure for table "SYSTEM"."REPCAT$_PRIORITY_GROUP"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_PRIORITY_GROUP" ADD CHECK (data_type_id in (1, 2, 3, 4, 5, 6, 7));
ALTER TABLE "SYSTEM"."REPCAT$_PRIORITY_GROUP" ADD CHECK ((data_type_id in (4, 7) and
                  fixed_data_length is not null)
              or (data_type_id in (1, 2, 3, 5, 6) and
                  fixed_data_length is null));
ALTER TABLE "SYSTEM"."REPCAT$_PRIORITY_GROUP" ADD CHECK ("DATA_TYPE_ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."REPCAT$_PRIORITY_GROUP"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_PRIORITY_GROUP" ADD PRIMARY KEY ("PRIORITY_GROUP", "SNAME");

-- ----------------------------
-- Indexes structure for table REPCAT$_REFRESH_TEMPLATES
-- ----------------------------

-- ----------------------------
-- Uniques structure for table "SYSTEM"."REPCAT$_REFRESH_TEMPLATES"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_REFRESH_TEMPLATES" ADD UNIQUE ("REFRESH_TEMPLATE_NAME");

-- ----------------------------
-- Checks structure for table "SYSTEM"."REPCAT$_REFRESH_TEMPLATES"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_REFRESH_TEMPLATES" ADD CHECK ((public_template in ('Y','N'))
   or public_template is NULL);
ALTER TABLE "SYSTEM"."REPCAT$_REFRESH_TEMPLATES" ADD CHECK ("REFRESH_TEMPLATE_ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_REFRESH_TEMPLATES" ADD CHECK ("OWNER" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_REFRESH_TEMPLATES" ADD CHECK ("REFRESH_GROUP_NAME" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_REFRESH_TEMPLATES" ADD CHECK ("REFRESH_TEMPLATE_NAME" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_REFRESH_TEMPLATES" ADD CHECK ("REFRESH_GROUP_ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_REFRESH_TEMPLATES" ADD CHECK ("TEMPLATE_TYPE_ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_REFRESH_TEMPLATES" ADD CHECK ("TEMPLATE_STATUS_ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."REPCAT$_REFRESH_TEMPLATES"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_REFRESH_TEMPLATES" ADD PRIMARY KEY ("REFRESH_TEMPLATE_ID");

-- ----------------------------
-- Indexes structure for table REPCAT$_REPCAT
-- ----------------------------

-- ----------------------------
-- Checks structure for table "SYSTEM"."REPCAT$_REPCAT"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_REPCAT" ADD CHECK (status IN (0, 1, 2));

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."REPCAT$_REPCAT"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_REPCAT" ADD PRIMARY KEY ("SNAME", "GOWNER");

-- ----------------------------
-- Indexes structure for table REPCAT$_REPCATLOG
-- ----------------------------
CREATE INDEX "SYSTEM"."REPCAT$_REPCATLOG_GNAME"
ON "SYSTEM"."REPCAT$_REPCATLOG" ("GNAME" ASC, "SNAME" ASC, "ONAME" ASC, "TYPE" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Triggers structure for table "SYSTEM"."REPCAT$_REPCATLOG"
-- ----------------------------
CREATE OR REPLACE TRIGGER "SYSTEM"."REPCATLOGTRIG" AFTER DELETE OR UPDATE ON "SYSTEM"."REPCAT$_REPCATLOG" REFERENCING OLD AS "OLD" NEW AS "NEW" ENABLE
BEGIN
  sys.dbms_alert.signal('repcatlog_alert', '');
END;;

-- ----------------------------
-- Checks structure for table "SYSTEM"."REPCAT$_REPCATLOG"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_REPCATLOG" ADD CHECK (request IN (-1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
                                       11, 12, 13, 14, 15, 16, 17,
                                       18, 19, 20, 21, 22, 23, 24, 25));
ALTER TABLE "SYSTEM"."REPCAT$_REPCATLOG" ADD CHECK (status IN (0, 1, 2, 3, 4));
ALTER TABLE "SYSTEM"."REPCAT$_REPCATLOG" ADD CHECK (type IN (-1, 0, 1, 2, 4, 5, 7, 8, 9, 11, 12, -3,
                                    13, 14, 32, 33));

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."REPCAT$_REPCATLOG"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_REPCATLOG" ADD PRIMARY KEY ("ID", "SOURCE", "ROLE", "MASTER");

-- ----------------------------
-- Indexes structure for table REPCAT$_REPCOLUMN
-- ----------------------------
CREATE INDEX "SYSTEM"."REPCAT$_REPCOLUMN_FK_IDX"
ON "SYSTEM"."REPCAT$_REPCOLUMN" ("SNAME" ASC, "ONAME" ASC, "TYPE" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."REPCAT$_REPCOLUMN"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_REPCOLUMN" ADD CHECK (version# >= 0 AND version# < 65536);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."REPCAT$_REPCOLUMN"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_REPCOLUMN" ADD PRIMARY KEY ("SNAME", "ONAME", "TYPE", "CNAME");

-- ----------------------------
-- Indexes structure for table REPCAT$_REPGROUP_PRIVS
-- ----------------------------
CREATE INDEX "SYSTEM"."REPCAT$_REPGROUP_PRIVS_FK_IDX"
ON "SYSTEM"."REPCAT$_REPGROUP_PRIVS" ("GNAME" ASC, "GOWNER" ASC)
LOGGING
VISIBLE;
CREATE INDEX "SYSTEM"."REPCAT$_REPGROUP_PRIVS_N1"
ON "SYSTEM"."REPCAT$_REPGROUP_PRIVS" ("GLOBAL_FLAG" ASC, "USERNAME" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Uniques structure for table "SYSTEM"."REPCAT$_REPGROUP_PRIVS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_REPGROUP_PRIVS" ADD UNIQUE ("USERNAME", "GNAME", "GOWNER");

-- ----------------------------
-- Checks structure for table "SYSTEM"."REPCAT$_REPGROUP_PRIVS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_REPGROUP_PRIVS" ADD CHECK ("USERNAME" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_REPGROUP_PRIVS" ADD CHECK ("GLOBAL_FLAG" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_REPGROUP_PRIVS" ADD CHECK ("CREATED" IS NOT NULL);

-- ----------------------------
-- Indexes structure for table REPCAT$_REPOBJECT
-- ----------------------------
CREATE INDEX "SYSTEM"."REPCAT$_REPOBJECT_GNAME"
ON "SYSTEM"."REPCAT$_REPOBJECT" ("GNAME" ASC, "ONAME" ASC, "TYPE" ASC, "GOWNER" ASC)
LOGGING
VISIBLE;
CREATE INDEX "SYSTEM"."REPCAT$_REPOBJECT_PRNT_IDX"
ON "SYSTEM"."REPCAT$_REPOBJECT" ("GNAME" ASC, "GOWNER" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."REPCAT$_REPOBJECT"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_REPOBJECT" ADD CHECK (genpackage IN (0, 1, 2));
ALTER TABLE "SYSTEM"."REPCAT$_REPOBJECT" ADD CHECK (gentrigger IN (0, 1, 2));
ALTER TABLE "SYSTEM"."REPCAT$_REPOBJECT" ADD CHECK (status IN (0, 1, 2, 3, 4, 5, 6));
ALTER TABLE "SYSTEM"."REPCAT$_REPOBJECT" ADD CHECK (type IN (-1, 1, 2, 4, 5, 7, 8, 9, 11, 12, -3,
                                      -4, 13, 14, 32, 33));
ALTER TABLE "SYSTEM"."REPCAT$_REPOBJECT" ADD CHECK (version# >= 0 AND version# < 65536);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."REPCAT$_REPOBJECT"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_REPOBJECT" ADD PRIMARY KEY ("SNAME", "ONAME", "TYPE");

-- ----------------------------
-- Indexes structure for table REPCAT$_REPPROP
-- ----------------------------
CREATE INDEX "SYSTEM"."REPCAT$_REPPROP_DBLINK_HOW"
ON "SYSTEM"."REPCAT$_REPPROP" ("DBLINK" ASC, "HOW" ASC, "EXTENSION_ID" ASC, "RECIPIENT_KEY" ASC)
LOGGING
VISIBLE;
CREATE INDEX "SYSTEM"."REPCAT$_REPPROP_KEY_INDEX"
ON "SYSTEM"."REPCAT$_REPPROP" ("RECIPIENT_KEY" ASC)
LOGGING
VISIBLE;
CREATE INDEX "SYSTEM"."REPCAT$_REPPROP_PRNT2_IDX"
ON "SYSTEM"."REPCAT$_REPPROP" ("SNAME" ASC, "DBLINK" ASC)
LOGGING
VISIBLE;
CREATE INDEX "SYSTEM"."REPCAT$_REPPROP_PRNT_IDX"
ON "SYSTEM"."REPCAT$_REPPROP" ("SNAME" ASC, "ONAME" ASC, "TYPE" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."REPCAT$_REPPROP"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_REPPROP" ADD CHECK (how IN (0, 1, 2, 3));

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."REPCAT$_REPPROP"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_REPPROP" ADD PRIMARY KEY ("SNAME", "ONAME", "TYPE", "DBLINK");

-- ----------------------------
-- Indexes structure for table REPCAT$_REPSCHEMA
-- ----------------------------
CREATE INDEX "SYSTEM"."REPCAT$_REPSCHEMA_DEST_IDX"
ON "SYSTEM"."REPCAT$_REPSCHEMA" ("DBLINK" ASC, "EXTENSION_ID" ASC)
LOGGING
VISIBLE;
CREATE INDEX "SYSTEM"."REPCAT$_REPSCHEMA_PRNT_IDX"
ON "SYSTEM"."REPCAT$_REPSCHEMA" ("SNAME" ASC, "GOWNER" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."REPCAT$_REPSCHEMA"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_REPSCHEMA" ADD PRIMARY KEY ("SNAME", "DBLINK", "GOWNER");

-- ----------------------------
-- Indexes structure for table REPCAT$_RESOL_STATS_CONTROL
-- ----------------------------

-- ----------------------------
-- Checks structure for table "SYSTEM"."REPCAT$_RESOL_STATS_CONTROL"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_RESOL_STATS_CONTROL" ADD CHECK ("CREATED" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_RESOL_STATS_CONTROL" ADD CHECK ("STATUS" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_RESOL_STATS_CONTROL" ADD CHECK ("STATUS_UPDATE_DATE" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."REPCAT$_RESOL_STATS_CONTROL"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_RESOL_STATS_CONTROL" ADD PRIMARY KEY ("SNAME", "ONAME");

-- ----------------------------
-- Indexes structure for table REPCAT$_RESOLUTION
-- ----------------------------
CREATE INDEX "SYSTEM"."REPCAT$_RESOLUTION_F3_IDX"
ON "SYSTEM"."REPCAT$_RESOLUTION" ("CONFLICT_TYPE_ID" ASC, "METHOD_NAME" ASC)
LOGGING
VISIBLE;
CREATE INDEX "SYSTEM"."REPCAT$_RESOLUTION_IDX2"
ON "SYSTEM"."REPCAT$_RESOLUTION" ("SNAME" ASC, "ONAME" ASC, "CONFLICT_TYPE_ID" ASC, "REFERENCE_NAME" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."REPCAT$_RESOLUTION"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_RESOLUTION" ADD CHECK ("METHOD_NAME" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_RESOLUTION" ADD CHECK ("FUNCTION_NAME" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."REPCAT$_RESOLUTION"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_RESOLUTION" ADD PRIMARY KEY ("SNAME", "ONAME", "CONFLICT_TYPE_ID", "REFERENCE_NAME", "SEQUENCE_NO");

-- ----------------------------
-- Indexes structure for table REPCAT$_RESOLUTION_METHOD
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."REPCAT$_RESOLUTION_METHOD"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_RESOLUTION_METHOD" ADD PRIMARY KEY ("CONFLICT_TYPE_ID", "METHOD_NAME");

-- ----------------------------
-- Indexes structure for table REPCAT$_RESOLUTION_STATISTICS
-- ----------------------------
CREATE INDEX "SYSTEM"."REPCAT$_RESOLUTION_STATS_N1"
ON "SYSTEM"."REPCAT$_RESOLUTION_STATISTICS" ("SNAME" ASC, "ONAME" ASC, "RESOLVED_DATE" ASC, "CONFLICT_TYPE_ID" ASC, "REFERENCE_NAME" ASC, "METHOD_NAME" ASC, "FUNCTION_NAME" ASC, "PRIORITY_GROUP" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."REPCAT$_RESOLUTION_STATISTICS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_RESOLUTION_STATISTICS" ADD CHECK ("SNAME" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_RESOLUTION_STATISTICS" ADD CHECK ("ONAME" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_RESOLUTION_STATISTICS" ADD CHECK ("CONFLICT_TYPE_ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_RESOLUTION_STATISTICS" ADD CHECK ("REFERENCE_NAME" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_RESOLUTION_STATISTICS" ADD CHECK ("METHOD_NAME" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_RESOLUTION_STATISTICS" ADD CHECK ("FUNCTION_NAME" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_RESOLUTION_STATISTICS" ADD CHECK ("RESOLVED_DATE" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_RESOLUTION_STATISTICS" ADD CHECK ("PRIMARY_KEY_VALUE" IS NOT NULL);

-- ----------------------------
-- Indexes structure for table REPCAT$_RUNTIME_PARMS
-- ----------------------------
CREATE UNIQUE INDEX "SYSTEM"."REPCAT$_RUNTIME_PARMS_PK"
ON "SYSTEM"."REPCAT$_RUNTIME_PARMS" ("RUNTIME_PARM_ID" ASC, "PARAMETER_NAME" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Indexes structure for table REPCAT$_SITE_OBJECTS
-- ----------------------------
CREATE INDEX "SYSTEM"."REPCAT$_SITE_OBJECTS_N1"
ON "SYSTEM"."REPCAT$_SITE_OBJECTS" ("TEMPLATE_SITE_ID" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Uniques structure for table "SYSTEM"."REPCAT$_SITE_OBJECTS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_SITE_OBJECTS" ADD UNIQUE ("TEMPLATE_SITE_ID", "ONAME", "OBJECT_TYPE_ID", "SNAME");

-- ----------------------------
-- Checks structure for table "SYSTEM"."REPCAT$_SITE_OBJECTS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_SITE_OBJECTS" ADD CHECK ("TEMPLATE_SITE_ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_SITE_OBJECTS" ADD CHECK ("ONAME" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_SITE_OBJECTS" ADD CHECK ("OBJECT_TYPE_ID" IS NOT NULL);

-- ----------------------------
-- Indexes structure for table REPCAT$_SITES_NEW
-- ----------------------------
CREATE INDEX "SYSTEM"."REPCAT$_SITES_NEW_FK1_IDX"
ON "SYSTEM"."REPCAT$_SITES_NEW" ("EXTENSION_ID" ASC)
LOGGING
VISIBLE;
CREATE INDEX "SYSTEM"."REPCAT$_SITES_NEW_FK2_IDX"
ON "SYSTEM"."REPCAT$_SITES_NEW" ("GNAME" ASC, "GOWNER" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."REPCAT$_SITES_NEW"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_SITES_NEW" ADD CHECK (full_instantiation IN ('Y', 'N'));

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."REPCAT$_SITES_NEW"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_SITES_NEW" ADD PRIMARY KEY ("EXTENSION_ID", "GOWNER", "GNAME", "DBLINK");

-- ----------------------------
-- Indexes structure for table REPCAT$_SNAPGROUP
-- ----------------------------
CREATE UNIQUE INDEX "SYSTEM"."I_REPCAT$_SNAPGROUP1"
ON "SYSTEM"."REPCAT$_SNAPGROUP" ("GNAME" ASC, "DBLINK" ASC, "GOWNER" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Indexes structure for table REPCAT$_TEMPLATE_OBJECTS
-- ----------------------------
CREATE INDEX "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS_N1"
ON "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS" ("REFRESH_TEMPLATE_ID" ASC, "OBJECT_TYPE" ASC)
LOGGING
VISIBLE;
CREATE INDEX "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS_N2"
ON "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS" ("REFRESH_TEMPLATE_ID" ASC, "OBJECT_NAME" ASC, "SCHEMA_NAME" ASC, "OBJECT_TYPE" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Uniques structure for table "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS" ADD UNIQUE ("OBJECT_NAME", "OBJECT_TYPE", "REFRESH_TEMPLATE_ID", "SCHEMA_NAME", "DDL_NUM");

-- ----------------------------
-- Checks structure for table "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS" ADD CHECK (object_version# >= 0 AND object_version# < 65536);
ALTER TABLE "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS" ADD CHECK ("TEMPLATE_OBJECT_ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS" ADD CHECK ("REFRESH_TEMPLATE_ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS" ADD CHECK ("OBJECT_NAME" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS" ADD CHECK ("OBJECT_TYPE" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS" ADD CHECK ("DDL_NUM" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS" ADD CHECK ("TEMPLATE_REFGROUP_ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS" ADD PRIMARY KEY ("TEMPLATE_OBJECT_ID");

-- ----------------------------
-- Indexes structure for table REPCAT$_TEMPLATE_PARMS
-- ----------------------------

-- ----------------------------
-- Uniques structure for table "SYSTEM"."REPCAT$_TEMPLATE_PARMS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_TEMPLATE_PARMS" ADD UNIQUE ("REFRESH_TEMPLATE_ID", "PARAMETER_NAME");

-- ----------------------------
-- Checks structure for table "SYSTEM"."REPCAT$_TEMPLATE_PARMS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_TEMPLATE_PARMS" ADD CHECK (user_override in ('Y','N'));
ALTER TABLE "SYSTEM"."REPCAT$_TEMPLATE_PARMS" ADD CHECK ("REFRESH_TEMPLATE_ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_TEMPLATE_PARMS" ADD CHECK ("PARAMETER_NAME" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."REPCAT$_TEMPLATE_PARMS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_TEMPLATE_PARMS" ADD PRIMARY KEY ("TEMPLATE_PARAMETER_ID");

-- ----------------------------
-- Indexes structure for table REPCAT$_TEMPLATE_REFGROUPS
-- ----------------------------
CREATE INDEX "SYSTEM"."REPCAT$_TEMPLATE_REFGROUPS_N1"
ON "SYSTEM"."REPCAT$_TEMPLATE_REFGROUPS" ("REFRESH_GROUP_NAME" ASC)
LOGGING
VISIBLE;
CREATE INDEX "SYSTEM"."REPCAT$_TEMPLATE_REFGROUPS_N2"
ON "SYSTEM"."REPCAT$_TEMPLATE_REFGROUPS" ("REFRESH_TEMPLATE_ID" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."REPCAT$_TEMPLATE_REFGROUPS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_TEMPLATE_REFGROUPS" ADD CHECK ("REFRESH_GROUP_ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_TEMPLATE_REFGROUPS" ADD CHECK ("REFRESH_GROUP_NAME" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_TEMPLATE_REFGROUPS" ADD CHECK ("REFRESH_TEMPLATE_ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."REPCAT$_TEMPLATE_REFGROUPS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_TEMPLATE_REFGROUPS" ADD PRIMARY KEY ("REFRESH_GROUP_ID");

-- ----------------------------
-- Indexes structure for table REPCAT$_TEMPLATE_SITES
-- ----------------------------

-- ----------------------------
-- Uniques structure for table "SYSTEM"."REPCAT$_TEMPLATE_SITES"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_TEMPLATE_SITES" ADD UNIQUE ("REFRESH_TEMPLATE_NAME", "USER_NAME", "SITE_NAME", "REPAPI_SITE_ID");

-- ----------------------------
-- Checks structure for table "SYSTEM"."REPCAT$_TEMPLATE_SITES"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_TEMPLATE_SITES" ADD CHECK (status in (-100,-1,0,1));
ALTER TABLE "SYSTEM"."REPCAT$_TEMPLATE_SITES" ADD CHECK ((site_name is not null and repapi_site_id is null) or
   (site_name is null and repapi_site_id is not null));
ALTER TABLE "SYSTEM"."REPCAT$_TEMPLATE_SITES" ADD CHECK ("REFRESH_TEMPLATE_NAME" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_TEMPLATE_SITES" ADD CHECK ("USER_NAME" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_TEMPLATE_SITES" ADD CHECK ("STATUS" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."REPCAT$_TEMPLATE_SITES"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_TEMPLATE_SITES" ADD PRIMARY KEY ("TEMPLATE_SITE_ID");

-- ----------------------------
-- Indexes structure for table REPCAT$_TEMPLATE_STATUS
-- ----------------------------

-- ----------------------------
-- Checks structure for table "SYSTEM"."REPCAT$_TEMPLATE_STATUS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_TEMPLATE_STATUS" ADD CHECK ("STATUS_TYPE_NAME" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."REPCAT$_TEMPLATE_STATUS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_TEMPLATE_STATUS" ADD PRIMARY KEY ("TEMPLATE_STATUS_ID");

-- ----------------------------
-- Indexes structure for table REPCAT$_TEMPLATE_TARGETS
-- ----------------------------
CREATE UNIQUE INDEX "SYSTEM"."REPCAT$_TEMPLATE_TARGETS_U1"
ON "SYSTEM"."REPCAT$_TEMPLATE_TARGETS" ("TARGET_DATABASE" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Checks structure for table "SYSTEM"."REPCAT$_TEMPLATE_TARGETS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_TEMPLATE_TARGETS" ADD CHECK ("TARGET_DATABASE" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."REPCAT$_TEMPLATE_TARGETS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_TEMPLATE_TARGETS" ADD PRIMARY KEY ("TEMPLATE_TARGET_ID");

-- ----------------------------
-- Indexes structure for table REPCAT$_TEMPLATE_TYPES
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."REPCAT$_TEMPLATE_TYPES"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_TEMPLATE_TYPES" ADD PRIMARY KEY ("TEMPLATE_TYPE_ID");

-- ----------------------------
-- Indexes structure for table REPCAT$_USER_AUTHORIZATIONS
-- ----------------------------
CREATE INDEX "SYSTEM"."REPCAT$_USER_AUTHORIZATIONS_N1"
ON "SYSTEM"."REPCAT$_USER_AUTHORIZATIONS" ("REFRESH_TEMPLATE_ID" ASC)
LOGGING
VISIBLE;

-- ----------------------------
-- Uniques structure for table "SYSTEM"."REPCAT$_USER_AUTHORIZATIONS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_USER_AUTHORIZATIONS" ADD UNIQUE ("USER_ID", "REFRESH_TEMPLATE_ID");

-- ----------------------------
-- Checks structure for table "SYSTEM"."REPCAT$_USER_AUTHORIZATIONS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_USER_AUTHORIZATIONS" ADD CHECK ("USER_AUTHORIZATION_ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_USER_AUTHORIZATIONS" ADD CHECK ("USER_ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_USER_AUTHORIZATIONS" ADD CHECK ("REFRESH_TEMPLATE_ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."REPCAT$_USER_AUTHORIZATIONS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_USER_AUTHORIZATIONS" ADD PRIMARY KEY ("USER_AUTHORIZATION_ID");

-- ----------------------------
-- Indexes structure for table REPCAT$_USER_PARM_VALUES
-- ----------------------------

-- ----------------------------
-- Uniques structure for table "SYSTEM"."REPCAT$_USER_PARM_VALUES"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_USER_PARM_VALUES" ADD UNIQUE ("TEMPLATE_PARAMETER_ID", "USER_ID");

-- ----------------------------
-- Checks structure for table "SYSTEM"."REPCAT$_USER_PARM_VALUES"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_USER_PARM_VALUES" ADD CHECK ("TEMPLATE_PARAMETER_ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."REPCAT$_USER_PARM_VALUES" ADD CHECK ("USER_ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table "SYSTEM"."REPCAT$_USER_PARM_VALUES"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_USER_PARM_VALUES" ADD PRIMARY KEY ("USER_PARAMETER_ID");

-- ----------------------------
-- Checks structure for table "SYSTEM"."RESCUE"
-- ----------------------------
ALTER TABLE "SYSTEM"."RESCUE" ADD CHECK ("RESCUE_ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."RESCUE" ADD CHECK ("DAYS" IS NOT NULL);
ALTER TABLE "SYSTEM"."RESCUE" ADD CHECK ("RESCUE_NUMBER" IS NOT NULL);

-- ----------------------------
-- Checks structure for table "SYSTEM"."SQLPLUS_PRODUCT_PROFILE"
-- ----------------------------
ALTER TABLE "SYSTEM"."SQLPLUS_PRODUCT_PROFILE" ADD CHECK ("PRODUCT" IS NOT NULL);

-- ----------------------------
-- Checks structure for table "SYSTEM"."TOOLS"
-- ----------------------------
ALTER TABLE "SYSTEM"."TOOLS" ADD CHECK ("DIS_ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."TOOLS" ADD CHECK ("NAME" IS NOT NULL);

-- ----------------------------
-- Checks structure for table "SYSTEM"."VOLUNTEERS"
-- ----------------------------
ALTER TABLE "SYSTEM"."VOLUNTEERS" ADD CHECK ("DIS_ID" IS NOT NULL);
ALTER TABLE "SYSTEM"."VOLUNTEERS" ADD CHECK ("NAME" IS NOT NULL);
ALTER TABLE "SYSTEM"."VOLUNTEERS" ADD CHECK ("CONTACT" IS NOT NULL);

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."AQ$_INTERNET_AGENT_PRIVS"
-- ----------------------------
ALTER TABLE "SYSTEM"."AQ$_INTERNET_AGENT_PRIVS" ADD FOREIGN KEY ("AGENT_NAME") REFERENCES "SYSTEM"."AQ$_INTERNET_AGENTS" ("AGENT_NAME") ON DELETE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."DEF$_CALLDEST"
-- ----------------------------
ALTER TABLE "SYSTEM"."DEF$_CALLDEST" ADD FOREIGN KEY ("DBLINK", "CATCHUP") REFERENCES "SYSTEM"."DEF$_DESTINATION" ("DBLINK", "CATCHUP");

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."DISDATE"
-- ----------------------------
ALTER TABLE "SYSTEM"."DISDATE" ADD FOREIGN KEY ("DISDATE_ID") REFERENCES "SYSTEM"."DISASTER" ("ID");

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."ECONOMICAL"
-- ----------------------------
ALTER TABLE "SYSTEM"."ECONOMICAL" ADD FOREIGN KEY ("ECONOMICAL_ID") REFERENCES "SYSTEM"."DISASTER" ("ID");

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."EFFECT"
-- ----------------------------
ALTER TABLE "SYSTEM"."EFFECT" ADD FOREIGN KEY ("EFFECT_ID") REFERENCES "SYSTEM"."DISASTER" ("ID");

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."ENVIRONMENTAL"
-- ----------------------------
ALTER TABLE "SYSTEM"."ENVIRONMENTAL" ADD FOREIGN KEY ("ENVIRONMENTAL_ID") REFERENCES "SYSTEM"."DISASTER" ("ID");

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."FOREIGNHELP"
-- ----------------------------
ALTER TABLE "SYSTEM"."FOREIGNHELP" ADD FOREIGN KEY ("DIS_ID") REFERENCES "SYSTEM"."DISASTER" ("ID");

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."MVIEW$_ADV_AJG"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_AJG" ADD FOREIGN KEY ("RUNID#") REFERENCES "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#");

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."MVIEW$_ADV_BASETABLE"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_BASETABLE" ADD FOREIGN KEY ("QUERYID#") REFERENCES "SYSTEM"."MVIEW$_ADV_WORKLOAD" ("QUERYID#");

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."MVIEW$_ADV_CLIQUE"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_CLIQUE" ADD FOREIGN KEY ("RUNID#") REFERENCES "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#");

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."MVIEW$_ADV_ELIGIBLE"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_ELIGIBLE" ADD FOREIGN KEY ("RUNID#") REFERENCES "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#");

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."MVIEW$_ADV_EXCEPTIONS"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_EXCEPTIONS" ADD FOREIGN KEY ("RUNID#") REFERENCES "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#");

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."MVIEW$_ADV_FILTERINSTANCE"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_FILTERINSTANCE" ADD FOREIGN KEY ("RUNID#") REFERENCES "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#");

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."MVIEW$_ADV_FJG"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_FJG" ADD FOREIGN KEY ("AJGID#") REFERENCES "SYSTEM"."MVIEW$_ADV_AJG" ("AJGID#");

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."MVIEW$_ADV_GC"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_GC" ADD FOREIGN KEY ("FJGID#") REFERENCES "SYSTEM"."MVIEW$_ADV_FJG" ("FJGID#");

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."MVIEW$_ADV_INFO"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_INFO" ADD FOREIGN KEY ("RUNID#") REFERENCES "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#");

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."MVIEW$_ADV_JOURNAL"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_JOURNAL" ADD FOREIGN KEY ("RUNID#") REFERENCES "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#");

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."MVIEW$_ADV_LEVEL"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_LEVEL" ADD FOREIGN KEY ("RUNID#") REFERENCES "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#");

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."MVIEW$_ADV_OUTPUT"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_OUTPUT" ADD FOREIGN KEY ("RUNID#") REFERENCES "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#");

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."MVIEW$_ADV_ROLLUP"
-- ----------------------------
ALTER TABLE "SYSTEM"."MVIEW$_ADV_ROLLUP" ADD FOREIGN KEY ("RUNID#", "CLEVELID#") REFERENCES "SYSTEM"."MVIEW$_ADV_LEVEL" ("RUNID#", "LEVELID#");
ALTER TABLE "SYSTEM"."MVIEW$_ADV_ROLLUP" ADD FOREIGN KEY ("RUNID#") REFERENCES "SYSTEM"."MVIEW$_ADV_LOG" ("RUNID#");
ALTER TABLE "SYSTEM"."MVIEW$_ADV_ROLLUP" ADD FOREIGN KEY ("RUNID#", "PLEVELID#") REFERENCES "SYSTEM"."MVIEW$_ADV_LEVEL" ("RUNID#", "LEVELID#");

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."PREVENTION"
-- ----------------------------
ALTER TABLE "SYSTEM"."PREVENTION" ADD FOREIGN KEY ("PREVENTION_ID") REFERENCES "SYSTEM"."DISASTER" ("ID");

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."RECORDS"
-- ----------------------------
ALTER TABLE "SYSTEM"."RECORDS" ADD FOREIGN KEY ("RECORD_ID") REFERENCES "SYSTEM"."DISASTER" ("ID");

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."RELIEF"
-- ----------------------------
ALTER TABLE "SYSTEM"."RELIEF" ADD FOREIGN KEY ("RELIEF_ID") REFERENCES "SYSTEM"."DISASTER" ("ID");

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."REPCAT$_AUDIT_COLUMN"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_AUDIT_COLUMN" ADD FOREIGN KEY ("ATTRIBUTE") REFERENCES "SYSTEM"."REPCAT$_AUDIT_ATTRIBUTE" ("ATTRIBUTE");
ALTER TABLE "SYSTEM"."REPCAT$_AUDIT_COLUMN" ADD FOREIGN KEY ("BASE_SNAME", "BASE_ONAME", "BASE_CONFLICT_TYPE_ID", "BASE_REFERENCE_NAME") REFERENCES "SYSTEM"."REPCAT$_CONFLICT" ("SNAME", "ONAME", "CONFLICT_TYPE_ID", "REFERENCE_NAME");

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."REPCAT$_DDL"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_DDL" ADD FOREIGN KEY ("LOG_ID", "SOURCE", "ROLE", "MASTER") REFERENCES "SYSTEM"."REPCAT$_REPCATLOG" ("ID", "SOURCE", "ROLE", "MASTER") ON DELETE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."REPCAT$_FLAVOR_OBJECTS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_FLAVOR_OBJECTS" ADD FOREIGN KEY ("GNAME", "GOWNER") REFERENCES "SYSTEM"."REPCAT$_REPCAT" ("SNAME", "GOWNER") ON DELETE CASCADE;
ALTER TABLE "SYSTEM"."REPCAT$_FLAVOR_OBJECTS" ADD FOREIGN KEY ("GNAME", "FLAVOR_ID", "GOWNER") REFERENCES "SYSTEM"."REPCAT$_FLAVORS" ("GNAME", "FLAVOR_ID", "GOWNER") ON DELETE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."REPCAT$_FLAVORS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_FLAVORS" ADD FOREIGN KEY ("GNAME", "GOWNER") REFERENCES "SYSTEM"."REPCAT$_REPCAT" ("SNAME", "GOWNER") ON DELETE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."REPCAT$_GENERATED"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_GENERATED" ADD FOREIGN KEY ("SNAME", "ONAME", "TYPE") REFERENCES "SYSTEM"."REPCAT$_REPOBJECT" ("SNAME", "ONAME", "TYPE") ON DELETE CASCADE;
ALTER TABLE "SYSTEM"."REPCAT$_GENERATED" ADD FOREIGN KEY ("BASE_SNAME", "BASE_ONAME", "BASE_TYPE") REFERENCES "SYSTEM"."REPCAT$_REPOBJECT" ("SNAME", "ONAME", "TYPE") ON DELETE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."REPCAT$_GROUPED_COLUMN"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_GROUPED_COLUMN" ADD FOREIGN KEY ("SNAME", "ONAME", "GROUP_NAME") REFERENCES "SYSTEM"."REPCAT$_COLUMN_GROUP" ("SNAME", "ONAME", "GROUP_NAME");

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."REPCAT$_INSTANTIATION_DDL"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_INSTANTIATION_DDL" ADD FOREIGN KEY ("REFRESH_TEMPLATE_ID") REFERENCES "SYSTEM"."REPCAT$_REFRESH_TEMPLATES" ("REFRESH_TEMPLATE_ID") ON DELETE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."REPCAT$_KEY_COLUMNS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_KEY_COLUMNS" ADD FOREIGN KEY ("SNAME", "ONAME", "TYPE") REFERENCES "SYSTEM"."REPCAT$_REPOBJECT" ("SNAME", "ONAME", "TYPE") ON DELETE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."REPCAT$_OBJECT_PARMS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_OBJECT_PARMS" ADD FOREIGN KEY ("TEMPLATE_PARAMETER_ID") REFERENCES "SYSTEM"."REPCAT$_TEMPLATE_PARMS" ("TEMPLATE_PARAMETER_ID");
ALTER TABLE "SYSTEM"."REPCAT$_OBJECT_PARMS" ADD FOREIGN KEY ("TEMPLATE_OBJECT_ID") REFERENCES "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS" ("TEMPLATE_OBJECT_ID") ON DELETE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."REPCAT$_PARAMETER_COLUMN"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_PARAMETER_COLUMN" ADD FOREIGN KEY ("SNAME", "ONAME", "CONFLICT_TYPE_ID", "REFERENCE_NAME", "SEQUENCE_NO") REFERENCES "SYSTEM"."REPCAT$_RESOLUTION" ("SNAME", "ONAME", "CONFLICT_TYPE_ID", "REFERENCE_NAME", "SEQUENCE_NO");

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."REPCAT$_PRIORITY"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_PRIORITY" ADD FOREIGN KEY ("PRIORITY_GROUP", "SNAME") REFERENCES "SYSTEM"."REPCAT$_PRIORITY_GROUP" ("PRIORITY_GROUP", "SNAME");

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."REPCAT$_REFRESH_TEMPLATES"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_REFRESH_TEMPLATES" ADD FOREIGN KEY ("TEMPLATE_TYPE_ID") REFERENCES "SYSTEM"."REPCAT$_TEMPLATE_TYPES" ("TEMPLATE_TYPE_ID");
ALTER TABLE "SYSTEM"."REPCAT$_REFRESH_TEMPLATES" ADD FOREIGN KEY ("TEMPLATE_STATUS_ID") REFERENCES "SYSTEM"."REPCAT$_TEMPLATE_STATUS" ("TEMPLATE_STATUS_ID");

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."REPCAT$_REPCOLUMN"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_REPCOLUMN" ADD FOREIGN KEY ("SNAME", "ONAME", "TYPE") REFERENCES "SYSTEM"."REPCAT$_REPOBJECT" ("SNAME", "ONAME", "TYPE") ON DELETE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."REPCAT$_REPGROUP_PRIVS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_REPGROUP_PRIVS" ADD FOREIGN KEY ("GNAME", "GOWNER") REFERENCES "SYSTEM"."REPCAT$_REPCAT" ("SNAME", "GOWNER") ON DELETE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."REPCAT$_REPOBJECT"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_REPOBJECT" ADD FOREIGN KEY ("GNAME", "GOWNER") REFERENCES "SYSTEM"."REPCAT$_REPCAT" ("SNAME", "GOWNER") ON DELETE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."REPCAT$_REPPROP"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_REPPROP" ADD FOREIGN KEY ("SNAME", "ONAME", "TYPE") REFERENCES "SYSTEM"."REPCAT$_REPOBJECT" ("SNAME", "ONAME", "TYPE") ON DELETE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."REPCAT$_REPSCHEMA"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_REPSCHEMA" ADD FOREIGN KEY ("DBLINK", "EXTENSION_ID") REFERENCES "SYSTEM"."DEF$_DESTINATION" ("DBLINK", "CATCHUP");
ALTER TABLE "SYSTEM"."REPCAT$_REPSCHEMA" ADD FOREIGN KEY ("SNAME", "GOWNER") REFERENCES "SYSTEM"."REPCAT$_REPCAT" ("SNAME", "GOWNER") ON DELETE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."REPCAT$_RESOLUTION"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_RESOLUTION" ADD FOREIGN KEY ("CONFLICT_TYPE_ID", "METHOD_NAME") REFERENCES "SYSTEM"."REPCAT$_RESOLUTION_METHOD" ("CONFLICT_TYPE_ID", "METHOD_NAME");
ALTER TABLE "SYSTEM"."REPCAT$_RESOLUTION" ADD FOREIGN KEY ("SNAME", "ONAME", "CONFLICT_TYPE_ID", "REFERENCE_NAME") REFERENCES "SYSTEM"."REPCAT$_CONFLICT" ("SNAME", "ONAME", "CONFLICT_TYPE_ID", "REFERENCE_NAME");

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."REPCAT$_SITE_OBJECTS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_SITE_OBJECTS" ADD FOREIGN KEY ("OBJECT_TYPE_ID") REFERENCES "SYSTEM"."REPCAT$_OBJECT_TYPES" ("OBJECT_TYPE_ID");
ALTER TABLE "SYSTEM"."REPCAT$_SITE_OBJECTS" ADD FOREIGN KEY ("TEMPLATE_SITE_ID") REFERENCES "SYSTEM"."REPCAT$_TEMPLATE_SITES" ("TEMPLATE_SITE_ID") ON DELETE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."REPCAT$_SITES_NEW"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_SITES_NEW" ADD FOREIGN KEY ("EXTENSION_ID") REFERENCES "SYSTEM"."REPCAT$_EXTENSION" ("EXTENSION_ID") ON DELETE CASCADE;
ALTER TABLE "SYSTEM"."REPCAT$_SITES_NEW" ADD FOREIGN KEY ("GNAME", "GOWNER") REFERENCES "SYSTEM"."REPCAT$_REPCAT" ("SNAME", "GOWNER") ON DELETE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS" ADD FOREIGN KEY ("REFRESH_TEMPLATE_ID") REFERENCES "SYSTEM"."REPCAT$_REFRESH_TEMPLATES" ("REFRESH_TEMPLATE_ID") ON DELETE CASCADE;
ALTER TABLE "SYSTEM"."REPCAT$_TEMPLATE_OBJECTS" ADD FOREIGN KEY ("OBJECT_TYPE") REFERENCES "SYSTEM"."REPCAT$_OBJECT_TYPES" ("OBJECT_TYPE_ID");

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."REPCAT$_TEMPLATE_PARMS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_TEMPLATE_PARMS" ADD FOREIGN KEY ("REFRESH_TEMPLATE_ID") REFERENCES "SYSTEM"."REPCAT$_REFRESH_TEMPLATES" ("REFRESH_TEMPLATE_ID") ON DELETE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."REPCAT$_TEMPLATE_REFGROUPS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_TEMPLATE_REFGROUPS" ADD FOREIGN KEY ("REFRESH_TEMPLATE_ID") REFERENCES "SYSTEM"."REPCAT$_REFRESH_TEMPLATES" ("REFRESH_TEMPLATE_ID") ON DELETE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."REPCAT$_USER_AUTHORIZATIONS"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_USER_AUTHORIZATIONS" ADD FOREIGN KEY ("REFRESH_TEMPLATE_ID") REFERENCES "SYSTEM"."REPCAT$_REFRESH_TEMPLATES" ("REFRESH_TEMPLATE_ID") ON DELETE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."REPCAT$_USER_PARM_VALUES"
-- ----------------------------
ALTER TABLE "SYSTEM"."REPCAT$_USER_PARM_VALUES" ADD FOREIGN KEY ("TEMPLATE_PARAMETER_ID") REFERENCES "SYSTEM"."REPCAT$_TEMPLATE_PARMS" ("TEMPLATE_PARAMETER_ID") ON DELETE CASCADE;

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."RESCUE"
-- ----------------------------
ALTER TABLE "SYSTEM"."RESCUE" ADD FOREIGN KEY ("RESCUE_ID") REFERENCES "SYSTEM"."DISASTER" ("ID");

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."TOOLS"
-- ----------------------------
ALTER TABLE "SYSTEM"."TOOLS" ADD FOREIGN KEY ("DIS_ID") REFERENCES "SYSTEM"."DISASTER" ("ID");

-- ----------------------------
-- Foreign Key structure for table "SYSTEM"."VOLUNTEERS"
-- ----------------------------
ALTER TABLE "SYSTEM"."VOLUNTEERS" ADD FOREIGN KEY ("DIS_ID") REFERENCES "SYSTEM"."DISASTER" ("ID");
