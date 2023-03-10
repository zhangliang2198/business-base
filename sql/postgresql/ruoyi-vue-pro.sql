/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1 PostgreSQL
 Source Server Type    : PostgreSQL
 Source Server Version : 140002
 Source Host           : 127.0.0.1:5432
 Source Catalog        : ruoyi-vue-pro
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 140002
 File Encoding         : 65001

 Date: 28/07/2022 23:48:10
*/


-- ----------------------------
-- Sequence structure for bpm_form_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "bpm_form_seq";
CREATE SEQUENCE "bpm_form_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for bpm_oa_leave_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "bpm_oa_leave_seq";
CREATE SEQUENCE "bpm_oa_leave_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for bpm_process_definition_ext_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "bpm_process_definition_ext_seq";
CREATE SEQUENCE "bpm_process_definition_ext_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for bpm_process_instance_ext_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "bpm_process_instance_ext_seq";
CREATE SEQUENCE "bpm_process_instance_ext_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for bpm_task_assign_rule_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "bpm_task_assign_rule_seq";
CREATE SEQUENCE "bpm_task_assign_rule_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for bpm_task_ext_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "bpm_task_ext_seq";
CREATE SEQUENCE "bpm_task_ext_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for bpm_user_group_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "bpm_user_group_seq";
CREATE SEQUENCE "bpm_user_group_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_api_access_log_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "infra_api_access_log_seq";
CREATE SEQUENCE "infra_api_access_log_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_api_error_log_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "infra_api_error_log_seq";
CREATE SEQUENCE "infra_api_error_log_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_codegen_column_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "infra_codegen_column_seq";
CREATE SEQUENCE "infra_codegen_column_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_codegen_table_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "infra_codegen_table_seq";
CREATE SEQUENCE "infra_codegen_table_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_config_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "infra_config_seq";
CREATE SEQUENCE "infra_config_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_data_source_config_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "infra_data_source_config_seq";
CREATE SEQUENCE "infra_data_source_config_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_file_config_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "infra_file_config_seq";
CREATE SEQUENCE "infra_file_config_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_file_content_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "infra_file_content_seq";
CREATE SEQUENCE "infra_file_content_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_file_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "infra_file_seq";
CREATE SEQUENCE "infra_file_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_job_log_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "infra_job_log_seq";
CREATE SEQUENCE "infra_job_log_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_job_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "infra_job_seq";
CREATE SEQUENCE "infra_job_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for infra_test_demo_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "infra_test_demo_seq";
CREATE SEQUENCE "infra_test_demo_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for member_user_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "member_user_seq";
CREATE SEQUENCE "member_user_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for pay_app_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pay_app_seq";
CREATE SEQUENCE "pay_app_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for pay_channel_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pay_channel_seq";
CREATE SEQUENCE "pay_channel_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for pay_merchant_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pay_merchant_seq";
CREATE SEQUENCE "pay_merchant_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for pay_notify_log_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pay_notify_log_seq";
CREATE SEQUENCE "pay_notify_log_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for pay_notify_task_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pay_notify_task_seq";
CREATE SEQUENCE "pay_notify_task_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for pay_order_extension_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pay_order_extension_seq";
CREATE SEQUENCE "pay_order_extension_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for pay_order_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pay_order_seq";
CREATE SEQUENCE "pay_order_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for pay_refund_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "pay_refund_seq";
CREATE SEQUENCE "pay_refund_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for system_dept_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "system_dept_seq";
CREATE SEQUENCE "system_dept_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for system_dict_data_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "system_dict_data_seq";
CREATE SEQUENCE "system_dict_data_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for system_dict_type_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "system_dict_type_seq";
CREATE SEQUENCE "system_dict_type_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for system_error_code_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "system_error_code_seq";
CREATE SEQUENCE "system_error_code_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for system_login_log_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "system_login_log_seq";
CREATE SEQUENCE "system_login_log_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for system_menu_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "system_menu_seq";
CREATE SEQUENCE "system_menu_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for system_notice_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "system_notice_seq";
CREATE SEQUENCE "system_notice_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for system_oauth2_access_token_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "system_oauth2_access_token_seq";
CREATE SEQUENCE "system_oauth2_access_token_seq"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for system_oauth2_approve_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "system_oauth2_approve_seq";
CREATE SEQUENCE "system_oauth2_approve_seq"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for system_oauth2_client_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "system_oauth2_client_seq";
CREATE SEQUENCE "system_oauth2_client_seq"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for system_oauth2_code_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "system_oauth2_code_seq";
CREATE SEQUENCE "system_oauth2_code_seq"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for system_oauth2_refresh_token_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "system_oauth2_refresh_token_seq";
CREATE SEQUENCE "system_oauth2_refresh_token_seq"
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for system_operate_log_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "system_operate_log_seq";
CREATE SEQUENCE "system_operate_log_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for system_post_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "system_post_seq";
CREATE SEQUENCE "system_post_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for system_role_menu_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "system_role_menu_seq";
CREATE SEQUENCE "system_role_menu_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for system_role_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "system_role_seq";
CREATE SEQUENCE "system_role_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for system_sensitive_word_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "system_sensitive_word_seq";
CREATE SEQUENCE "system_sensitive_word_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for system_sms_channel_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "system_sms_channel_seq";
CREATE SEQUENCE "system_sms_channel_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for system_sms_code_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "system_sms_code_seq";
CREATE SEQUENCE "system_sms_code_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for system_sms_log_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "system_sms_log_seq";
CREATE SEQUENCE "system_sms_log_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for system_sms_template_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "system_sms_template_seq";
CREATE SEQUENCE "system_sms_template_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for system_social_user_bind_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "system_social_user_bind_seq";
CREATE SEQUENCE "system_social_user_bind_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for system_social_user_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "system_social_user_seq";
CREATE SEQUENCE "system_social_user_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for system_tenant_package_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "system_tenant_package_seq";
CREATE SEQUENCE "system_tenant_package_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for system_tenant_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "system_tenant_seq";
CREATE SEQUENCE "system_tenant_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for system_user_post_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "system_user_post_seq";
CREATE SEQUENCE "system_user_post_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for system_user_role_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "system_user_role_seq";
CREATE SEQUENCE "system_user_role_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Sequence structure for system_user_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "system_user_seq";
CREATE SEQUENCE "system_user_seq"
INCREMENT 1
MAXVALUE 9223372036854775807
CACHE 1;

-- ----------------------------
-- Table structure for bpm_form
-- ----------------------------
DROP TABLE IF EXISTS "bpm_form";
CREATE TABLE "bpm_form" (
  "id" int8 NOT NULL,
  "name" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "status" int2 NOT NULL,
  "conf" varchar(1000) COLLATE "pg_catalog"."default" NOT NULL,
  "fields" varchar(5000) COLLATE "pg_catalog"."default" NOT NULL,
  "remark" varchar(255) COLLATE "pg_catalog"."default",
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "bpm_form"."id" IS '??????';
COMMENT ON COLUMN "bpm_form"."name" IS '?????????';
COMMENT ON COLUMN "bpm_form"."status" IS '????????????';
COMMENT ON COLUMN "bpm_form"."conf" IS '???????????????';
COMMENT ON COLUMN "bpm_form"."fields" IS '??????????????????';
COMMENT ON COLUMN "bpm_form"."remark" IS '??????';
COMMENT ON COLUMN "bpm_form"."creator" IS '?????????';
COMMENT ON COLUMN "bpm_form"."create_time" IS '????????????';
COMMENT ON COLUMN "bpm_form"."updater" IS '?????????';
COMMENT ON COLUMN "bpm_form"."update_time" IS '????????????';
COMMENT ON COLUMN "bpm_form"."deleted" IS '????????????';
COMMENT ON COLUMN "bpm_form"."tenant_id" IS '????????????';
COMMENT ON TABLE "bpm_form" IS '????????????????????????';

-- ----------------------------
-- Records of bpm_form
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bpm_oa_leave
-- ----------------------------
DROP TABLE IF EXISTS "bpm_oa_leave";
CREATE TABLE "bpm_oa_leave" (
  "id" int8 NOT NULL,
  "user_id" int8 NOT NULL,
  "type" int2 NOT NULL,
  "reason" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "start_time" timestamp(6) NOT NULL,
  "end_time" timestamp(6) NOT NULL,
  "day" int2 NOT NULL,
  "result" int2 NOT NULL,
  "process_instance_id" varchar(64) COLLATE "pg_catalog"."default",
  "creator" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default" DEFAULT ''::character varying,
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "bpm_oa_leave"."id" IS '??????????????????';
COMMENT ON COLUMN "bpm_oa_leave"."user_id" IS '????????????????????????';
COMMENT ON COLUMN "bpm_oa_leave"."type" IS '????????????';
COMMENT ON COLUMN "bpm_oa_leave"."reason" IS '????????????';
COMMENT ON COLUMN "bpm_oa_leave"."start_time" IS '????????????';
COMMENT ON COLUMN "bpm_oa_leave"."end_time" IS '????????????';
COMMENT ON COLUMN "bpm_oa_leave"."day" IS '????????????';
COMMENT ON COLUMN "bpm_oa_leave"."result" IS '????????????';
COMMENT ON COLUMN "bpm_oa_leave"."process_instance_id" IS '?????????????????????';
COMMENT ON COLUMN "bpm_oa_leave"."creator" IS '?????????';
COMMENT ON COLUMN "bpm_oa_leave"."create_time" IS '????????????';
COMMENT ON COLUMN "bpm_oa_leave"."updater" IS '?????????';
COMMENT ON COLUMN "bpm_oa_leave"."update_time" IS '????????????';
COMMENT ON COLUMN "bpm_oa_leave"."deleted" IS '????????????';
COMMENT ON COLUMN "bpm_oa_leave"."tenant_id" IS '????????????';
COMMENT ON TABLE "bpm_oa_leave" IS 'OA ???????????????';

-- ----------------------------
-- Records of bpm_oa_leave
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bpm_process_definition_ext
-- ----------------------------
DROP TABLE IF EXISTS "bpm_process_definition_ext";
CREATE TABLE "bpm_process_definition_ext" (
  "id" int8 NOT NULL,
  "process_definition_id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "model_id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "form_type" int2 NOT NULL,
  "form_id" int8,
  "form_conf" varchar(1000) COLLATE "pg_catalog"."default",
  "form_fields" varchar(5000) COLLATE "pg_catalog"."default",
  "form_custom_create_path" varchar(255) COLLATE "pg_catalog"."default",
  "form_custom_view_path" varchar(255) COLLATE "pg_catalog"."default",
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "bpm_process_definition_ext"."id" IS '??????';
COMMENT ON COLUMN "bpm_process_definition_ext"."process_definition_id" IS '?????????????????????';
COMMENT ON COLUMN "bpm_process_definition_ext"."model_id" IS '?????????????????????';
COMMENT ON COLUMN "bpm_process_definition_ext"."description" IS '??????';
COMMENT ON COLUMN "bpm_process_definition_ext"."form_type" IS '????????????';
COMMENT ON COLUMN "bpm_process_definition_ext"."form_id" IS '????????????';
COMMENT ON COLUMN "bpm_process_definition_ext"."form_conf" IS '???????????????';
COMMENT ON COLUMN "bpm_process_definition_ext"."form_fields" IS '??????????????????';
COMMENT ON COLUMN "bpm_process_definition_ext"."form_custom_create_path" IS '??????????????????????????????';
COMMENT ON COLUMN "bpm_process_definition_ext"."form_custom_view_path" IS '??????????????????????????????';
COMMENT ON COLUMN "bpm_process_definition_ext"."creator" IS '?????????';
COMMENT ON COLUMN "bpm_process_definition_ext"."create_time" IS '????????????';
COMMENT ON COLUMN "bpm_process_definition_ext"."updater" IS '?????????';
COMMENT ON COLUMN "bpm_process_definition_ext"."update_time" IS '????????????';
COMMENT ON COLUMN "bpm_process_definition_ext"."deleted" IS '????????????';
COMMENT ON COLUMN "bpm_process_definition_ext"."tenant_id" IS '????????????';
COMMENT ON TABLE "bpm_process_definition_ext" IS 'Bpm ????????????????????????
';

-- ----------------------------
-- Records of bpm_process_definition_ext
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bpm_process_instance_ext
-- ----------------------------
DROP TABLE IF EXISTS "bpm_process_instance_ext";
CREATE TABLE "bpm_process_instance_ext" (
  "id" int8 NOT NULL,
  "start_user_id" int8 NOT NULL,
  "name" varchar(64) COLLATE "pg_catalog"."default",
  "process_instance_id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "process_definition_id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "category" varchar(64) COLLATE "pg_catalog"."default",
  "status" int2 NOT NULL,
  "result" int2 NOT NULL,
  "end_time" timestamp(6),
  "form_variables" varchar(5000) COLLATE "pg_catalog"."default",
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "bpm_process_instance_ext"."id" IS '??????';
COMMENT ON COLUMN "bpm_process_instance_ext"."start_user_id" IS '???????????????????????????';
COMMENT ON COLUMN "bpm_process_instance_ext"."name" IS '?????????????????????';
COMMENT ON COLUMN "bpm_process_instance_ext"."process_instance_id" IS '?????????????????????';
COMMENT ON COLUMN "bpm_process_instance_ext"."process_definition_id" IS '?????????????????????';
COMMENT ON COLUMN "bpm_process_instance_ext"."category" IS '????????????';
COMMENT ON COLUMN "bpm_process_instance_ext"."status" IS '?????????????????????';
COMMENT ON COLUMN "bpm_process_instance_ext"."result" IS '?????????????????????';
COMMENT ON COLUMN "bpm_process_instance_ext"."end_time" IS '????????????';
COMMENT ON COLUMN "bpm_process_instance_ext"."form_variables" IS '?????????';
COMMENT ON COLUMN "bpm_process_instance_ext"."creator" IS '?????????';
COMMENT ON COLUMN "bpm_process_instance_ext"."create_time" IS '????????????';
COMMENT ON COLUMN "bpm_process_instance_ext"."updater" IS '?????????';
COMMENT ON COLUMN "bpm_process_instance_ext"."update_time" IS '????????????';
COMMENT ON COLUMN "bpm_process_instance_ext"."deleted" IS '????????????';
COMMENT ON COLUMN "bpm_process_instance_ext"."tenant_id" IS '????????????';
COMMENT ON TABLE "bpm_process_instance_ext" IS '?????????????????????????????????';

-- ----------------------------
-- Records of bpm_process_instance_ext
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bpm_task_assign_rule
-- ----------------------------
DROP TABLE IF EXISTS "bpm_task_assign_rule";
CREATE TABLE "bpm_task_assign_rule" (
  "id" int8 NOT NULL,
  "model_id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "process_definition_id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "task_definition_key" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "type" int2 NOT NULL,
  "options" varchar(1024) COLLATE "pg_catalog"."default" NOT NULL,
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "bpm_task_assign_rule"."id" IS '??????';
COMMENT ON COLUMN "bpm_task_assign_rule"."model_id" IS '?????????????????????';
COMMENT ON COLUMN "bpm_task_assign_rule"."process_definition_id" IS '?????????????????????';
COMMENT ON COLUMN "bpm_task_assign_rule"."task_definition_key" IS '????????????????????? key';
COMMENT ON COLUMN "bpm_task_assign_rule"."type" IS '????????????';
COMMENT ON COLUMN "bpm_task_assign_rule"."options" IS '????????????JSON ??????';
COMMENT ON COLUMN "bpm_task_assign_rule"."creator" IS '?????????';
COMMENT ON COLUMN "bpm_task_assign_rule"."create_time" IS '????????????';
COMMENT ON COLUMN "bpm_task_assign_rule"."updater" IS '?????????';
COMMENT ON COLUMN "bpm_task_assign_rule"."update_time" IS '????????????';
COMMENT ON COLUMN "bpm_task_assign_rule"."deleted" IS '????????????';
COMMENT ON COLUMN "bpm_task_assign_rule"."tenant_id" IS '????????????';
COMMENT ON TABLE "bpm_task_assign_rule" IS 'Bpm ???????????????';

-- ----------------------------
-- Records of bpm_task_assign_rule
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bpm_task_ext
-- ----------------------------
DROP TABLE IF EXISTS "bpm_task_ext";
CREATE TABLE "bpm_task_ext" (
  "id" int8 NOT NULL,
  "assignee_user_id" int8,
  "name" varchar(64) COLLATE "pg_catalog"."default",
  "task_id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "result" int2 NOT NULL,
  "reason" varchar(255) COLLATE "pg_catalog"."default",
  "end_time" timestamp(6),
  "process_instance_id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "process_definition_id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "bpm_task_ext"."id" IS '??????';
COMMENT ON COLUMN "bpm_task_ext"."assignee_user_id" IS '??????????????????';
COMMENT ON COLUMN "bpm_task_ext"."name" IS '???????????????';
COMMENT ON COLUMN "bpm_task_ext"."task_id" IS '???????????????';
COMMENT ON COLUMN "bpm_task_ext"."result" IS '???????????????';
COMMENT ON COLUMN "bpm_task_ext"."reason" IS '????????????';
COMMENT ON COLUMN "bpm_task_ext"."end_time" IS '?????????????????????';
COMMENT ON COLUMN "bpm_task_ext"."process_instance_id" IS '?????????????????????';
COMMENT ON COLUMN "bpm_task_ext"."process_definition_id" IS '?????????????????????';
COMMENT ON COLUMN "bpm_task_ext"."creator" IS '?????????';
COMMENT ON COLUMN "bpm_task_ext"."create_time" IS '????????????';
COMMENT ON COLUMN "bpm_task_ext"."updater" IS '?????????';
COMMENT ON COLUMN "bpm_task_ext"."update_time" IS '????????????';
COMMENT ON COLUMN "bpm_task_ext"."deleted" IS '????????????';
COMMENT ON COLUMN "bpm_task_ext"."tenant_id" IS '????????????';
COMMENT ON TABLE "bpm_task_ext" IS '????????????????????????????????????';

-- ----------------------------
-- Records of bpm_task_ext
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for bpm_user_group
-- ----------------------------
DROP TABLE IF EXISTS "bpm_user_group";
CREATE TABLE "bpm_user_group" (
  "id" int8 NOT NULL,
  "name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "member_user_ids" varchar(1024) COLLATE "pg_catalog"."default" NOT NULL,
  "status" int2 NOT NULL,
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "bpm_user_group"."id" IS '??????';
COMMENT ON COLUMN "bpm_user_group"."name" IS '??????';
COMMENT ON COLUMN "bpm_user_group"."description" IS '??????';
COMMENT ON COLUMN "bpm_user_group"."member_user_ids" IS '??????????????????';
COMMENT ON COLUMN "bpm_user_group"."status" IS '?????????0?????? 1?????????';
COMMENT ON COLUMN "bpm_user_group"."creator" IS '?????????';
COMMENT ON COLUMN "bpm_user_group"."create_time" IS '????????????';
COMMENT ON COLUMN "bpm_user_group"."updater" IS '?????????';
COMMENT ON COLUMN "bpm_user_group"."update_time" IS '????????????';
COMMENT ON COLUMN "bpm_user_group"."deleted" IS '????????????';
COMMENT ON COLUMN "bpm_user_group"."tenant_id" IS '????????????';
COMMENT ON TABLE "bpm_user_group" IS '?????????';

-- ----------------------------
-- Records of bpm_user_group
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dual
-- ----------------------------
DROP TABLE IF EXISTS "dual";
CREATE TABLE "dual" (

)
;

-- ----------------------------
-- Records of dual
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for infra_api_access_log
-- ----------------------------
DROP TABLE IF EXISTS "infra_api_access_log";
CREATE TABLE "infra_api_access_log" (
  "id" int8 NOT NULL,
  "trace_id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "user_id" int8 NOT NULL DEFAULT 0,
  "user_type" int2 NOT NULL DEFAULT 0,
  "application_name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "request_method" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "request_url" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "request_params" varchar(8000) COLLATE "pg_catalog"."default" NOT NULL,
  "user_ip" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "user_agent" varchar(512) COLLATE "pg_catalog"."default" NOT NULL,
  "begin_time" timestamp(6) NOT NULL,
  "end_time" timestamp(6) NOT NULL,
  "duration" int4 NOT NULL,
  "result_code" int4 NOT NULL,
  "result_msg" varchar(512) COLLATE "pg_catalog"."default",
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "infra_api_access_log"."id" IS '????????????';
COMMENT ON COLUMN "infra_api_access_log"."trace_id" IS '??????????????????';
COMMENT ON COLUMN "infra_api_access_log"."user_id" IS '????????????';
COMMENT ON COLUMN "infra_api_access_log"."user_type" IS '????????????';
COMMENT ON COLUMN "infra_api_access_log"."application_name" IS '?????????';
COMMENT ON COLUMN "infra_api_access_log"."request_method" IS '???????????????';
COMMENT ON COLUMN "infra_api_access_log"."request_url" IS '????????????';
COMMENT ON COLUMN "infra_api_access_log"."request_params" IS '????????????';
COMMENT ON COLUMN "infra_api_access_log"."user_ip" IS '?????? IP';
COMMENT ON COLUMN "infra_api_access_log"."user_agent" IS '????????? UA';
COMMENT ON COLUMN "infra_api_access_log"."begin_time" IS '??????????????????';
COMMENT ON COLUMN "infra_api_access_log"."end_time" IS '??????????????????';
COMMENT ON COLUMN "infra_api_access_log"."duration" IS '????????????';
COMMENT ON COLUMN "infra_api_access_log"."result_code" IS '?????????';
COMMENT ON COLUMN "infra_api_access_log"."result_msg" IS '????????????';
COMMENT ON COLUMN "infra_api_access_log"."creator" IS '?????????';
COMMENT ON COLUMN "infra_api_access_log"."create_time" IS '????????????';
COMMENT ON COLUMN "infra_api_access_log"."updater" IS '?????????';
COMMENT ON COLUMN "infra_api_access_log"."update_time" IS '????????????';
COMMENT ON COLUMN "infra_api_access_log"."deleted" IS '????????????';
COMMENT ON COLUMN "infra_api_access_log"."tenant_id" IS '????????????';
COMMENT ON TABLE "infra_api_access_log" IS 'API ???????????????';

-- ----------------------------
-- Records of infra_api_access_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for infra_api_error_log
-- ----------------------------
DROP TABLE IF EXISTS "infra_api_error_log";
CREATE TABLE "infra_api_error_log" (
  "id" int4 NOT NULL,
  "trace_id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "user_id" int4 NOT NULL DEFAULT 0,
  "user_type" int2 NOT NULL DEFAULT 0,
  "application_name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "request_method" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "request_url" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "request_params" varchar(8000) COLLATE "pg_catalog"."default" NOT NULL,
  "user_ip" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "user_agent" varchar(512) COLLATE "pg_catalog"."default" NOT NULL,
  "exception_time" timestamp(6) NOT NULL,
  "exception_name" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "exception_message" text COLLATE "pg_catalog"."default" NOT NULL,
  "exception_root_cause_message" text COLLATE "pg_catalog"."default" NOT NULL,
  "exception_stack_trace" text COLLATE "pg_catalog"."default" NOT NULL,
  "exception_class_name" varchar(512) COLLATE "pg_catalog"."default" NOT NULL,
  "exception_file_name" varchar(512) COLLATE "pg_catalog"."default" NOT NULL,
  "exception_method_name" varchar(512) COLLATE "pg_catalog"."default" NOT NULL,
  "exception_line_number" int4 NOT NULL,
  "process_status" int2 NOT NULL,
  "process_time" timestamp(6),
  "process_user_id" int4,
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "infra_api_error_log"."id" IS '??????';
COMMENT ON COLUMN "infra_api_error_log"."trace_id" IS '??????????????????
     *
     * ??????????????????????????????????????????????????????????????????????????????????????????????????????logger ?????????????????????????????????????????????????????????';
COMMENT ON COLUMN "infra_api_error_log"."user_id" IS '????????????';
COMMENT ON COLUMN "infra_api_error_log"."user_type" IS '????????????';
COMMENT ON COLUMN "infra_api_error_log"."application_name" IS '?????????
     *
     * ???????????? spring.application.name';
COMMENT ON COLUMN "infra_api_error_log"."request_method" IS '???????????????';
COMMENT ON COLUMN "infra_api_error_log"."request_url" IS '????????????';
COMMENT ON COLUMN "infra_api_error_log"."request_params" IS '????????????';
COMMENT ON COLUMN "infra_api_error_log"."user_ip" IS '?????? IP';
COMMENT ON COLUMN "infra_api_error_log"."user_agent" IS '????????? UA';
COMMENT ON COLUMN "infra_api_error_log"."exception_time" IS '??????????????????';
COMMENT ON COLUMN "infra_api_error_log"."exception_name" IS '?????????
     *
     * {@link Throwable#getClass()} ????????????';
COMMENT ON COLUMN "infra_api_error_log"."exception_message" IS '?????????????????????
     *
     * {@link cn.iocoder.common.framework.util.ExceptionUtil#getMessage(Throwable)}';
COMMENT ON COLUMN "infra_api_error_log"."exception_root_cause_message" IS '????????????????????????
     *
     * {@link cn.iocoder.common.framework.util.ExceptionUtil#getRootCauseMessage(Throwable)}';
COMMENT ON COLUMN "infra_api_error_log"."exception_stack_trace" IS '??????????????????
     *
     * {@link cn.iocoder.common.framework.util.ExceptionUtil#getServiceException(Exception)}';
COMMENT ON COLUMN "infra_api_error_log"."exception_class_name" IS '????????????????????????
     *
     * {@link StackTraceElement#getClassName()}';
COMMENT ON COLUMN "infra_api_error_log"."exception_file_name" IS '????????????????????????
     *
     * {@link StackTraceElement#getFileName()}';
COMMENT ON COLUMN "infra_api_error_log"."exception_method_name" IS '????????????????????????
     *
     * {@link StackTraceElement#getMethodName()}';
COMMENT ON COLUMN "infra_api_error_log"."exception_line_number" IS '??????????????????????????????
     *
     * {@link StackTraceElement#getLineNumber()}';
COMMENT ON COLUMN "infra_api_error_log"."process_status" IS '????????????';
COMMENT ON COLUMN "infra_api_error_log"."process_time" IS '????????????';
COMMENT ON COLUMN "infra_api_error_log"."process_user_id" IS '??????????????????';
COMMENT ON COLUMN "infra_api_error_log"."creator" IS '?????????';
COMMENT ON COLUMN "infra_api_error_log"."create_time" IS '????????????';
COMMENT ON COLUMN "infra_api_error_log"."updater" IS '?????????';
COMMENT ON COLUMN "infra_api_error_log"."update_time" IS '????????????';
COMMENT ON COLUMN "infra_api_error_log"."deleted" IS '????????????';
COMMENT ON COLUMN "infra_api_error_log"."tenant_id" IS '????????????';
COMMENT ON TABLE "infra_api_error_log" IS '??????????????????';

-- ----------------------------
-- Records of infra_api_error_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for infra_codegen_column
-- ----------------------------
DROP TABLE IF EXISTS "infra_codegen_column";
CREATE TABLE "infra_codegen_column" (
  "id" int8 NOT NULL,
  "table_id" int8 NOT NULL,
  "column_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "data_type" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "column_comment" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
  "nullable" bool NOT NULL,
  "primary_key" bool NOT NULL,
  "auto_increment" bool NOT NULL,
  "ordinal_position" int4 NOT NULL,
  "java_type" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "java_field" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "dict_type" varchar(200) COLLATE "pg_catalog"."default",
  "example" varchar(255) COLLATE "pg_catalog"."default",
  "create_operation" bool NOT NULL,
  "update_operation" bool NOT NULL,
  "list_operation" bool NOT NULL,
  "list_operation_condition" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "list_operation_result" bool NOT NULL,
  "html_type" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "infra_codegen_column"."id" IS '??????';
COMMENT ON COLUMN "infra_codegen_column"."table_id" IS '?????????';
COMMENT ON COLUMN "infra_codegen_column"."column_name" IS '?????????';
COMMENT ON COLUMN "infra_codegen_column"."data_type" IS '????????????';
COMMENT ON COLUMN "infra_codegen_column"."column_comment" IS '????????????';
COMMENT ON COLUMN "infra_codegen_column"."nullable" IS '??????????????????';
COMMENT ON COLUMN "infra_codegen_column"."primary_key" IS '????????????';
COMMENT ON COLUMN "infra_codegen_column"."auto_increment" IS '????????????';
COMMENT ON COLUMN "infra_codegen_column"."ordinal_position" IS '??????';
COMMENT ON COLUMN "infra_codegen_column"."java_type" IS 'Java ????????????';
COMMENT ON COLUMN "infra_codegen_column"."java_field" IS 'Java ?????????';
COMMENT ON COLUMN "infra_codegen_column"."dict_type" IS '????????????';
COMMENT ON COLUMN "infra_codegen_column"."example" IS '????????????';
COMMENT ON COLUMN "infra_codegen_column"."create_operation" IS '????????? Create ?????????????????????';
COMMENT ON COLUMN "infra_codegen_column"."update_operation" IS '????????? Update ?????????????????????';
COMMENT ON COLUMN "infra_codegen_column"."list_operation" IS '????????? List ?????????????????????';
COMMENT ON COLUMN "infra_codegen_column"."list_operation_condition" IS 'List ???????????????????????????';
COMMENT ON COLUMN "infra_codegen_column"."list_operation_result" IS '????????? List ???????????????????????????';
COMMENT ON COLUMN "infra_codegen_column"."html_type" IS '????????????';
COMMENT ON COLUMN "infra_codegen_column"."creator" IS '?????????';
COMMENT ON COLUMN "infra_codegen_column"."create_time" IS '????????????';
COMMENT ON COLUMN "infra_codegen_column"."updater" IS '?????????';
COMMENT ON COLUMN "infra_codegen_column"."update_time" IS '????????????';
COMMENT ON COLUMN "infra_codegen_column"."deleted" IS '????????????';
COMMENT ON TABLE "infra_codegen_column" IS '???????????????????????????';

-- ----------------------------
-- Records of infra_codegen_column
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for infra_codegen_table
-- ----------------------------
DROP TABLE IF EXISTS "infra_codegen_table";
CREATE TABLE "infra_codegen_table" (
  "id" int8 NOT NULL,
  "data_source_config_id" int8 NOT NULL,
  "scene" int2 NOT NULL,
  "table_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "table_comment" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
  "remark" varchar(500) COLLATE "pg_catalog"."default",
  "module_name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "business_name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "class_name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "class_comment" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "author" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "template_type" int2 NOT NULL,
  "parent_menu_id" int8,
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "infra_codegen_table"."id" IS '??????';
COMMENT ON COLUMN "infra_codegen_table"."data_source_config_id" IS '????????????????????????';
COMMENT ON COLUMN "infra_codegen_table"."scene" IS '????????????';
COMMENT ON COLUMN "infra_codegen_table"."table_name" IS '?????????';
COMMENT ON COLUMN "infra_codegen_table"."table_comment" IS '?????????';
COMMENT ON COLUMN "infra_codegen_table"."remark" IS '??????';
COMMENT ON COLUMN "infra_codegen_table"."module_name" IS '?????????';
COMMENT ON COLUMN "infra_codegen_table"."business_name" IS '?????????';
COMMENT ON COLUMN "infra_codegen_table"."class_name" IS '?????????';
COMMENT ON COLUMN "infra_codegen_table"."class_comment" IS '?????????';
COMMENT ON COLUMN "infra_codegen_table"."author" IS '??????';
COMMENT ON COLUMN "infra_codegen_table"."template_type" IS '????????????';
COMMENT ON COLUMN "infra_codegen_table"."parent_menu_id" IS '???????????????';
COMMENT ON COLUMN "infra_codegen_table"."creator" IS '?????????';
COMMENT ON COLUMN "infra_codegen_table"."create_time" IS '????????????';
COMMENT ON COLUMN "infra_codegen_table"."updater" IS '?????????';
COMMENT ON COLUMN "infra_codegen_table"."update_time" IS '????????????';
COMMENT ON COLUMN "infra_codegen_table"."deleted" IS '????????????';
COMMENT ON TABLE "infra_codegen_table" IS '?????????????????????';

-- ----------------------------
-- Records of infra_codegen_table
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for infra_config
-- ----------------------------
DROP TABLE IF EXISTS "infra_config";
CREATE TABLE "infra_config" (
  "id" int4 NOT NULL,
  "category" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "type" int2 NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "config_key" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "value" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
  "visible" varchar(5) COLLATE "pg_catalog"."default" NOT NULL,
  "remark" varchar(500) COLLATE "pg_catalog"."default",
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "infra_config"."id" IS '????????????';
COMMENT ON COLUMN "infra_config"."category" IS '????????????';
COMMENT ON COLUMN "infra_config"."type" IS '????????????';
COMMENT ON COLUMN "infra_config"."name" IS '????????????';
COMMENT ON COLUMN "infra_config"."config_key" IS '????????????';
COMMENT ON COLUMN "infra_config"."value" IS '????????????';
COMMENT ON COLUMN "infra_config"."visible" IS '????????????';
COMMENT ON COLUMN "infra_config"."remark" IS '??????';
COMMENT ON COLUMN "infra_config"."creator" IS '?????????';
COMMENT ON COLUMN "infra_config"."create_time" IS '????????????';
COMMENT ON COLUMN "infra_config"."updater" IS '?????????';
COMMENT ON COLUMN "infra_config"."update_time" IS '????????????';
COMMENT ON COLUMN "infra_config"."deleted" IS '????????????';
COMMENT ON TABLE "infra_config" IS '???????????????';

-- ----------------------------
-- Records of infra_config
-- ----------------------------
BEGIN;
INSERT INTO "infra_config" ("id", "category", "type", "name", "config_key", "value", "visible", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1, 'ui', 1, '????????????-????????????????????????', 'sys.index.skinName', 'skin-blue', '0', '?????? skin-blue????????? skin-green????????? skin-purple????????? skin-red????????? skin-yellow', 'admin', '2021-01-05 17:03:48', '1', '2022-03-26 23:10:31', 0);
INSERT INTO "infra_config" ("id", "category", "type", "name", "config_key", "value", "visible", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (2, 'biz', 1, '????????????-??????????????????', 'sys.user.init-password', '123456', '0', '??????????????? 123456', 'admin', '2021-01-05 17:03:48', '1', '2022-03-20 02:25:51', 0);
INSERT INTO "infra_config" ("id", "category", "type", "name", "config_key", "value", "visible", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (3, 'ui', 1, '????????????-???????????????', 'sys.index.sideTheme', 'theme-dark', '0', '????????????theme-dark???????????????theme-light', 'admin', '2021-01-05 17:03:48', '', '2021-01-19 03:05:21', 0);
INSERT INTO "infra_config" ("id", "category", "type", "name", "config_key", "value", "visible", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (4, '1', 2, 'xxx', 'demo.test', '10', '0', '5', '', '2021-01-19 03:10:26', '', '2021-01-20 09:25:55', 0);
INSERT INTO "infra_config" ("id", "category", "type", "name", "config_key", "value", "visible", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (5, 'xxx', 2, 'xxx', 'xxx', 'xxx', '1', 'xxx', '', '2021-02-09 20:06:47', '', '2021-02-09 20:06:47', 0);
INSERT INTO "infra_config" ("id", "category", "type", "name", "config_key", "value", "visible", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (6, 'biz', 2, '????????????????????????', 'gaia.captcha.enable', 'true', '1', NULL, '1', '2022-02-17 00:03:11', '1', '2022-04-04 12:51:40', 0);
COMMIT;

-- ----------------------------
-- Table structure for infra_data_source_config
-- ----------------------------
DROP TABLE IF EXISTS "infra_data_source_config";
CREATE TABLE "infra_data_source_config" (
  "id" int8 NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "url" varchar(1024) COLLATE "pg_catalog"."default" NOT NULL,
  "username" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "password" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "infra_data_source_config"."id" IS '????????????';
COMMENT ON COLUMN "infra_data_source_config"."name" IS '????????????';
COMMENT ON COLUMN "infra_data_source_config"."url" IS '???????????????';
COMMENT ON COLUMN "infra_data_source_config"."username" IS '?????????';
COMMENT ON COLUMN "infra_data_source_config"."password" IS '??????';
COMMENT ON COLUMN "infra_data_source_config"."creator" IS '?????????';
COMMENT ON COLUMN "infra_data_source_config"."create_time" IS '????????????';
COMMENT ON COLUMN "infra_data_source_config"."updater" IS '?????????';
COMMENT ON COLUMN "infra_data_source_config"."update_time" IS '????????????';
COMMENT ON COLUMN "infra_data_source_config"."deleted" IS '????????????';
COMMENT ON TABLE "infra_data_source_config" IS '??????????????????';

-- ----------------------------
-- Records of infra_data_source_config
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for infra_file
-- ----------------------------
DROP TABLE IF EXISTS "infra_file";
CREATE TABLE "infra_file" (
  "id" int8 NOT NULL DEFAULT 0,
  "config_id" int8,
  "path" varchar(512) COLLATE "pg_catalog"."default" NOT NULL,
  "url" varchar(1024) COLLATE "pg_catalog"."default" NOT NULL,
  "type" varchar(127) COLLATE "pg_catalog"."default",
  "size" int4 NOT NULL,
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0,
  "name" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "infra_file"."id" IS '????????????';
COMMENT ON COLUMN "infra_file"."config_id" IS '????????????';
COMMENT ON COLUMN "infra_file"."path" IS '????????????';
COMMENT ON COLUMN "infra_file"."url" IS '?????? URL';
COMMENT ON COLUMN "infra_file"."type" IS '????????????';
COMMENT ON COLUMN "infra_file"."size" IS '????????????';
COMMENT ON COLUMN "infra_file"."creator" IS '?????????';
COMMENT ON COLUMN "infra_file"."create_time" IS '????????????';
COMMENT ON COLUMN "infra_file"."updater" IS '?????????';
COMMENT ON COLUMN "infra_file"."update_time" IS '????????????';
COMMENT ON COLUMN "infra_file"."deleted" IS '????????????';
COMMENT ON COLUMN "infra_file"."name" IS '?????????';
COMMENT ON TABLE "infra_file" IS '?????????';

-- ----------------------------
-- Records of infra_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for infra_file_config
-- ----------------------------
DROP TABLE IF EXISTS "infra_file_config";
CREATE TABLE "infra_file_config" (
  "id" int8 NOT NULL,
  "name" varchar(63) COLLATE "pg_catalog"."default" NOT NULL,
  "storage" int2 NOT NULL,
  "remark" varchar(255) COLLATE "pg_catalog"."default",
  "master" bool NOT NULL,
  "config" varchar(4096) COLLATE "pg_catalog"."default" NOT NULL,
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "infra_file_config"."id" IS '??????';
COMMENT ON COLUMN "infra_file_config"."name" IS '?????????';
COMMENT ON COLUMN "infra_file_config"."storage" IS '?????????';
COMMENT ON COLUMN "infra_file_config"."remark" IS '??????';
COMMENT ON COLUMN "infra_file_config"."master" IS '??????????????????';
COMMENT ON COLUMN "infra_file_config"."config" IS '????????????';
COMMENT ON COLUMN "infra_file_config"."creator" IS '?????????';
COMMENT ON COLUMN "infra_file_config"."create_time" IS '????????????';
COMMENT ON COLUMN "infra_file_config"."updater" IS '?????????';
COMMENT ON COLUMN "infra_file_config"."update_time" IS '????????????';
COMMENT ON COLUMN "infra_file_config"."deleted" IS '????????????';
COMMENT ON TABLE "infra_file_config" IS '???????????????';

-- ----------------------------
-- Records of infra_file_config
-- ----------------------------
BEGIN;
INSERT INTO "infra_file_config" ("id", "name", "storage", "remark", "master", "config", "creator", "create_time", "updater", "update_time", "deleted") VALUES (4, '?????????', 1, '???????????????', 'f', '{"@class":"com.zhen777.gaia.framework.file.core.client.db.DBFileClientConfig","domain":"http://127.0.0.1:48080"}', '1', '2022-03-15 23:56:24', '1', '2022-03-26 21:39:26', 0);
INSERT INTO "infra_file_config" ("id", "name", "storage", "remark", "master", "config", "creator", "create_time", "updater", "update_time", "deleted") VALUES (5, '????????????', 10, '?????????????????????', 'f', '{"@class":"com.zhen777.gaia.framework.file.core.client.local.LocalFileClientConfig","basePath":"/Users/yunai/file_test","domain":"http://127.0.0.1:48080"}', '1', '2022-03-15 23:57:00', '1', '2022-03-26 21:39:26', 0);
INSERT INTO "infra_file_config" ("id", "name", "storage", "remark", "master", "config", "creator", "create_time", "updater", "update_time", "deleted") VALUES (11, 'S3 - ?????????', 20, NULL, 't', '{"@class":"com.zhen777.gaia.framework.file.core.client.s3.S3FileClientConfig","endpoint":"s3-cn-south-1.qiniucs.com","domain":"http://test.gaia.iocoder.cn","bucket":"ruoyi-vue-pro","accessKey":"b7yvuhBSAGjmtPhMFcn9iMOxUOY_I06cA_p0ZUx8","accessSecret":"kXM1l5ia1RvSX3QaOEcwI3RLz3Y2rmNszWonKZtP"}', '1', '2022-03-19 18:00:03', '1', '2022-05-26 00:03:47.17', 0);
COMMIT;

-- ----------------------------
-- Table structure for infra_file_content
-- ----------------------------
DROP TABLE IF EXISTS "infra_file_content";
CREATE TABLE "infra_file_content" (
  "id" int8 NOT NULL,
  "config_id" int8 NOT NULL,
  "path" varchar(512) COLLATE "pg_catalog"."default" NOT NULL,
  "content" bytea NOT NULL,
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "infra_file_content"."id" IS '??????';
COMMENT ON COLUMN "infra_file_content"."config_id" IS '????????????';
COMMENT ON COLUMN "infra_file_content"."path" IS '????????????';
COMMENT ON COLUMN "infra_file_content"."content" IS '????????????';
COMMENT ON COLUMN "infra_file_content"."creator" IS '?????????';
COMMENT ON COLUMN "infra_file_content"."create_time" IS '????????????';
COMMENT ON COLUMN "infra_file_content"."updater" IS '?????????';
COMMENT ON COLUMN "infra_file_content"."update_time" IS '????????????';
COMMENT ON COLUMN "infra_file_content"."deleted" IS '????????????';
COMMENT ON TABLE "infra_file_content" IS '?????????';

-- ----------------------------
-- Records of infra_file_content
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for infra_job
-- ----------------------------
DROP TABLE IF EXISTS "infra_job";
CREATE TABLE "infra_job" (
  "id" int8 NOT NULL,
  "name" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "status" int2 NOT NULL,
  "handler_name" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "handler_param" varchar(255) COLLATE "pg_catalog"."default",
  "cron_expression" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "retry_count" int4 NOT NULL,
  "retry_interval" int4 NOT NULL,
  "monitor_timeout" int4 NOT NULL,
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "infra_job"."id" IS '????????????';
COMMENT ON COLUMN "infra_job"."name" IS '????????????';
COMMENT ON COLUMN "infra_job"."status" IS '????????????';
COMMENT ON COLUMN "infra_job"."handler_name" IS '??????????????????';
COMMENT ON COLUMN "infra_job"."handler_param" IS '??????????????????';
COMMENT ON COLUMN "infra_job"."cron_expression" IS 'CRON ?????????';
COMMENT ON COLUMN "infra_job"."retry_count" IS '????????????';
COMMENT ON COLUMN "infra_job"."retry_interval" IS '????????????';
COMMENT ON COLUMN "infra_job"."monitor_timeout" IS '??????????????????';
COMMENT ON COLUMN "infra_job"."creator" IS '?????????';
COMMENT ON COLUMN "infra_job"."create_time" IS '????????????';
COMMENT ON COLUMN "infra_job"."updater" IS '?????????';
COMMENT ON COLUMN "infra_job"."update_time" IS '????????????';
COMMENT ON COLUMN "infra_job"."deleted" IS '????????????';
COMMENT ON TABLE "infra_job" IS '???????????????';

-- ----------------------------
-- Records of infra_job
-- ----------------------------
BEGIN;
INSERT INTO "infra_job" ("id", "name", "status", "handler_name", "handler_param", "cron_expression", "retry_count", "retry_interval", "monitor_timeout", "creator", "create_time", "updater", "update_time", "deleted") VALUES (5, '???????????? Job', 2, 'payNotifyJob', NULL, '* * * * * ?', 0, 0, 0, '1', '2021-10-27 08:34:42', '1', '2022-04-03 20:35:25', 0);
COMMIT;

-- ----------------------------
-- Table structure for infra_job_log
-- ----------------------------
DROP TABLE IF EXISTS "infra_job_log";
CREATE TABLE "infra_job_log" (
  "id" int8 NOT NULL,
  "job_id" int8 NOT NULL,
  "handler_name" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "handler_param" varchar(255) COLLATE "pg_catalog"."default",
  "execute_index" int2 NOT NULL,
  "begin_time" timestamp(6) NOT NULL,
  "end_time" timestamp(6),
  "duration" int4,
  "status" int2 NOT NULL,
  "result" varchar(4000) COLLATE "pg_catalog"."default",
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "infra_job_log"."id" IS '????????????';
COMMENT ON COLUMN "infra_job_log"."job_id" IS '????????????';
COMMENT ON COLUMN "infra_job_log"."handler_name" IS '??????????????????';
COMMENT ON COLUMN "infra_job_log"."handler_param" IS '??????????????????';
COMMENT ON COLUMN "infra_job_log"."execute_index" IS '???????????????';
COMMENT ON COLUMN "infra_job_log"."begin_time" IS '??????????????????';
COMMENT ON COLUMN "infra_job_log"."end_time" IS '??????????????????';
COMMENT ON COLUMN "infra_job_log"."duration" IS '????????????';
COMMENT ON COLUMN "infra_job_log"."status" IS '????????????';
COMMENT ON COLUMN "infra_job_log"."result" IS '????????????';
COMMENT ON COLUMN "infra_job_log"."creator" IS '?????????';
COMMENT ON COLUMN "infra_job_log"."create_time" IS '????????????';
COMMENT ON COLUMN "infra_job_log"."updater" IS '?????????';
COMMENT ON COLUMN "infra_job_log"."update_time" IS '????????????';
COMMENT ON COLUMN "infra_job_log"."deleted" IS '????????????';
COMMENT ON TABLE "infra_job_log" IS '?????????????????????';

-- ----------------------------
-- Records of infra_job_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for infra_test_demo
-- ----------------------------
DROP TABLE IF EXISTS "infra_test_demo";
CREATE TABLE "infra_test_demo" (
  "id" int8 NOT NULL,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "status" int2 NOT NULL,
  "type" int2 NOT NULL,
  "category" int2 NOT NULL,
  "remark" varchar(500) COLLATE "pg_catalog"."default",
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "infra_test_demo"."id" IS '??????';
COMMENT ON COLUMN "infra_test_demo"."name" IS '??????';
COMMENT ON COLUMN "infra_test_demo"."status" IS '??????';
COMMENT ON COLUMN "infra_test_demo"."type" IS '??????';
COMMENT ON COLUMN "infra_test_demo"."category" IS '??????';
COMMENT ON COLUMN "infra_test_demo"."remark" IS '??????';
COMMENT ON COLUMN "infra_test_demo"."creator" IS '?????????';
COMMENT ON COLUMN "infra_test_demo"."create_time" IS '????????????';
COMMENT ON COLUMN "infra_test_demo"."updater" IS '?????????';
COMMENT ON COLUMN "infra_test_demo"."update_time" IS '????????????';
COMMENT ON COLUMN "infra_test_demo"."deleted" IS '????????????';
COMMENT ON TABLE "infra_test_demo" IS '???????????????';

-- ----------------------------
-- Records of infra_test_demo
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for member_user
-- ----------------------------
DROP TABLE IF EXISTS "member_user";
CREATE TABLE "member_user" (
  "id" int8 NOT NULL,
  "nickname" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "avatar" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "status" int2 NOT NULL,
  "mobile" varchar(11) COLLATE "pg_catalog"."default" NOT NULL,
  "password" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "register_ip" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "login_ip" varchar(50) COLLATE "pg_catalog"."default",
  "login_date" timestamp(6),
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "member_user"."id" IS '??????';
COMMENT ON COLUMN "member_user"."nickname" IS '????????????';
COMMENT ON COLUMN "member_user"."avatar" IS '??????';
COMMENT ON COLUMN "member_user"."status" IS '??????';
COMMENT ON COLUMN "member_user"."mobile" IS '?????????';
COMMENT ON COLUMN "member_user"."password" IS '??????';
COMMENT ON COLUMN "member_user"."register_ip" IS '?????? IP';
COMMENT ON COLUMN "member_user"."login_ip" IS '????????????IP';
COMMENT ON COLUMN "member_user"."login_date" IS '??????????????????';
COMMENT ON COLUMN "member_user"."creator" IS '?????????';
COMMENT ON COLUMN "member_user"."create_time" IS '????????????';
COMMENT ON COLUMN "member_user"."updater" IS '?????????';
COMMENT ON COLUMN "member_user"."update_time" IS '????????????';
COMMENT ON COLUMN "member_user"."deleted" IS '????????????';
COMMENT ON COLUMN "member_user"."tenant_id" IS '????????????';
COMMENT ON TABLE "member_user" IS '??????';

-- ----------------------------
-- Records of member_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pay_app
-- ----------------------------
DROP TABLE IF EXISTS "pay_app";
CREATE TABLE "pay_app" (
  "id" int8 NOT NULL,
  "name" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "status" int2 NOT NULL,
  "remark" varchar(255) COLLATE "pg_catalog"."default",
  "pay_notify_url" varchar(1024) COLLATE "pg_catalog"."default" NOT NULL,
  "refund_notify_url" varchar(1024) COLLATE "pg_catalog"."default" NOT NULL,
  "merchant_id" int8 NOT NULL,
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "pay_app"."id" IS '????????????';
COMMENT ON COLUMN "pay_app"."name" IS '?????????';
COMMENT ON COLUMN "pay_app"."status" IS '????????????';
COMMENT ON COLUMN "pay_app"."remark" IS '??????';
COMMENT ON COLUMN "pay_app"."pay_notify_url" IS '???????????????????????????';
COMMENT ON COLUMN "pay_app"."refund_notify_url" IS '???????????????????????????';
COMMENT ON COLUMN "pay_app"."merchant_id" IS '????????????';
COMMENT ON COLUMN "pay_app"."creator" IS '?????????';
COMMENT ON COLUMN "pay_app"."create_time" IS '????????????';
COMMENT ON COLUMN "pay_app"."updater" IS '?????????';
COMMENT ON COLUMN "pay_app"."update_time" IS '????????????';
COMMENT ON COLUMN "pay_app"."deleted" IS '????????????';
COMMENT ON COLUMN "pay_app"."tenant_id" IS '????????????';
COMMENT ON TABLE "pay_app" IS '??????????????????';

-- ----------------------------
-- Records of pay_app
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pay_channel
-- ----------------------------
DROP TABLE IF EXISTS "pay_channel";
CREATE TABLE "pay_channel" (
  "id" int8 NOT NULL,
  "code" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "status" int2 NOT NULL,
  "remark" varchar(255) COLLATE "pg_catalog"."default",
  "fee_rate" float8 NOT NULL,
  "merchant_id" int8 NOT NULL,
  "app_id" int8 NOT NULL,
  "config" varchar(4096) COLLATE "pg_catalog"."default" NOT NULL,
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "pay_channel"."id" IS '????????????';
COMMENT ON COLUMN "pay_channel"."code" IS '????????????';
COMMENT ON COLUMN "pay_channel"."status" IS '????????????';
COMMENT ON COLUMN "pay_channel"."remark" IS '??????';
COMMENT ON COLUMN "pay_channel"."fee_rate" IS '?????????????????????????????????';
COMMENT ON COLUMN "pay_channel"."merchant_id" IS '????????????';
COMMENT ON COLUMN "pay_channel"."app_id" IS '????????????';
COMMENT ON COLUMN "pay_channel"."config" IS '??????????????????';
COMMENT ON COLUMN "pay_channel"."creator" IS '?????????';
COMMENT ON COLUMN "pay_channel"."create_time" IS '????????????';
COMMENT ON COLUMN "pay_channel"."updater" IS '?????????';
COMMENT ON COLUMN "pay_channel"."update_time" IS '????????????';
COMMENT ON COLUMN "pay_channel"."deleted" IS '????????????';
COMMENT ON COLUMN "pay_channel"."tenant_id" IS '????????????';
COMMENT ON TABLE "pay_channel" IS '????????????
';

-- ----------------------------
-- Records of pay_channel
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pay_merchant
-- ----------------------------
DROP TABLE IF EXISTS "pay_merchant";
CREATE TABLE "pay_merchant" (
  "id" int8 NOT NULL,
  "no" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "short_name" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "status" int2 NOT NULL,
  "remark" varchar(255) COLLATE "pg_catalog"."default",
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "pay_merchant"."id" IS '????????????';
COMMENT ON COLUMN "pay_merchant"."no" IS '?????????';
COMMENT ON COLUMN "pay_merchant"."name" IS '????????????';
COMMENT ON COLUMN "pay_merchant"."short_name" IS '????????????';
COMMENT ON COLUMN "pay_merchant"."status" IS '????????????';
COMMENT ON COLUMN "pay_merchant"."remark" IS '??????';
COMMENT ON COLUMN "pay_merchant"."creator" IS '?????????';
COMMENT ON COLUMN "pay_merchant"."create_time" IS '????????????';
COMMENT ON COLUMN "pay_merchant"."updater" IS '?????????';
COMMENT ON COLUMN "pay_merchant"."update_time" IS '????????????';
COMMENT ON COLUMN "pay_merchant"."deleted" IS '????????????';
COMMENT ON COLUMN "pay_merchant"."tenant_id" IS '????????????';
COMMENT ON TABLE "pay_merchant" IS '??????????????????';

-- ----------------------------
-- Records of pay_merchant
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pay_notify_log
-- ----------------------------
DROP TABLE IF EXISTS "pay_notify_log";
CREATE TABLE "pay_notify_log" (
  "id" int8 NOT NULL,
  "task_id" int8 NOT NULL,
  "notify_times" int2 NOT NULL,
  "response" varchar(2048) COLLATE "pg_catalog"."default" NOT NULL,
  "status" int2 NOT NULL,
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "pay_notify_log"."id" IS '????????????';
COMMENT ON COLUMN "pay_notify_log"."task_id" IS '??????????????????';
COMMENT ON COLUMN "pay_notify_log"."notify_times" IS '??????????????????';
COMMENT ON COLUMN "pay_notify_log"."response" IS '????????????';
COMMENT ON COLUMN "pay_notify_log"."status" IS '????????????';
COMMENT ON COLUMN "pay_notify_log"."creator" IS '?????????';
COMMENT ON COLUMN "pay_notify_log"."create_time" IS '????????????';
COMMENT ON COLUMN "pay_notify_log"."updater" IS '?????????';
COMMENT ON COLUMN "pay_notify_log"."update_time" IS '????????????';
COMMENT ON COLUMN "pay_notify_log"."deleted" IS '????????????';
COMMENT ON COLUMN "pay_notify_log"."tenant_id" IS '????????????';
COMMENT ON TABLE "pay_notify_log" IS '???????????? App ?????????';

-- ----------------------------
-- Records of pay_notify_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pay_notify_task
-- ----------------------------
DROP TABLE IF EXISTS "pay_notify_task";
CREATE TABLE "pay_notify_task" (
  "id" int8 NOT NULL,
  "merchant_id" int8 NOT NULL,
  "app_id" int8 NOT NULL,
  "type" int2 NOT NULL,
  "data_id" int8 NOT NULL,
  "status" int2 NOT NULL,
  "merchant_order_id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "next_notify_time" timestamp(6) NOT NULL,
  "last_execute_time" timestamp(6) NOT NULL,
  "notify_times" int2 NOT NULL,
  "max_notify_times" int2 NOT NULL,
  "notify_url" varchar(1024) COLLATE "pg_catalog"."default" NOT NULL,
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "pay_notify_task"."id" IS '????????????';
COMMENT ON COLUMN "pay_notify_task"."merchant_id" IS '????????????';
COMMENT ON COLUMN "pay_notify_task"."app_id" IS '????????????';
COMMENT ON COLUMN "pay_notify_task"."type" IS '????????????';
COMMENT ON COLUMN "pay_notify_task"."data_id" IS '????????????';
COMMENT ON COLUMN "pay_notify_task"."status" IS '????????????';
COMMENT ON COLUMN "pay_notify_task"."merchant_order_id" IS '??????????????????';
COMMENT ON COLUMN "pay_notify_task"."next_notify_time" IS '?????????????????????';
COMMENT ON COLUMN "pay_notify_task"."last_execute_time" IS '????????????????????????';
COMMENT ON COLUMN "pay_notify_task"."notify_times" IS '??????????????????';
COMMENT ON COLUMN "pay_notify_task"."max_notify_times" IS '?????????????????????';
COMMENT ON COLUMN "pay_notify_task"."notify_url" IS '??????????????????';
COMMENT ON COLUMN "pay_notify_task"."creator" IS '?????????';
COMMENT ON COLUMN "pay_notify_task"."create_time" IS '????????????';
COMMENT ON COLUMN "pay_notify_task"."updater" IS '?????????';
COMMENT ON COLUMN "pay_notify_task"."update_time" IS '????????????';
COMMENT ON COLUMN "pay_notify_task"."deleted" IS '????????????';
COMMENT ON COLUMN "pay_notify_task"."tenant_id" IS '????????????';
COMMENT ON TABLE "pay_notify_task" IS '?????????????????????????????????
';

-- ----------------------------
-- Records of pay_notify_task
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pay_order
-- ----------------------------
DROP TABLE IF EXISTS "pay_order";
CREATE TABLE "pay_order" (
  "id" int8 NOT NULL,
  "merchant_id" int8 NOT NULL,
  "app_id" int8 NOT NULL,
  "channel_id" int8,
  "channel_code" varchar(32) COLLATE "pg_catalog"."default",
  "merchant_order_id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "subject" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "body" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "notify_url" varchar(1024) COLLATE "pg_catalog"."default" NOT NULL,
  "notify_status" int2 NOT NULL,
  "amount" int8 NOT NULL,
  "channel_fee_rate" float8,
  "channel_fee_amount" int8,
  "status" int2 NOT NULL,
  "user_ip" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "expire_time" timestamp(6) NOT NULL,
  "success_time" timestamp(6),
  "notify_time" timestamp(6),
  "success_extension_id" int8,
  "refund_status" int2 NOT NULL,
  "refund_times" int2 NOT NULL,
  "refund_amount" int8 NOT NULL,
  "channel_user_id" varchar(255) COLLATE "pg_catalog"."default",
  "channel_order_no" varchar(64) COLLATE "pg_catalog"."default",
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "pay_order"."id" IS '??????????????????';
COMMENT ON COLUMN "pay_order"."merchant_id" IS '????????????';
COMMENT ON COLUMN "pay_order"."app_id" IS '????????????';
COMMENT ON COLUMN "pay_order"."channel_id" IS '????????????';
COMMENT ON COLUMN "pay_order"."channel_code" IS '????????????';
COMMENT ON COLUMN "pay_order"."merchant_order_id" IS '??????????????????';
COMMENT ON COLUMN "pay_order"."subject" IS '????????????';
COMMENT ON COLUMN "pay_order"."body" IS '????????????';
COMMENT ON COLUMN "pay_order"."notify_url" IS '??????????????????';
COMMENT ON COLUMN "pay_order"."notify_status" IS '???????????????????????????????????????';
COMMENT ON COLUMN "pay_order"."amount" IS '???????????????????????????';
COMMENT ON COLUMN "pay_order"."channel_fee_rate" IS '????????????????????????????????????';
COMMENT ON COLUMN "pay_order"."channel_fee_amount" IS '?????????????????????????????????';
COMMENT ON COLUMN "pay_order"."status" IS '????????????';
COMMENT ON COLUMN "pay_order"."user_ip" IS '?????? IP';
COMMENT ON COLUMN "pay_order"."expire_time" IS '??????????????????';
COMMENT ON COLUMN "pay_order"."success_time" IS '????????????????????????';
COMMENT ON COLUMN "pay_order"."notify_time" IS '????????????????????????';
COMMENT ON COLUMN "pay_order"."success_extension_id" IS '????????????????????????????????????';
COMMENT ON COLUMN "pay_order"."refund_status" IS '????????????';
COMMENT ON COLUMN "pay_order"."refund_times" IS '????????????';
COMMENT ON COLUMN "pay_order"."refund_amount" IS '??????????????????????????????';
COMMENT ON COLUMN "pay_order"."channel_user_id" IS '??????????????????';
COMMENT ON COLUMN "pay_order"."channel_order_no" IS '???????????????';
COMMENT ON COLUMN "pay_order"."creator" IS '?????????';
COMMENT ON COLUMN "pay_order"."create_time" IS '????????????';
COMMENT ON COLUMN "pay_order"."updater" IS '?????????';
COMMENT ON COLUMN "pay_order"."update_time" IS '????????????';
COMMENT ON COLUMN "pay_order"."deleted" IS '????????????';
COMMENT ON COLUMN "pay_order"."tenant_id" IS '????????????';
COMMENT ON TABLE "pay_order" IS '????????????
';

-- ----------------------------
-- Records of pay_order
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pay_order_extension
-- ----------------------------
DROP TABLE IF EXISTS "pay_order_extension";
CREATE TABLE "pay_order_extension" (
  "id" int8 NOT NULL,
  "no" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "order_id" int8 NOT NULL,
  "channel_id" int8 NOT NULL,
  "channel_code" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "user_ip" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "status" int2 NOT NULL,
  "channel_extras" varchar(256) COLLATE "pg_catalog"."default",
  "channel_notify_data" varchar(1024) COLLATE "pg_catalog"."default",
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "pay_order_extension"."id" IS '??????????????????';
COMMENT ON COLUMN "pay_order_extension"."no" IS '???????????????';
COMMENT ON COLUMN "pay_order_extension"."order_id" IS '??????????????????';
COMMENT ON COLUMN "pay_order_extension"."channel_id" IS '????????????';
COMMENT ON COLUMN "pay_order_extension"."channel_code" IS '????????????';
COMMENT ON COLUMN "pay_order_extension"."user_ip" IS '?????? IP';
COMMENT ON COLUMN "pay_order_extension"."status" IS '????????????';
COMMENT ON COLUMN "pay_order_extension"."channel_extras" IS '???????????????????????????';
COMMENT ON COLUMN "pay_order_extension"."channel_notify_data" IS '?????????????????????????????????';
COMMENT ON COLUMN "pay_order_extension"."creator" IS '?????????';
COMMENT ON COLUMN "pay_order_extension"."create_time" IS '????????????';
COMMENT ON COLUMN "pay_order_extension"."updater" IS '?????????';
COMMENT ON COLUMN "pay_order_extension"."update_time" IS '????????????';
COMMENT ON COLUMN "pay_order_extension"."deleted" IS '????????????';
COMMENT ON COLUMN "pay_order_extension"."tenant_id" IS '????????????';
COMMENT ON TABLE "pay_order_extension" IS '????????????
';

-- ----------------------------
-- Records of pay_order_extension
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for pay_refund
-- ----------------------------
DROP TABLE IF EXISTS "pay_refund";
CREATE TABLE "pay_refund" (
  "id" int8 NOT NULL,
  "merchant_id" int8 NOT NULL,
  "app_id" int8 NOT NULL,
  "channel_id" int8 NOT NULL,
  "channel_code" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "order_id" int8 NOT NULL,
  "trade_no" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "merchant_order_id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "merchant_refund_no" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "notify_url" varchar(1024) COLLATE "pg_catalog"."default" NOT NULL,
  "notify_status" int2 NOT NULL,
  "status" int2 NOT NULL,
  "type" int2 NOT NULL,
  "pay_amount" int8 NOT NULL,
  "refund_amount" int8 NOT NULL,
  "reason" varchar(256) COLLATE "pg_catalog"."default" NOT NULL,
  "user_ip" varchar(50) COLLATE "pg_catalog"."default",
  "channel_order_no" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "channel_refund_no" varchar(64) COLLATE "pg_catalog"."default",
  "channel_error_code" varchar(128) COLLATE "pg_catalog"."default",
  "channel_error_msg" varchar(256) COLLATE "pg_catalog"."default",
  "channel_extras" varchar(1024) COLLATE "pg_catalog"."default",
  "expire_time" timestamp(6),
  "success_time" timestamp(6),
  "notify_time" timestamp(6),
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "pay_refund"."id" IS '??????????????????';
COMMENT ON COLUMN "pay_refund"."merchant_id" IS '????????????';
COMMENT ON COLUMN "pay_refund"."app_id" IS '????????????';
COMMENT ON COLUMN "pay_refund"."channel_id" IS '????????????';
COMMENT ON COLUMN "pay_refund"."channel_code" IS '????????????';
COMMENT ON COLUMN "pay_refund"."order_id" IS '?????????????????? pay_order ???id';
COMMENT ON COLUMN "pay_refund"."trade_no" IS '??????????????? pay_extension ???no ??????';
COMMENT ON COLUMN "pay_refund"."merchant_order_id" IS '??????????????????????????????????????????';
COMMENT ON COLUMN "pay_refund"."merchant_refund_no" IS '?????????????????????????????????????????????';
COMMENT ON COLUMN "pay_refund"."notify_url" IS '????????????????????????';
COMMENT ON COLUMN "pay_refund"."notify_status" IS '???????????????????????????????????????';
COMMENT ON COLUMN "pay_refund"."status" IS '????????????';
COMMENT ON COLUMN "pay_refund"."type" IS '????????????(???????????????????????????)';
COMMENT ON COLUMN "pay_refund"."pay_amount" IS '????????????,?????????';
COMMENT ON COLUMN "pay_refund"."refund_amount" IS '????????????,?????????';
COMMENT ON COLUMN "pay_refund"."reason" IS '????????????';
COMMENT ON COLUMN "pay_refund"."user_ip" IS '?????? IP';
COMMENT ON COLUMN "pay_refund"."channel_order_no" IS '??????????????????pay_order ??????channel_order_no ??????';
COMMENT ON COLUMN "pay_refund"."channel_refund_no" IS '?????????????????????????????????';
COMMENT ON COLUMN "pay_refund"."channel_error_code" IS '?????????????????????????????????';
COMMENT ON COLUMN "pay_refund"."channel_error_msg" IS '????????????????????????????????????';
COMMENT ON COLUMN "pay_refund"."channel_extras" IS '???????????????????????????';
COMMENT ON COLUMN "pay_refund"."expire_time" IS '??????????????????';
COMMENT ON COLUMN "pay_refund"."success_time" IS '??????????????????';
COMMENT ON COLUMN "pay_refund"."notify_time" IS '??????????????????';
COMMENT ON COLUMN "pay_refund"."creator" IS '?????????';
COMMENT ON COLUMN "pay_refund"."create_time" IS '????????????';
COMMENT ON COLUMN "pay_refund"."updater" IS '?????????';
COMMENT ON COLUMN "pay_refund"."update_time" IS '????????????';
COMMENT ON COLUMN "pay_refund"."deleted" IS '????????????';
COMMENT ON COLUMN "pay_refund"."tenant_id" IS '????????????';
COMMENT ON TABLE "pay_refund" IS '????????????';

-- ----------------------------
-- Records of pay_refund
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS "qrtz_blob_triggers";
CREATE TABLE "qrtz_blob_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "blob_data" bytea
)
;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS "qrtz_calendars";
CREATE TABLE "qrtz_calendars" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "calendar_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "calendar" bytea NOT NULL
)
;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS "qrtz_cron_triggers";
CREATE TABLE "qrtz_cron_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "cron_expression" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "time_zone_id" varchar(80) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS "qrtz_fired_triggers";
CREATE TABLE "qrtz_fired_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "entry_id" varchar(95) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "instance_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "fired_time" int8 NOT NULL,
  "sched_time" int8 NOT NULL,
  "priority" int4 NOT NULL,
  "state" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "job_name" varchar(200) COLLATE "pg_catalog"."default",
  "job_group" varchar(200) COLLATE "pg_catalog"."default",
  "is_nonconcurrent" bool,
  "requests_recovery" bool
)
;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS "qrtz_job_details";
CREATE TABLE "qrtz_job_details" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "job_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "job_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(250) COLLATE "pg_catalog"."default",
  "job_class_name" varchar(250) COLLATE "pg_catalog"."default" NOT NULL,
  "is_durable" bool NOT NULL,
  "is_nonconcurrent" bool NOT NULL,
  "is_update_data" bool NOT NULL,
  "requests_recovery" bool NOT NULL,
  "job_data" bytea
)
;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
BEGIN;
INSERT INTO "qrtz_job_details" ("sched_name", "job_name", "job_group", "description", "job_class_name", "is_durable", "is_nonconcurrent", "is_update_data", "requests_recovery", "job_data") VALUES ('schedulerName', 'userSessionTimeoutJob', 'DEFAULT', NULL, 'com.zhen777.gaia.framework.quartz.core.handler.JobHandlerInvoker', 'f', 't', 't', 'f', E'\\254\\355\\000\\005sr\\000\\025org.quartz.JobDataMap\\237\\260\\203\\350\\277\\251\\260\\313\\002\\000\\000xr\\000&org.quartz.utils.StringKeyDirtyFlagMap\\202\\010\\350\\303\\373\\305](\\002\\000\\001Z\\000\\023allowsTransientDataxr\\000\\035org.quartz.utils.DirtyFlagMap\\023\\346.\\255(v\\012\\316\\002\\000\\002Z\\000\\005dirtyL\\000\\003mapt\\000\\017Ljava/util/Map;xp\\001sr\\000\\021java.util.HashMap\\005\\007\\332\\301\\303\\026`\\321\\003\\000\\002F\\000\\012loadFactorI\\000\\011thresholdxp?@\\000\\000\\000\\000\\000\\014w\\010\\000\\000\\000\\020\\000\\000\\000\\002t\\000\\006JOB_IDsr\\000\\016java.lang.Long;\\213\\344\\220\\314\\217#\\337\\002\\000\\001J\\000\\005valuexr\\000\\020java.lang.Number\\206\\254\\225\\035\\013\\224\\340\\213\\002\\000\\000xp\\000\\000\\000\\000\\000\\000\\000\\002t\\000\\020JOB_HANDLER_NAMEt\\000\\025userSessionTimeoutJobx\\000');
COMMIT;

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS "qrtz_locks";
CREATE TABLE "qrtz_locks" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "lock_name" varchar(40) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
BEGIN;
INSERT INTO "qrtz_locks" ("sched_name", "lock_name") VALUES ('schedulerName', 'TRIGGER_ACCESS');
INSERT INTO "qrtz_locks" ("sched_name", "lock_name") VALUES ('schedulerName', 'STATE_ACCESS');
COMMIT;

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS "qrtz_paused_trigger_grps";
CREATE TABLE "qrtz_paused_trigger_grps" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS "qrtz_scheduler_state";
CREATE TABLE "qrtz_scheduler_state" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "instance_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "last_checkin_time" int8 NOT NULL,
  "checkin_interval" int8 NOT NULL
)
;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
BEGIN;
INSERT INTO "qrtz_scheduler_state" ("sched_name", "instance_name", "last_checkin_time", "checkin_interval") VALUES ('schedulerName', 'Yunai.local1651328569660', 1651328650075, 15000);
COMMIT;

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS "qrtz_simple_triggers";
CREATE TABLE "qrtz_simple_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "repeat_count" int8 NOT NULL,
  "repeat_interval" int8 NOT NULL,
  "times_triggered" int8 NOT NULL
)
;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS "qrtz_simprop_triggers";
CREATE TABLE "qrtz_simprop_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "str_prop_1" varchar(512) COLLATE "pg_catalog"."default",
  "str_prop_2" varchar(512) COLLATE "pg_catalog"."default",
  "str_prop_3" varchar(512) COLLATE "pg_catalog"."default",
  "int_prop_1" int4,
  "int_prop_2" int4,
  "long_prop_1" int8,
  "long_prop_2" int8,
  "dec_prop_1" numeric(13,4),
  "dec_prop_2" numeric(13,4),
  "bool_prop_1" bool,
  "bool_prop_2" bool
)
;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS "qrtz_triggers";
CREATE TABLE "qrtz_triggers" (
  "sched_name" varchar(120) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "job_name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "job_group" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(250) COLLATE "pg_catalog"."default",
  "next_fire_time" int8,
  "prev_fire_time" int8,
  "priority" int4,
  "trigger_state" varchar(16) COLLATE "pg_catalog"."default" NOT NULL,
  "trigger_type" varchar(8) COLLATE "pg_catalog"."default" NOT NULL,
  "start_time" int8 NOT NULL,
  "end_time" int8,
  "calendar_name" varchar(200) COLLATE "pg_catalog"."default",
  "misfire_instr" int2,
  "job_data" bytea
)
;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
BEGIN;
INSERT INTO "qrtz_triggers" ("sched_name", "trigger_name", "trigger_group", "job_name", "job_group", "description", "next_fire_time", "prev_fire_time", "priority", "trigger_state", "trigger_type", "start_time", "end_time", "calendar_name", "misfire_instr", "job_data") VALUES ('schedulerName', 'userSessionTimeoutJob', 'DEFAULT', 'userSessionTimeoutJob', 'DEFAULT', NULL, 1651328700000, 1651328640000, 5, 'WAITING', 'CRON', 1651328526000, 0, NULL, 0, E'\\254\\355\\000\\005sr\\000\\025org.quartz.JobDataMap\\237\\260\\203\\350\\277\\251\\260\\313\\002\\000\\000xr\\000&org.quartz.utils.StringKeyDirtyFlagMap\\202\\010\\350\\303\\373\\305](\\002\\000\\001Z\\000\\023allowsTransientDataxr\\000\\035org.quartz.utils.DirtyFlagMap\\023\\346.\\255(v\\012\\316\\002\\000\\002Z\\000\\005dirtyL\\000\\003mapt\\000\\017Ljava/util/Map;xp\\001sr\\000\\021java.util.HashMap\\005\\007\\332\\301\\303\\026`\\321\\003\\000\\002F\\000\\012loadFactorI\\000\\011thresholdxp?@\\000\\000\\000\\000\\000\\014w\\010\\000\\000\\000\\020\\000\\000\\000\\003t\\000\\021JOB_HANDLER_PARAMpt\\000\\022JOB_RETRY_INTERVALsr\\000\\021java.lang.Integer\\022\\342\\240\\244\\367\\201\\2078\\002\\000\\001I\\000\\005valuexr\\000\\020java.lang.Number\\206\\254\\225\\035\\013\\224\\340\\213\\002\\000\\000xp\\000\\000\\007\\320t\\000\\017JOB_RETRY_COUNTsq\\000~\\000\\011\\000\\000\\000\\003x\\000');
COMMIT;

-- ----------------------------
-- Table structure for system_dept
-- ----------------------------
DROP TABLE IF EXISTS "system_dept";
CREATE TABLE "system_dept" (
  "id" int8 NOT NULL,
  "name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "parent_id" int8 NOT NULL,
  "sort" int4 NOT NULL,
  "leader_user_id" int8,
  "phone" varchar(11) COLLATE "pg_catalog"."default",
  "email" varchar(50) COLLATE "pg_catalog"."default",
  "status" int2 NOT NULL,
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "system_dept"."id" IS '??????id';
COMMENT ON COLUMN "system_dept"."name" IS '????????????';
COMMENT ON COLUMN "system_dept"."parent_id" IS '?????????id';
COMMENT ON COLUMN "system_dept"."sort" IS '????????????';
COMMENT ON COLUMN "system_dept"."leader_user_id" IS '?????????';
COMMENT ON COLUMN "system_dept"."phone" IS '????????????';
COMMENT ON COLUMN "system_dept"."email" IS '??????';
COMMENT ON COLUMN "system_dept"."status" IS '???????????????0?????? 1?????????';
COMMENT ON COLUMN "system_dept"."creator" IS '?????????';
COMMENT ON COLUMN "system_dept"."create_time" IS '????????????';
COMMENT ON COLUMN "system_dept"."updater" IS '?????????';
COMMENT ON COLUMN "system_dept"."update_time" IS '????????????';
COMMENT ON COLUMN "system_dept"."deleted" IS '????????????';
COMMENT ON COLUMN "system_dept"."tenant_id" IS '????????????';
COMMENT ON TABLE "system_dept" IS '?????????';

-- ----------------------------
-- Records of system_dept
-- ----------------------------
BEGIN;
INSERT INTO "system_dept" ("id", "name", "parent_id", "sort", "leader_user_id", "phone", "email", "status", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (100, '????????????', 0, 0, 1, '15888888888', 'ry@qq.com', 0, 'admin', '2021-01-05 17:03:47', '103', '2022-01-14 01:04:05', 0, 1);
INSERT INTO "system_dept" ("id", "name", "parent_id", "sort", "leader_user_id", "phone", "email", "status", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (101, '???????????????', 100, 1, 104, '15888888888', 'ry@qq.com', 0, 'admin', '2021-01-05 17:03:47', '1', '2022-02-22 19:47:48', 0, 1);
INSERT INTO "system_dept" ("id", "name", "parent_id", "sort", "leader_user_id", "phone", "email", "status", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (102, '???????????????', 100, 2, NULL, '15888888888', 'ry@qq.com', 0, 'admin', '2021-01-05 17:03:47', '', '2021-12-15 05:01:40', 0, 1);
INSERT INTO "system_dept" ("id", "name", "parent_id", "sort", "leader_user_id", "phone", "email", "status", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (103, '????????????', 101, 1, 104, '15888888888', 'ry@qq.com', 0, 'admin', '2021-01-05 17:03:47', '103', '2022-01-14 01:04:14', 0, 1);
INSERT INTO "system_dept" ("id", "name", "parent_id", "sort", "leader_user_id", "phone", "email", "status", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (104, '????????????', 101, 2, NULL, '15888888888', 'ry@qq.com', 0, 'admin', '2021-01-05 17:03:47', '', '2021-12-15 05:01:38', 0, 1);
INSERT INTO "system_dept" ("id", "name", "parent_id", "sort", "leader_user_id", "phone", "email", "status", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (105, '????????????', 101, 3, NULL, '15888888888', 'ry@qq.com', 0, 'admin', '2021-01-05 17:03:47', '', '2021-12-15 05:01:37', 0, 1);
INSERT INTO "system_dept" ("id", "name", "parent_id", "sort", "leader_user_id", "phone", "email", "status", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (106, '????????????', 101, 4, 103, '15888888888', 'ry@qq.com', 0, 'admin', '2021-01-05 17:03:47', '103', '2022-01-15 21:32:22', 0, 1);
INSERT INTO "system_dept" ("id", "name", "parent_id", "sort", "leader_user_id", "phone", "email", "status", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (107, '????????????', 101, 5, NULL, '15888888888', 'ry@qq.com', 0, 'admin', '2021-01-05 17:03:47', '', '2021-12-15 05:01:33', 0, 1);
INSERT INTO "system_dept" ("id", "name", "parent_id", "sort", "leader_user_id", "phone", "email", "status", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (108, '????????????', 102, 1, NULL, '15888888888', 'ry@qq.com', 0, 'admin', '2021-01-05 17:03:47', '1', '2022-02-16 08:35:45', 0, 1);
INSERT INTO "system_dept" ("id", "name", "parent_id", "sort", "leader_user_id", "phone", "email", "status", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (109, '????????????', 102, 2, NULL, '15888888888', 'ry@qq.com', 0, 'admin', '2021-01-05 17:03:47', '', '2021-12-15 05:01:29', 0, 1);
INSERT INTO "system_dept" ("id", "name", "parent_id", "sort", "leader_user_id", "phone", "email", "status", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (110, '?????????', 0, 1, NULL, NULL, NULL, 0, '110', '2022-02-23 20:46:30', '110', '2022-02-23 20:46:30', 0, 121);
INSERT INTO "system_dept" ("id", "name", "parent_id", "sort", "leader_user_id", "phone", "email", "status", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (111, '????????????', 0, 1, NULL, NULL, NULL, 0, '113', '2022-03-07 21:44:50', '113', '2022-03-07 21:44:50', 0, 122);
COMMIT;

-- ----------------------------
-- Table structure for system_dict_data
-- ----------------------------
DROP TABLE IF EXISTS "system_dict_data";
CREATE TABLE "system_dict_data" (
  "id" int8 NOT NULL,
  "sort" int4 NOT NULL,
  "label" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "value" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "dict_type" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "status" int2 NOT NULL,
  "color_type" varchar(100) COLLATE "pg_catalog"."default",
  "css_class" varchar(100) COLLATE "pg_catalog"."default",
  "remark" varchar(500) COLLATE "pg_catalog"."default",
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "system_dict_data"."id" IS '????????????';
COMMENT ON COLUMN "system_dict_data"."sort" IS '????????????';
COMMENT ON COLUMN "system_dict_data"."label" IS '????????????';
COMMENT ON COLUMN "system_dict_data"."value" IS '????????????';
COMMENT ON COLUMN "system_dict_data"."dict_type" IS '????????????';
COMMENT ON COLUMN "system_dict_data"."status" IS '?????????0?????? 1?????????';
COMMENT ON COLUMN "system_dict_data"."color_type" IS '????????????';
COMMENT ON COLUMN "system_dict_data"."css_class" IS 'css ??????';
COMMENT ON COLUMN "system_dict_data"."remark" IS '??????';
COMMENT ON COLUMN "system_dict_data"."creator" IS '?????????';
COMMENT ON COLUMN "system_dict_data"."create_time" IS '????????????';
COMMENT ON COLUMN "system_dict_data"."updater" IS '?????????';
COMMENT ON COLUMN "system_dict_data"."update_time" IS '????????????';
COMMENT ON COLUMN "system_dict_data"."deleted" IS '????????????';
COMMENT ON TABLE "system_dict_data" IS '???????????????';

-- ----------------------------
-- Records of system_dict_data
-- ----------------------------
BEGIN;
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1, 1, '???', '1', 'system_user_sex', 0, 'default', 'A', '?????????', 'admin', '2021-01-05 17:03:48', '1', '2022-03-29 00:14:39', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (2, 2, '???', '2', 'system_user_sex', 1, 'success', '', '?????????', 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 01:30:51', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (8, 1, '??????', '1', 'infra_job_status', 0, 'success', '', '????????????', 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 19:33:38', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (9, 2, '??????', '2', 'infra_job_status', 0, 'danger', '', '????????????', 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 19:33:45', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (12, 1, '????????????', '1', 'infra_config_type', 0, 'danger', '', '???????????? - ????????????', 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 19:06:02', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (13, 2, '?????????', '2', 'infra_config_type', 0, 'primary', '', '???????????? - ?????????', 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 19:06:07', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (14, 1, '??????', '1', 'system_notice_type', 0, 'success', '', '??????', 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 13:05:57', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (15, 2, '??????', '2', 'system_notice_type', 0, 'info', '', '??????', 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 13:06:01', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (16, 0, '??????', '0', 'system_operate_type', 0, 'default', '', '????????????', 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 09:32:46', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (17, 1, '??????', '1', 'system_operate_type', 0, 'info', '', '????????????', 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 09:33:16', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (18, 2, '??????', '2', 'system_operate_type', 0, 'primary', '', '????????????', 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 09:33:13', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (19, 3, '??????', '3', 'system_operate_type', 0, 'warning', '', '????????????', 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 09:33:22', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (20, 4, '??????', '4', 'system_operate_type', 0, 'danger', '', '????????????', 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 09:33:27', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (22, 5, '??????', '5', 'system_operate_type', 0, 'default', '', '????????????', 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 09:33:32', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (23, 6, '??????', '6', 'system_operate_type', 0, 'default', '', '????????????', 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 09:33:35', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (27, 1, '??????', '0', 'common_status', 0, 'primary', '', '????????????', 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 08:00:39', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (28, 2, '??????', '1', 'common_status', 0, 'info', '', '????????????', 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 08:00:44', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (29, 1, '??????', '1', 'system_menu_type', 0, '', '', '??????', 'admin', '2021-01-05 17:03:48', '', '2022-02-01 16:43:45', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (30, 2, '??????', '2', 'system_menu_type', 0, '', '', '??????', 'admin', '2021-01-05 17:03:48', '', '2022-02-01 16:43:41', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (31, 3, '??????', '3', 'system_menu_type', 0, '', '', '??????', 'admin', '2021-01-05 17:03:48', '', '2022-02-01 16:43:39', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (32, 1, '??????', '1', 'system_role_type', 0, 'danger', '', '????????????', 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 13:02:08', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (33, 2, '?????????', '2', 'system_role_type', 0, 'primary', '', '???????????????', 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 13:02:12', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (34, 1, '??????????????????', '1', 'system_data_scope', 0, '', '', '??????????????????', 'admin', '2021-01-05 17:03:48', '', '2022-02-01 16:47:17', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (35, 2, '????????????????????????', '2', 'system_data_scope', 0, '', '', '????????????????????????', 'admin', '2021-01-05 17:03:48', '', '2022-02-01 16:47:18', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (36, 3, '?????????????????????', '3', 'system_data_scope', 0, '', '', '?????????????????????', 'admin', '2021-01-05 17:03:48', '', '2022-02-01 16:47:16', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (37, 4, '??????????????????????????????', '4', 'system_data_scope', 0, '', '', '??????????????????????????????', 'admin', '2021-01-05 17:03:48', '', '2022-02-01 16:47:21', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (38, 5, '?????????????????????', '5', 'system_data_scope', 0, '', '', '?????????????????????', 'admin', '2021-01-05 17:03:48', '', '2022-02-01 16:47:23', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (39, 0, '??????', '0', 'system_login_result', 0, 'success', '', '???????????? - ??????', '', '2021-01-18 06:17:36', '1', '2022-02-16 13:23:49', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (40, 10, '????????????????????????', '10', 'system_login_result', 0, 'primary', '', '???????????? - ????????????????????????', '', '2021-01-18 06:17:54', '1', '2022-02-16 13:24:27', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (41, 20, '???????????????', '20', 'system_login_result', 0, 'warning', '', '???????????? - ???????????????', '', '2021-01-18 06:17:54', '1', '2022-02-16 13:23:57', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (42, 30, '??????????????????', '30', 'system_login_result', 0, 'info', '', '???????????? - ??????????????????', '', '2021-01-18 06:17:54', '1', '2022-02-16 13:24:07', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (43, 31, '??????????????????', '31', 'system_login_result', 0, 'info', '', '???????????? - ??????????????????', '', '2021-01-18 06:17:54', '1', '2022-02-16 13:24:11', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (44, 100, '????????????', '100', 'system_login_result', 0, 'danger', '', '???????????? - ????????????', '', '2021-01-18 06:17:54', '1', '2022-02-16 13:24:23', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (45, 1, '???', 'true', 'infra_boolean_string', 0, 'danger', '', 'Boolean ???????????? - ???', '', '2021-01-19 03:20:55', '1', '2022-03-15 23:01:45', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (46, 1, '???', 'false', 'infra_boolean_string', 0, 'info', '', 'Boolean ???????????? - ???', '', '2021-01-19 03:20:55', '1', '2022-03-15 23:09:45', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (47, 1, '????????????', '1', 'infra_redis_timeout_type', 0, 'primary', '', 'Redis ????????????????????????', '', '2021-01-26 00:53:17', '1', '2022-02-16 19:03:35', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (48, 1, '????????????', '2', 'infra_redis_timeout_type', 0, 'info', '', '????????????????????????????????????????????????', '', '2021-01-26 00:55:00', '1', '2022-02-16 19:03:41', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (49, 3, '????????????', '3', 'infra_redis_timeout_type', 0, 'success', '', 'Redis ?????????????????????', '', '2021-01-26 00:55:26', '1', '2022-02-16 19:03:45', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (50, 1, '????????????????????????', '1', 'infra_codegen_template_type', 0, '', '', NULL, '', '2021-02-05 07:09:06', '', '2022-03-10 16:33:15', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (51, 2, '????????????????????????', '2', 'infra_codegen_template_type', 0, '', '', NULL, '', '2021-02-05 07:14:46', '', '2022-03-10 16:33:19', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (53, 0, '????????????', '0', 'infra_job_status', 0, 'primary', '', NULL, '', '2021-02-07 07:46:49', '1', '2022-02-16 19:33:29', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (57, 0, '?????????', '0', 'infra_job_log_status', 0, 'primary', '', 'RUNNING', '', '2021-02-08 10:04:24', '1', '2022-02-16 19:07:48', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (58, 1, '??????', '1', 'infra_job_log_status', 0, 'success', '', NULL, '', '2021-02-08 10:06:57', '1', '2022-02-16 19:07:52', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (59, 2, '??????', '2', 'infra_job_log_status', 0, 'warning', '', '??????', '', '2021-02-08 10:07:38', '1', '2022-02-16 19:07:56', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (60, 1, '??????', '1', 'user_type', 0, 'primary', '', NULL, '', '2021-02-26 00:16:27', '1', '2022-02-16 10:22:19', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (61, 2, '?????????', '2', 'user_type', 0, 'success', '', NULL, '', '2021-02-26 00:16:34', '1', '2022-02-16 10:22:22', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (62, 0, '?????????', '0', 'infra_api_error_log_process_status', 0, 'primary', '', NULL, '', '2021-02-26 07:07:19', '1', '2022-02-16 20:14:17', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (63, 1, '?????????', '1', 'infra_api_error_log_process_status', 0, 'success', '', NULL, '', '2021-02-26 07:07:26', '1', '2022-02-16 20:14:08', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (64, 2, '?????????', '2', 'infra_api_error_log_process_status', 0, 'danger', '', NULL, '', '2021-02-26 07:07:34', '1', '2022-02-16 20:14:14', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (66, 2, '?????????', 'ALIYUN', 'system_sms_channel_code', 0, 'primary', '', NULL, '1', '2021-04-05 01:05:26', '1', '2022-02-16 10:09:52', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (67, 1, '?????????', '1', 'system_sms_template_type', 0, 'warning', '', NULL, '1', '2021-04-05 21:50:57', '1', '2022-02-16 12:48:30', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (68, 2, '??????', '2', 'system_sms_template_type', 0, 'primary', '', NULL, '1', '2021-04-05 21:51:08', '1', '2022-02-16 12:48:27', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (69, 0, '??????', '3', 'system_sms_template_type', 0, 'danger', '', NULL, '1', '2021-04-05 21:51:15', '1', '2022-02-16 12:48:22', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (70, 0, '?????????', '0', 'system_sms_send_status', 0, 'primary', '', NULL, '1', '2021-04-11 20:18:33', '1', '2022-02-16 10:26:07', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (71, 1, '????????????', '10', 'system_sms_send_status', 0, 'success', '', NULL, '1', '2021-04-11 20:18:43', '1', '2022-02-16 10:25:56', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (72, 2, '????????????', '20', 'system_sms_send_status', 0, 'danger', '', NULL, '1', '2021-04-11 20:18:49', '1', '2022-02-16 10:26:03', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (73, 3, '?????????', '30', 'system_sms_send_status', 0, 'info', '', NULL, '1', '2021-04-11 20:19:44', '1', '2022-02-16 10:26:10', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (74, 0, '????????????', '0', 'system_sms_receive_status', 0, 'primary', '', NULL, '1', '2021-04-11 20:27:43', '1', '2022-02-16 10:28:24', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (75, 1, '????????????', '10', 'system_sms_receive_status', 0, 'success', '', NULL, '1', '2021-04-11 20:29:25', '1', '2022-02-16 10:28:28', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (76, 2, '????????????', '20', 'system_sms_receive_status', 0, 'danger', '', NULL, '1', '2021-04-11 20:29:31', '1', '2022-02-16 10:28:32', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (77, 0, '??????(??????)', 'DEBUG_DING_TALK', 'system_sms_channel_code', 0, 'info', '', NULL, '1', '2021-04-13 00:20:37', '1', '2022-02-16 10:10:00', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (78, 1, '????????????', '1', 'system_error_code_type', 0, 'warning', '', NULL, '1', '2021-04-21 00:06:48', '1', '2022-02-16 13:57:20', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (79, 2, '????????????', '2', 'system_error_code_type', 0, 'primary', '', NULL, '1', '2021-04-21 00:07:14', '1', '2022-02-16 13:57:24', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (80, 100, '????????????', '100', 'system_login_type', 0, 'primary', '', '????????????', '1', '2021-10-06 00:52:02', '1', '2022-02-16 13:11:34', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (81, 101, '????????????', '101', 'system_login_type', 0, 'info', '', '????????????', '1', '2021-10-06 00:52:17', '1', '2022-02-16 13:11:40', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (83, 200, '????????????', '200', 'system_login_type', 0, 'primary', '', '????????????', '1', '2021-10-06 00:52:58', '1', '2022-02-16 13:11:49', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (85, 202, '????????????', '202', 'system_login_type', 0, 'danger', '', '????????????', '1', '2021-10-06 00:53:41', '1', '2022-02-16 13:11:57', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (86, 0, '??????', '1', 'bpm_oa_leave_type', 0, 'primary', '', NULL, '1', '2021-09-21 22:35:28', '1', '2022-02-16 10:00:41', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (87, 1, '??????', '2', 'bpm_oa_leave_type', 0, 'info', '', NULL, '1', '2021-09-21 22:36:11', '1', '2022-02-16 10:00:49', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (88, 2, '??????', '3', 'bpm_oa_leave_type', 0, 'warning', '', NULL, '1', '2021-09-21 22:36:38', '1', '2022-02-16 10:00:53', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (98, 1, 'v2', 'v2', 'pay_channel_wechat_version', 0, '', '', 'v2??????', '1', '2021-11-08 17:00:58', '1', '2021-11-08 17:00:58', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (99, 2, 'v3', 'v3', 'pay_channel_wechat_version', 0, '', '', 'v3??????', '1', '2021-11-08 17:01:07', '1', '2021-11-08 17:01:07', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (108, 1, 'RSA2', 'RSA2', 'pay_channel_alipay_sign_type', 0, '', '', 'RSA2', '1', '2021-11-18 15:39:29', '1', '2021-11-18 15:39:29', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (109, 1, '????????????', '1', 'pay_channel_alipay_mode', 0, '', '', '???????????????privateKey + alipayPublicKey', '1', '2021-11-18 15:45:23', '1', '2021-11-18 15:45:23', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (110, 2, '????????????', '2', 'pay_channel_alipay_mode', 0, '', '', '???????????????appCertContent + alipayPublicCertContent + rootCertContent', '1', '2021-11-18 15:45:40', '1', '2021-11-18 15:45:40', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (111, 1, '??????', 'https://openapi.alipay.com/gateway.do', 'pay_channel_alipay_server_type', 0, '', '', '???????????? - ??????', '1', '2021-11-18 16:59:32', '1', '2021-11-21 17:37:29', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (112, 2, '??????', 'https://openapi.alipaydev.com/gateway.do', 'pay_channel_alipay_server_type', 0, '', '', '???????????? - ??????', '1', '2021-11-18 16:59:48', '1', '2021-11-21 17:37:39', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (113, 1, '?????? JSAPI ??????', 'wx_pub', 'pay_channel_code_type', 0, '', '', '?????? JSAPI??????????????? ??????', '1', '2021-12-03 10:40:24', '1', '2021-12-04 16:41:00', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (114, 2, '?????????????????????', 'wx_lite', 'pay_channel_code_type', 0, '', '', '?????????????????????', '1', '2021-12-03 10:41:06', '1', '2021-12-03 10:41:06', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (115, 3, '?????? App ??????', 'wx_app', 'pay_channel_code_type', 0, '', '', '?????? App ??????', '1', '2021-12-03 10:41:20', '1', '2021-12-03 10:41:20', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (116, 4, '????????? PC ????????????', 'alipay_pc', 'pay_channel_code_type', 0, '', '', '????????? PC ????????????', '1', '2021-12-03 10:42:09', '1', '2021-12-03 10:42:09', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (117, 5, '????????? Wap ????????????', 'alipay_wap', 'pay_channel_code_type', 0, '', '', '????????? Wap ????????????', '1', '2021-12-03 10:42:26', '1', '2021-12-03 10:42:26', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (118, 6, '?????????App ??????', 'alipay_app', 'pay_channel_code_type', 0, '', '', '?????????App ??????', '1', '2021-12-03 10:42:55', '1', '2021-12-03 10:42:55', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (119, 7, '?????????????????????', 'alipay_qr', 'pay_channel_code_type', 0, '', '', '?????????????????????', '1', '2021-12-03 10:43:10', '1', '2021-12-03 10:43:10', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (120, 1, '????????????', '10', 'pay_order_notify_status', 0, 'success', '', '????????????', '1', '2021-12-03 11:02:41', '1', '2022-02-16 13:59:13', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (121, 2, '????????????', '20', 'pay_order_notify_status', 0, 'danger', '', '????????????', '1', '2021-12-03 11:02:59', '1', '2022-02-16 13:59:17', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (122, 3, '?????????', '0', 'pay_order_notify_status', 0, 'info', '', '?????????', '1', '2021-12-03 11:03:10', '1', '2022-02-16 13:59:23', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (123, 1, '????????????', '10', 'pay_order_status', 0, 'success', '', '????????????', '1', '2021-12-03 11:18:29', '1', '2022-02-16 15:24:25', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (124, 2, '????????????', '20', 'pay_order_status', 0, 'danger', '', '????????????', '1', '2021-12-03 11:18:42', '1', '2022-02-16 15:24:31', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (125, 3, '?????????', '0', 'pay_order_status', 0, 'info', '', '?????????', '1', '2021-12-03 11:18:18', '1', '2022-02-16 15:24:35', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (126, 1, '?????????', '0', 'pay_order_refund_status', 0, '', '', '?????????', '1', '2021-12-03 11:30:35', '1', '2021-12-03 11:34:05', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (127, 2, '????????????', '10', 'pay_order_refund_status', 0, '', '', '????????????', '1', '2021-12-03 11:30:44', '1', '2021-12-03 11:34:10', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (128, 3, '????????????', '20', 'pay_order_refund_status', 0, '', '', '????????????', '1', '2021-12-03 11:30:52', '1', '2021-12-03 11:34:14', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1117, 1, '??????????????????', '0', 'pay_refund_order_status', 0, 'primary', '', '??????????????????', '1', '2021-12-10 16:44:44', '1', '2022-02-16 14:05:24', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1118, 2, '????????????', '1', 'pay_refund_order_status', 0, 'success', '', '????????????', '1', '2021-12-10 16:44:59', '1', '2022-02-16 14:05:28', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1119, 3, '????????????', '2', 'pay_refund_order_status', 0, 'danger', '', '????????????', '1', '2021-12-10 16:45:10', '1', '2022-02-16 14:05:34', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1124, 8, '????????????', '99', 'pay_refund_order_status', 0, 'info', '', '????????????', '1', '2021-12-10 16:46:26', '1', '2022-02-16 14:05:40', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1125, 0, '??????', '1', 'bpm_model_category', 0, 'primary', '', '???????????? - ??????', '1', '2022-01-02 08:41:11', '1', '2022-02-16 20:01:42', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1126, 0, 'OA', '2', 'bpm_model_category', 0, 'success', '', '???????????? - OA', '1', '2022-01-02 08:41:22', '1', '2022-02-16 20:01:50', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1127, 0, '?????????', '1', 'bpm_process_instance_status', 0, 'primary', '', '????????????????????? - ?????????', '1', '2022-01-07 23:47:22', '1', '2022-02-16 20:07:49', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1128, 2, '?????????', '2', 'bpm_process_instance_status', 0, 'success', '', '????????????????????? - ?????????', '1', '2022-01-07 23:47:49', '1', '2022-02-16 20:07:54', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1129, 1, '?????????', '1', 'bpm_process_instance_result', 0, 'primary', '', '????????????????????? - ?????????', '1', '2022-01-07 23:48:32', '1', '2022-02-16 09:53:26', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1130, 2, '??????', '2', 'bpm_process_instance_result', 0, 'success', '', '????????????????????? - ??????', '1', '2022-01-07 23:48:45', '1', '2022-02-16 09:53:31', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1131, 3, '?????????', '3', 'bpm_process_instance_result', 0, 'danger', '', '????????????????????? - ?????????', '1', '2022-01-07 23:48:55', '1', '2022-02-16 09:53:38', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1132, 4, '?????????', '4', 'bpm_process_instance_result', 0, 'info', '', '????????????????????? - ??????', '1', '2022-01-07 23:49:06', '1', '2022-02-16 09:53:42', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1133, 10, '????????????', '10', 'bpm_model_form_type', 0, '', '', '????????????????????? - ????????????', '103', '2022-01-11 23:51:30', '103', '2022-01-11 23:51:30', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1134, 20, '????????????', '20', 'bpm_model_form_type', 0, '', '', '????????????????????? - ????????????', '103', '2022-01-11 23:51:47', '103', '2022-01-11 23:51:47', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1135, 10, '??????', '10', 'bpm_task_assign_rule_type', 0, 'info', '', '??????????????????????????? - ??????', '103', '2022-01-12 23:21:22', '1', '2022-02-16 20:06:14', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1136, 20, '???????????????', '20', 'bpm_task_assign_rule_type', 0, 'primary', '', '??????????????????????????? - ???????????????', '103', '2022-01-12 23:21:47', '1', '2022-02-16 20:05:28', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1137, 21, '??????????????????', '21', 'bpm_task_assign_rule_type', 0, 'primary', '', '??????????????????????????? - ??????????????????', '103', '2022-01-12 23:33:36', '1', '2022-02-16 20:05:31', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1138, 30, '??????', '30', 'bpm_task_assign_rule_type', 0, 'info', '', '??????????????????????????? - ??????', '103', '2022-01-12 23:34:02', '1', '2022-02-16 20:05:50', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1139, 40, '?????????', '40', 'bpm_task_assign_rule_type', 0, 'warning', '', '??????????????????????????? - ?????????', '103', '2022-01-12 23:34:21', '1', '2022-02-16 20:05:57', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1140, 50, '???????????????', '50', 'bpm_task_assign_rule_type', 0, 'danger', '', '??????????????????????????? - ???????????????', '103', '2022-01-12 23:34:43', '1', '2022-02-16 20:06:01', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1141, 22, '??????', '22', 'bpm_task_assign_rule_type', 0, 'success', '', '??????????????????????????? - ??????', '103', '2022-01-14 18:41:55', '1', '2022-02-16 20:05:39', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1142, 10, '???????????????', '10', 'bpm_task_assign_script', 0, '', '', '??????????????????????????? - ???????????????', '103', '2022-01-15 00:10:57', '103', '2022-01-15 21:24:10', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1143, 20, '??????????????????????????????', '20', 'bpm_task_assign_script', 0, '', '', '??????????????????????????? - ??????????????????????????????', '103', '2022-01-15 21:24:31', '103', '2022-01-15 21:24:31', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1144, 21, '??????????????????????????????', '21', 'bpm_task_assign_script', 0, '', '', '??????????????????????????? - ??????????????????????????????', '103', '2022-01-15 21:24:46', '103', '2022-01-15 21:24:57', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1145, 1, '????????????', '1', 'infra_codegen_scene', 0, '', '', '??????????????????????????? - ????????????', '1', '2022-02-02 13:15:06', '1', '2022-03-10 16:32:59', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1146, 2, '?????? APP', '2', 'infra_codegen_scene', 0, '', '', '??????????????????????????? - ?????? APP', '1', '2022-02-02 13:15:19', '1', '2022-03-10 16:33:03', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1147, 0, '?????????', '0', 'pay_refund_order_type', 0, 'info', '', '???????????? - ?????????', '1', '2022-02-16 14:09:01', '1', '2022-02-16 14:09:01', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1148, 10, '????????????', '10', 'pay_refund_order_type', 0, 'success', '', '???????????? - ????????????', '1', '2022-02-16 14:09:25', '1', '2022-02-16 14:11:38', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1149, 20, '????????????', '20', 'pay_refund_order_type', 0, 'warning', '', '???????????? - ????????????', '1', '2022-02-16 14:11:33', '1', '2022-02-16 14:11:33', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1150, 1, '?????????', '1', 'infra_file_storage', 0, 'default', '', NULL, '1', '2022-03-15 00:25:28', '1', '2022-03-15 00:25:28', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1151, 10, '????????????', '10', 'infra_file_storage', 0, 'default', '', NULL, '1', '2022-03-15 00:25:41', '1', '2022-03-15 00:25:56', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1152, 11, 'FTP ?????????', '11', 'infra_file_storage', 0, 'default', '', NULL, '1', '2022-03-15 00:26:06', '1', '2022-03-15 00:26:10', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1153, 12, 'SFTP ?????????', '12', 'infra_file_storage', 0, 'default', '', NULL, '1', '2022-03-15 00:26:22', '1', '2022-03-15 00:26:22', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1154, 20, 'S3 ????????????', '20', 'infra_file_storage', 0, 'default', '', NULL, '1', '2022-03-15 00:26:31', '1', '2022-03-15 00:26:45', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1155, 103, '????????????', '103', 'system_login_type', 0, 'default', '', NULL, '1', '2022-05-09 23:57:58', '1', '2022-05-09 23:58:09', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1156, 1, 'password', 'password', 'system_oauth2_grant_type', 0, 'default', '', '????????????', '1', '2022-05-12 00:22:05', '1', '2022-05-11 16:26:01', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1157, 2, 'authorization_code', 'authorization_code', 'system_oauth2_grant_type', 0, 'primary', '', '???????????????', '1', '2022-05-12 00:22:59', '1', '2022-05-11 16:26:02', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1158, 3, 'implicit', 'implicit', 'system_oauth2_grant_type', 0, 'success', '', '????????????', '1', '2022-05-12 00:23:40', '1', '2022-05-11 16:26:05', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1159, 4, 'client_credentials', 'client_credentials', 'system_oauth2_grant_type', 0, 'default', '', '???????????????', '1', '2022-05-12 00:23:51', '1', '2022-05-11 16:26:08', 0);
INSERT INTO "system_dict_data" ("id", "sort", "label", "value", "dict_type", "status", "color_type", "css_class", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1160, 5, 'refresh_token', 'refresh_token', 'system_oauth2_grant_type', 0, 'info', '', '????????????', '1', '2022-05-12 00:24:02', '1', '2022-05-11 16:26:11', 0);
COMMIT;

-- ----------------------------
-- Table structure for system_dict_type
-- ----------------------------
DROP TABLE IF EXISTS "system_dict_type";
CREATE TABLE "system_dict_type"(
                                   "id"           int8                                        NOT NULL,
                                   "name"         varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
                                   "type"         varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
                                   "status"       int2                                        NOT NULL,
                                   "remark"       varchar(500) COLLATE "pg_catalog"."default",
                                   "creator"      varchar(64) COLLATE "pg_catalog"."default",
                                   "create_time"  timestamp(6)                                NOT NULL,
                                   "updater"      varchar(64) COLLATE "pg_catalog"."default",
                                   "update_time"  timestamp(6)                                NOT NULL,
                                   "deleted_time" timestamp(6),
                                   "deleted"      int2                                        NOT NULL DEFAULT 0
)
;
COMMENT
ON COLUMN "system_dict_type"."id" IS '????????????';
COMMENT
ON COLUMN "system_dict_type"."name" IS '????????????';
COMMENT
ON COLUMN "system_dict_type"."type" IS '????????????';
COMMENT
ON COLUMN "system_dict_type"."status" IS '?????????0?????? 1?????????';
COMMENT
ON COLUMN "system_dict_type"."remark" IS '??????';
COMMENT
ON COLUMN "system_dict_type"."creator" IS '?????????';
COMMENT
ON COLUMN "system_dict_type"."create_time" IS '????????????';
COMMENT
ON COLUMN "system_dict_type"."updater" IS '?????????';
COMMENT
ON COLUMN "system_dict_type"."update_time" IS '????????????';
COMMENT
ON COLUMN "system_dict_type"."deleted_time" IS '????????????';
COMMENT
ON COLUMN "system_dict_type"."deleted" IS '????????????';
COMMENT
ON TABLE "system_dict_type" IS '???????????????';

-- ----------------------------
-- Records of system_dict_type
-- ----------------------------
BEGIN;
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater",
                                "update_time", "deleted")
VALUES (1, '????????????', 'system_user_sex', 0, NULL, 'admin', '2021-01-05 17:03:48', '', '2022-02-01 16:30:31', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater",
                                "update_time", "deleted")
VALUES (6, '????????????', 'infra_config_type', 0, NULL, 'admin', '2021-01-05 17:03:48', '', '2022-02-01 16:36:54', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater",
                                "update_time", "deleted")
VALUES (7, '????????????', 'system_notice_type', 0, NULL, 'admin', '2021-01-05 17:03:48', '', '2022-02-01 16:35:26', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (9, '????????????', 'system_operate_type', 0, NULL, 'admin', '2021-01-05 17:03:48', '1', '2022-02-16 09:32:21', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (10, '????????????', 'common_status', 0, NULL, 'admin', '2021-01-05 17:03:48', '', '2022-02-01 16:21:28', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (11, 'Boolean ????????????', 'infra_boolean_string', 0, 'boolean ?????????', '', '2021-01-19 03:20:08', '', '2022-02-01 16:37:10', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (104, '????????????', 'system_login_result', 0, '????????????', '', '2021-01-18 06:17:11', '', '2022-02-01 16:36:00', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (105, 'Redis ????????????', 'infra_redis_timeout_type', 0, 'RedisKeyDefine.TimeoutTypeEnum', '', '2021-01-26 00:52:50', '', '2022-02-01 16:50:29', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (106, '????????????????????????', 'infra_codegen_template_type', 0, NULL, '', '2021-02-05 07:08:06', '', '2022-03-10 16:33:42', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (107, '??????????????????', 'infra_job_status', 0, NULL, '', '2021-02-07 07:44:16', '', '2022-02-01 16:51:11', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (108, '????????????????????????', 'infra_job_log_status', 0, NULL, '', '2021-02-08 10:03:51', '', '2022-02-01 16:50:43', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (109, '????????????', 'user_type', 0, NULL, '', '2021-02-26 00:15:51', '', '2021-02-26 00:15:51', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (110, 'API ???????????????????????????', 'infra_api_error_log_process_status', 0, NULL, '', '2021-02-26 07:07:01', '', '2022-02-01 16:50:53', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (111, '??????????????????', 'system_sms_channel_code', 0, NULL, '1', '2021-04-05 01:04:50', '1', '2022-02-16 02:09:08', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (112, '?????????????????????', 'system_sms_template_type', 0, NULL, '1', '2021-04-05 21:50:43', '1', '2022-02-01 16:35:06', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (113, '??????????????????', 'system_sms_send_status', 0, NULL, '1', '2021-04-11 20:18:03', '1', '2022-02-01 16:35:09', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (114, '??????????????????', 'system_sms_receive_status', 0, NULL, '1', '2021-04-11 20:27:14', '1', '2022-02-01 16:35:14', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (115, '??????????????????', 'system_error_code_type', 0, NULL, '1', '2021-04-21 00:06:30', '1', '2022-02-01 16:36:49', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (116, '?????????????????????', 'system_login_type', 0, '?????????????????????', '1', '2021-10-06 00:50:46', '1', '2022-02-01 16:35:56', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (117, 'OA ????????????', 'bpm_oa_leave_type', 0, NULL, '1', '2021-09-21 22:34:33', '1', '2022-01-22 10:41:37', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (122, '????????????????????????', 'pay_channel_wechat_version', 0, '????????????????????????', '1', '2021-11-08 17:00:26', '1', '2021-11-08 17:00:26', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (127, '?????????????????????????????????', 'pay_channel_alipay_sign_type', 0, '?????????????????????????????????', '1', '2021-11-18 15:39:09', '1', '2021-11-18 15:39:09', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (128, '?????????????????????????????????', 'pay_channel_alipay_mode', 0, '?????????????????????????????????', '1', '2021-11-18 15:44:28', '1', '2021-11-18 15:44:28', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (129, '?????????????????????', 'pay_channel_alipay_server_type', 0, '?????????????????????', '1', '2021-11-18 16:58:55', '1', '2021-11-18 17:01:34', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (130, '????????????????????????', 'pay_channel_code_type', 0, '?????????????????????', '1', '2021-12-03 10:35:08', '1', '2021-12-03 10:35:08', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (131, '????????????????????????', 'pay_order_notify_status', 0, '????????????????????????', '1', '2021-12-03 10:53:29', '1', '2021-12-03 10:53:29', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (132, '??????????????????', 'pay_order_status', 0, '??????????????????', '1', '2021-12-03 11:17:50', '1', '2021-12-03 11:17:50', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (133, '????????????????????????', 'pay_order_refund_status', 0, '????????????????????????', '1', '2021-12-03 11:27:31', '1', '2021-12-03 11:27:31', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (134, '??????????????????', 'pay_refund_order_status', 0, '??????????????????', '1', '2021-12-10 16:42:50', '1', '2021-12-10 16:42:50', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (135, '??????????????????', 'pay_refund_order_type', 0, '??????????????????', '1', '2021-12-10 17:14:53', '1', '2021-12-10 17:14:53', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (138, '????????????', 'bpm_model_category', 0, '????????????', '1', '2022-01-02 08:40:45', '1', '2022-01-02 08:40:45', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (139, '?????????????????????', 'bpm_process_instance_status', 0, '?????????????????????', '1', '2022-01-07 23:46:42', '1', '2022-01-07 23:46:42', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (140, '?????????????????????', 'bpm_process_instance_result', 0, '?????????????????????', '1', '2022-01-07 23:48:10', '1', '2022-01-07 23:48:10', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (141, '?????????????????????', 'bpm_model_form_type', 0, '?????????????????????', '103', '2022-01-11 23:50:45', '103', '2022-01-11 23:50:45', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (142, '???????????????????????????', 'bpm_task_assign_rule_type', 0, '???????????????????????????', '103', '2022-01-12 23:21:04', '103', '2022-01-12 15:46:10', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (143, '???????????????????????????', 'bpm_task_assign_script', 0, '???????????????????????????', '103', '2022-01-15 00:10:35', '103', '2022-01-15 00:10:35', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (144, '???????????????????????????', 'infra_codegen_scene', 0, '???????????????????????????', '1', '2022-02-02 13:14:45', '1', '2022-03-10 16:33:46', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (145, '????????????', 'system_role_type', 0, '????????????', '1', '2022-02-16 13:01:46', '1', '2022-02-16 13:01:46', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (146, '???????????????', 'infra_file_storage', 0, '???????????????', '1', '2022-03-15 00:24:38', '1', '2022-03-15 00:24:38', 0);
INSERT INTO "system_dict_type" ("id", "name", "type", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted") VALUES (147, 'OAuth 2.0 ????????????', 'system_oauth2_grant_type', 0, 'OAuth 2.0 ????????????????????????', '1', '2022-05-12 00:20:52', '1', '2022-05-11 16:25:49', 0);
COMMIT;

-- ----------------------------
-- Table structure for system_error_code
-- ----------------------------
DROP TABLE IF EXISTS "system_error_code";
CREATE TABLE "system_error_code" (
  "id" int8 NOT NULL,
  "type" int2 NOT NULL,
  "application_name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "code" int4 NOT NULL,
  "message" varchar(512) COLLATE "pg_catalog"."default" NOT NULL,
  "memo" varchar(512) COLLATE "pg_catalog"."default",
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "system_error_code"."id" IS '???????????????';
COMMENT ON COLUMN "system_error_code"."type" IS '???????????????';
COMMENT ON COLUMN "system_error_code"."application_name" IS '?????????';
COMMENT ON COLUMN "system_error_code"."code" IS '???????????????';
COMMENT ON COLUMN "system_error_code"."message" IS '?????????????????????';
COMMENT ON COLUMN "system_error_code"."memo" IS '??????';
COMMENT ON COLUMN "system_error_code"."creator" IS '?????????';
COMMENT ON COLUMN "system_error_code"."create_time" IS '????????????';
COMMENT ON COLUMN "system_error_code"."updater" IS '?????????';
COMMENT ON COLUMN "system_error_code"."update_time" IS '????????????';
COMMENT ON COLUMN "system_error_code"."deleted" IS '????????????';
COMMENT ON TABLE "system_error_code" IS '????????????';

-- ----------------------------
-- Records of system_error_code
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for system_login_log
-- ----------------------------
DROP TABLE IF EXISTS "system_login_log";
CREATE TABLE "system_login_log" (
  "id" int8 NOT NULL,
  "log_type" int8 NOT NULL,
  "trace_id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "user_id" int8 NOT NULL DEFAULT 0,
  "user_type" int2 NOT NULL,
  "username" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "result" int2 NOT NULL,
  "user_ip" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "user_agent" varchar(512) COLLATE "pg_catalog"."default" NOT NULL,
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "system_login_log"."id" IS '??????ID';
COMMENT ON COLUMN "system_login_log"."log_type" IS '????????????';
COMMENT ON COLUMN "system_login_log"."trace_id" IS '??????????????????';
COMMENT ON COLUMN "system_login_log"."user_id" IS '????????????';
COMMENT ON COLUMN "system_login_log"."user_type" IS '????????????';
COMMENT ON COLUMN "system_login_log"."username" IS '????????????';
COMMENT ON COLUMN "system_login_log"."result" IS '????????????';
COMMENT ON COLUMN "system_login_log"."user_ip" IS '?????? IP';
COMMENT ON COLUMN "system_login_log"."user_agent" IS '????????? UA';
COMMENT ON COLUMN "system_login_log"."creator" IS '?????????';
COMMENT ON COLUMN "system_login_log"."create_time" IS '????????????';
COMMENT ON COLUMN "system_login_log"."updater" IS '?????????';
COMMENT ON COLUMN "system_login_log"."update_time" IS '????????????';
COMMENT ON COLUMN "system_login_log"."deleted" IS '????????????';
COMMENT ON COLUMN "system_login_log"."tenant_id" IS '????????????';
COMMENT ON TABLE "system_login_log" IS '??????????????????';

-- ----------------------------
-- Records of system_login_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for system_menu
-- ----------------------------
DROP TABLE IF EXISTS "system_menu";
CREATE TABLE "system_menu" (
  "id" int8 NOT NULL,
  "name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "permission" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "type" int2 NOT NULL,
  "sort" int4 NOT NULL,
  "parent_id" int8 NOT NULL,
  "path" varchar(200) COLLATE "pg_catalog"."default",
  "icon" varchar(100) COLLATE "pg_catalog"."default",
  "component" varchar(255) COLLATE "pg_catalog"."default",
  "status" int2 NOT NULL,
  "visible" bool NOT NULL,
  "keep_alive" bool NOT NULL,
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "system_menu"."id" IS '??????ID';
COMMENT ON COLUMN "system_menu"."name" IS '????????????';
COMMENT ON COLUMN "system_menu"."permission" IS '????????????';
COMMENT ON COLUMN "system_menu"."type" IS '????????????';
COMMENT ON COLUMN "system_menu"."sort" IS '????????????';
COMMENT ON COLUMN "system_menu"."parent_id" IS '?????????ID';
COMMENT ON COLUMN "system_menu"."path" IS '????????????';
COMMENT ON COLUMN "system_menu"."icon" IS '????????????';
COMMENT ON COLUMN "system_menu"."component" IS '????????????';
COMMENT ON COLUMN "system_menu"."status" IS '????????????';
COMMENT ON COLUMN "system_menu"."visible" IS '????????????';
COMMENT ON COLUMN "system_menu"."keep_alive" IS '????????????';
COMMENT ON COLUMN "system_menu"."creator" IS '?????????';
COMMENT ON COLUMN "system_menu"."create_time" IS '????????????';
COMMENT ON COLUMN "system_menu"."updater" IS '?????????';
COMMENT ON COLUMN "system_menu"."update_time" IS '????????????';
COMMENT ON COLUMN "system_menu"."deleted" IS '????????????';
COMMENT ON TABLE "system_menu" IS '???????????????';

-- ----------------------------
-- Records of system_menu
-- ----------------------------
BEGIN;
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (2, '????????????', '', 1, 20, 0, '/infra', 'monitor', NULL, 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (5, 'OA ??????', '', 1, 40, 1185, 'oa', 'people', NULL, 0, 't', 't', 'admin', '2021-09-20 16:26:19', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (100, '????????????', 'system:user:list', 2, 1, 1, 'user', 'user', 'system/user/index', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (101, '????????????', '', 2, 2, 1, 'role', 'peoples', 'system/role/index', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (102, '????????????', '', 2, 3, 1, 'menu', 'tree-table', 'system/menu/index', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (103, '????????????', '', 2, 4, 1, 'dept', 'tree', 'system/dept/index', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (104, '????????????', '', 2, 5, 1, 'post', 'post', 'system/post/index', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (105, '????????????', '', 2, 6, 1, 'dict', 'dict', 'system/dict/index', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (106, '????????????', '', 2, 6, 2, 'config', 'edit', 'infra/config/index', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (107, '????????????', '', 2, 8, 1, 'notice', 'message', 'system/notice/index', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (108, '????????????', '', 1, 9, 1, 'log', 'log', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (109, '????????????', '', 2, 2, 1261, 'token', 'online', 'system/oauth2/token/index', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-05-11 23:31:42', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (110, '????????????', '', 2, 12, 2, 'job', 'job', 'infra/job/index', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (111, 'MySQL ??????', '', 2, 9, 2, 'druid', 'druid', 'infra/druid/index', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (112, 'Java ??????', '', 2, 11, 2, 'admin-server', 'server', 'infra/server/index', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (113, 'Redis ??????', '', 2, 10, 2, 'redis', 'redis', 'infra/redis/index', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (114, '????????????', 'infra:build:list', 2, 2, 2, 'build', 'build', 'infra/build/index', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (115, '????????????', 'infra:codegen:query', 2, 1, 2, 'codegen', 'code', 'infra/codegen/index', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (116, '????????????', 'infra:swagger:list', 2, 3, 2, 'swagger', 'swagger', 'infra/swagger/index', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (500, '????????????', '', 2, 1, 108, 'operate-log', 'form', 'system/operatelog/index', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (501, '????????????', '', 2, 2, 108, 'login-log', 'logininfor', 'system/loginlog/index', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1001, '????????????', 'system:user:query', 3, 1, 100, '', '#', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1002, '????????????', 'system:user:create', 3, 2, 100, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1003, '????????????', 'system:user:update', 3, 3, 100, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1004, '????????????', 'system:user:delete', 3, 4, 100, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1005, '????????????', 'system:user:export', 3, 5, 100, '', '#', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1006, '????????????', 'system:user:import', 3, 6, 100, '', '#', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1007, '????????????', 'system:user:update-password', 3, 7, 100, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1008, '????????????', 'system:role:query', 3, 1, 101, '', '#', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1009, '????????????', 'system:role:create', 3, 2, 101, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1010, '????????????', 'system:role:update', 3, 3, 101, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1011, '????????????', 'system:role:delete', 3, 4, 101, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1012, '????????????', 'system:role:export', 3, 5, 101, '', '#', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1013, '????????????', 'system:menu:query', 3, 1, 102, '', '#', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1014, '????????????', 'system:menu:create', 3, 2, 102, '', '#', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1015, '????????????', 'system:menu:update', 3, 3, 102, '', '#', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1016, '????????????', 'system:menu:delete', 3, 4, 102, '', '#', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1017, '????????????', 'system:dept:query', 3, 1, 103, '', '#', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1018, '????????????', 'system:dept:create', 3, 2, 103, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1019, '????????????', 'system:dept:update', 3, 3, 103, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1020, '????????????', 'system:dept:delete', 3, 4, 103, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1021, '????????????', 'system:post:query', 3, 1, 104, '', '#', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1022, '????????????', 'system:post:create', 3, 2, 104, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1023, '????????????', 'system:post:update', 3, 3, 104, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1024, '????????????', 'system:post:delete', 3, 4, 104, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1025, '????????????', 'system:post:export', 3, 5, 104, '', '#', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1026, '????????????', 'system:dict:query', 3, 1, 105, '#', '#', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1027, '????????????', 'system:dict:create', 3, 2, 105, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1028, '????????????', 'system:dict:update', 3, 3, 105, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1029, '????????????', 'system:dict:delete', 3, 4, 105, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1030, '????????????', 'system:dict:export', 3, 5, 105, '#', '#', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1031, '????????????', 'infra:config:query', 3, 1, 106, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1032, '????????????', 'infra:config:create', 3, 2, 106, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1033, '????????????', 'infra:config:update', 3, 3, 106, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1034, '????????????', 'infra:config:delete', 3, 4, 106, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1035, '????????????', 'infra:config:export', 3, 5, 106, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1036, '????????????', 'system:notice:query', 3, 1, 107, '#', '#', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1037, '????????????', 'system:notice:create', 3, 2, 107, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1038, '????????????', 'system:notice:update', 3, 3, 107, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1039, '????????????', 'system:notice:delete', 3, 4, 107, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1040, '????????????', 'system:operate-log:query', 3, 1, 500, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1042, '????????????', 'system:operate-log:export', 3, 2, 500, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1043, '????????????', 'system:login-log:query', 3, 1, 501, '#', '#', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1045, '????????????', 'system:login-log:export', 3, 3, 501, '#', '#', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1046, '????????????', 'system:oauth2-token:page', 3, 1, 109, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-05-09 23:54:42', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1048, '????????????', 'system:oauth2-token:delete', 3, 2, 109, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-05-09 23:54:53', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1050, '????????????', 'infra:job:create', 3, 2, 110, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1051, '????????????', 'infra:job:update', 3, 3, 110, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1052, '????????????', 'infra:job:delete', 3, 4, 110, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1053, '????????????', 'infra:job:update', 3, 5, 110, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1054, '????????????', 'infra:job:export', 3, 7, 110, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1056, '????????????', 'infra:codegen:update', 3, 2, 115, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1057, '????????????', 'infra:codegen:delete', 3, 3, 115, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1058, '????????????', 'infra:codegen:create', 3, 2, 115, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1059, '????????????', 'infra:codegen:preview', 3, 4, 115, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1060, '????????????', 'infra:codegen:download', 3, 5, 115, '', '', '', 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1063, '????????????????????????', 'system:permission:assign-role-menu', 3, 6, 101, '', '', '', 0, 't', 't', '', '2021-01-06 17:53:44', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1064, '????????????????????????', 'system:permission:assign-role-data-scope', 3, 7, 101, '', '', '', 0, 't', 't', '', '2021-01-06 17:56:31', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1065, '??????????????????', 'system:permission:assign-user-role', 3, 8, 101, '', '', '', 0, 't', 't', '', '2021-01-07 10:23:28', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1066, '?????? Redis ????????????', 'infra:redis:get-monitor-info', 3, 1, 113, '', '', '', 0, 't', 't', '', '2021-01-26 01:02:31', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1067, '?????? Redis Key ??????', 'infra:redis:get-key-list', 3, 2, 113, '', '', '', 0, 't', 't', '', '2021-01-26 01:02:52', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1070, '??????????????????', 'infra:test-demo:query', 2, 1, 2, 'test-demo', 'validCode', 'infra/testDemo/index', 0, 't', 't', '', '2021-02-06 12:42:49', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1071, '?????????????????????', 'infra:test-demo:create', 3, 1, 1070, '', '', '', 0, 't', 't', '', '2021-02-06 12:42:49', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1072, '?????????????????????', 'infra:test-demo:update', 3, 2, 1070, '', '', '', 0, 't', 't', '', '2021-02-06 12:42:49', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1073, '?????????????????????', 'infra:test-demo:delete', 3, 3, 1070, '', '', '', 0, 't', 't', '', '2021-02-06 12:42:49', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1074, '?????????????????????', 'infra:test-demo:export', 3, 4, 1070, '', '', '', 0, 't', 't', '', '2021-02-06 12:42:49', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1075, '????????????', 'infra:job:trigger', 3, 8, 110, '', '', '', 0, 't', 't', '', '2021-02-07 13:03:10', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1076, '???????????????', '', 2, 4, 2, 'db-doc', 'table', 'infra/dbDoc/index', 0, 't', 't', '', '2021-02-08 01:41:47', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1077, '????????????', '', 2, 13, 2, 'skywalking', 'eye-open', 'infra/skywalking/index', 0, 't', 't', '', '2021-02-08 20:41:31', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1078, '????????????', '', 2, 1, 1083, 'api-access-log', 'log', 'infra/apiAccessLog/index', 0, 't', 't', '', '2021-02-26 01:32:59', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1082, '????????????', 'infra:api-access-log:export', 3, 2, 1078, '', '', '', 0, 't', 't', '', '2021-02-26 01:32:59', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1083, 'API ??????', '', 2, 8, 2, 'log', 'log', NULL, 0, 't', 't', '', '2021-02-26 02:18:24', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1084, '????????????', 'infra:api-error-log:query', 2, 2, 1083, 'api-error-log', 'log', 'infra/apiErrorLog/index', 0, 't', 't', '', '2021-02-26 07:53:20', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1085, '????????????', 'infra:api-error-log:update-status', 3, 2, 1084, '', '', '', 0, 't', 't', '', '2021-02-26 07:53:20', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1086, '????????????', 'infra:api-error-log:export', 3, 3, 1084, '', '', '', 0, 't', 't', '', '2021-02-26 07:53:20', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1087, '????????????', 'infra:job:query', 3, 1, 110, '', '', '', 0, 't', 't', '1', '2021-03-10 01:26:19', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1088, '????????????', 'infra:api-access-log:query', 3, 1, 1078, '', '', '', 0, 't', 't', '1', '2021-03-10 01:28:04', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1089, '????????????', 'infra:api-error-log:query', 3, 1, 1084, '', '', '', 0, 't', 't', '1', '2021-03-10 01:29:09', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1090, '????????????', '', 2, 5, 1243, 'file', 'upload', 'infra/file/index', 0, 't', 't', '', '2021-03-12 20:16:20', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1091, '????????????', 'infra:file:query', 3, 1, 1090, '', '', '', 0, 't', 't', '', '2021-03-12 20:16:20', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1092, '????????????', 'infra:file:delete', 3, 4, 1090, '', '', '', 0, 't', 't', '', '2021-03-12 20:16:20', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1093, '????????????', '', 1, 11, 1, 'sms', 'validCode', NULL, 0, 't', 't', '1', '2021-04-05 01:10:16', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1094, '????????????', '', 2, 0, 1093, 'sms-channel', 'phone', 'system/sms/smsChannel', 0, 't', 't', '', '2021-04-01 11:07:15', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1095, '??????????????????', 'system:sms-channel:query', 3, 1, 1094, '', '', '', 0, 't', 't', '', '2021-04-01 11:07:15', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1096, '??????????????????', 'system:sms-channel:create', 3, 2, 1094, '', '', '', 0, 't', 't', '', '2021-04-01 11:07:15', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1097, '??????????????????', 'system:sms-channel:update', 3, 3, 1094, '', '', '', 0, 't', 't', '', '2021-04-01 11:07:15', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1098, '??????????????????', 'system:sms-channel:delete', 3, 4, 1094, '', '', '', 0, 't', 't', '', '2021-04-01 11:07:15', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1100, '????????????', '', 2, 1, 1093, 'sms-template', 'phone', 'system/sms/smsTemplate', 0, 't', 't', '', '2021-04-01 17:35:17', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1101, '??????????????????', 'system:sms-template:query', 3, 1, 1100, '', '', '', 0, 't', 't', '', '2021-04-01 17:35:17', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1102, '??????????????????', 'system:sms-template:create', 3, 2, 1100, '', '', '', 0, 't', 't', '', '2021-04-01 17:35:17', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1103, '??????????????????', 'system:sms-template:update', 3, 3, 1100, '', '', '', 0, 't', 't', '', '2021-04-01 17:35:17', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1104, '??????????????????', 'system:sms-template:delete', 3, 4, 1100, '', '', '', 0, 't', 't', '', '2021-04-01 17:35:17', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1105, '??????????????????', 'system:sms-template:export', 3, 5, 1100, '', '', '', 0, 't', 't', '', '2021-04-01 17:35:17', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1106, '??????????????????', 'system:sms-template:send-sms', 3, 6, 1100, '', '', '', 0, 't', 't', '1', '2021-04-11 00:26:40', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1107, '????????????', '', 2, 2, 1093, 'sms-log', 'phone', 'system/sms/smsLog', 0, 't', 't', '', '2021-04-11 08:37:05', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1108, '??????????????????', 'system:sms-log:query', 3, 1, 1107, '', '', '', 0, 't', 't', '', '2021-04-11 08:37:05', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1109, '??????????????????', 'system:sms-log:export', 3, 5, 1107, '', '', '', 0, 't', 't', '', '2021-04-11 08:37:05', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1110, '???????????????', '', 2, 12, 1, 'error-code', 'code', 'system/errorCode/index', 0, 't', 't', '', '2021-04-13 21:46:42', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1111, '???????????????', 'system:error-code:query', 3, 1, 1110, '', '', '', 0, 't', 't', '', '2021-04-13 21:46:42', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1112, '???????????????', 'system:error-code:create', 3, 2, 1110, '', '', '', 0, 't', 't', '', '2021-04-13 21:46:42', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1113, '???????????????', 'system:error-code:update', 3, 3, 1110, '', '', '', 0, 't', 't', '', '2021-04-13 21:46:42', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1114, '???????????????', 'system:error-code:delete', 3, 4, 1110, '', '', '', 0, 't', 't', '', '2021-04-13 21:46:42', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1115, '???????????????', 'system:error-code:export', 3, 5, 1110, '', '', '', 0, 't', 't', '', '2021-04-13 21:46:42', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1118, '????????????', '', 2, 0, 5, 'leave', 'user', 'bpm/oa/leave/index', 0, 't', 't', '', '2021-09-20 08:51:03', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1119, '??????????????????', 'bpm:oa-leave:query', 3, 1, 1118, '', '', '', 0, 't', 't', '', '2021-09-20 08:51:03', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1120, '??????????????????', 'bpm:oa-leave:create', 3, 2, 1118, '', '', '', 0, 't', 't', '', '2021-09-20 08:51:03', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1126, '????????????', '', 2, 1, 1117, 'app', 'table', 'pay/app/index', 0, 't', 't', '', '2021-11-10 01:13:30', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1127, '????????????????????????', 'pay:app:query', 3, 1, 1126, '', '', '', 0, 't', 't', '', '2021-11-10 01:13:31', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1128, '????????????????????????', 'pay:app:create', 3, 2, 1126, '', '', '', 0, 't', 't', '', '2021-11-10 01:13:31', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1129, '????????????????????????', 'pay:app:update', 3, 3, 1126, '', '', '', 0, 't', 't', '', '2021-11-10 01:13:31', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1130, '????????????????????????', 'pay:app:delete', 3, 4, 1126, '', '', '', 0, 't', 't', '', '2021-11-10 01:13:31', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1131, '????????????????????????', 'pay:app:export', 3, 5, 1126, '', '', '', 0, 't', 't', '', '2021-11-10 01:13:31', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1132, '????????????', 'pay:channel:parsing', 3, 6, 1129, '', '', '', 0, 't', 't', '1', '2021-11-08 15:15:47', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1133, '????????????????????????', 'pay:merchant:query', 3, 1, 1132, '', '', '', 0, 't', 't', '', '2021-11-10 01:13:41', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1134, '????????????????????????', 'pay:merchant:create', 3, 2, 1132, '', '', '', 0, 't', 't', '', '2021-11-10 01:13:41', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1135, '????????????????????????', 'pay:merchant:update', 3, 3, 1132, '', '', '', 0, 't', 't', '', '2021-11-10 01:13:41', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1136, '????????????????????????', 'pay:merchant:delete', 3, 4, 1132, '', '', '', 0, 't', 't', '', '2021-11-10 01:13:41', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1137, '????????????????????????', 'pay:merchant:export', 3, 5, 1132, '', '', '', 0, 't', 't', '', '2021-11-10 01:13:41', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1138, '????????????', '', 2, 0, 1224, 'list', 'peoples', 'system/tenant/index', 0, 't', 't', '', '2021-12-14 12:31:43', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1139, '????????????', 'system:tenant:query', 3, 1, 1138, '', '', '', 0, 't', 't', '', '2021-12-14 12:31:44', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1140, '????????????', 'system:tenant:create', 3, 2, 1138, '', '', '', 0, 't', 't', '', '2021-12-14 12:31:44', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1141, '????????????', 'system:tenant:update', 3, 3, 1138, '', '', '', 0, 't', 't', '', '2021-12-14 12:31:44', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1142, '????????????', 'system:tenant:delete', 3, 4, 1138, '', '', '', 0, 't', 't', '', '2021-12-14 12:31:44', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1143, '????????????', 'system:tenant:export', 3, 5, 1138, '', '', '', 0, 't', 't', '', '2021-12-14 12:31:44', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1150, '????????????', '', 3, 6, 1129, '', '', '', 0, 't', 't', '1', '2021-11-08 15:15:47', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1161, '????????????', '', 2, 3, 1117, 'refund', 'order', 'pay/refund/index', 0, 't', 't', '', '2021-12-25 08:29:07', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1162, '??????????????????', 'pay:refund:query', 3, 1, 1161, '', '', '', 0, 't', 't', '', '2021-12-25 08:29:07', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1163, '??????????????????', 'pay:refund:create', 3, 2, 1161, '', '', '', 0, 't', 't', '', '2021-12-25 08:29:07', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1164, '??????????????????', 'pay:refund:update', 3, 3, 1161, '', '', '', 0, 't', 't', '', '2021-12-25 08:29:07', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1165, '??????????????????', 'pay:refund:delete', 3, 4, 1161, '', '', '', 0, 't', 't', '', '2021-12-25 08:29:07', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1166, '??????????????????', 'pay:refund:export', 3, 5, 1161, '', '', '', 0, 't', 't', '', '2021-12-25 08:29:07', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1173, '????????????', '', 2, 2, 1117, 'order', 'pay', 'pay/order/index', 0, 't', 't', '', '2021-12-25 08:49:43', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1174, '??????????????????', 'pay:order:query', 3, 1, 1173, '', '', '', 0, 't', 't', '', '2021-12-25 08:49:43', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1175, '??????????????????', 'pay:order:create', 3, 2, 1173, '', '', '', 0, 't', 't', '', '2021-12-25 08:49:43', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1176, '??????????????????', 'pay:order:update', 3, 3, 1173, '', '', '', 0, 't', 't', '', '2021-12-25 08:49:43', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1177, '??????????????????', 'pay:order:delete', 3, 4, 1173, '', '', '', 0, 't', 't', '', '2021-12-25 08:49:43', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1178, '??????????????????', 'pay:order:export', 3, 5, 1173, '', '', '', 0, 't', 't', '', '2021-12-25 08:49:43', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1179, '????????????', '', 2, 0, 1117, 'merchant', 'merchant', 'pay/merchant/index', 0, 't', 't', '', '2021-12-25 09:01:44', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1180, '????????????????????????', 'pay:merchant:query', 3, 1, 1179, '', '', '', 0, 't', 't', '', '2021-12-25 09:01:44', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1181, '????????????????????????', 'pay:merchant:create', 3, 2, 1179, '', '', '', 0, 't', 't', '', '2021-12-25 09:01:44', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1182, '????????????????????????', 'pay:merchant:update', 3, 3, 1179, '', '', '', 0, 't', 't', '', '2021-12-25 09:01:44', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1183, '????????????????????????', '', 3, 4, 1179, '', '', '', 0, 't', 't', '', '2021-12-25 09:01:44', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1184, '????????????????????????', 'pay:merchant:export', 3, 5, 1179, '', '', '', 0, 't', 't', '', '2021-12-25 09:01:44', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1185, '????????????', '', 1, 50, 0, '/bpm', 'tool', NULL, 0, 't', 't', '1', '2021-12-30 20:26:36', '103', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1186, '????????????', '', 1, 10, 1185, 'manager', 'nested', NULL, 0, 't', 't', '1', '2021-12-30 20:28:30', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1187, '????????????', '', 2, 0, 1186, 'form', 'form', 'bpm/form/index', 0, 't', 't', '', '2021-12-30 12:38:22', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1188, '????????????', 'bpm:form:query', 3, 1, 1187, '', '', '', 0, 't', 't', '', '2021-12-30 12:38:22', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1189, '????????????', 'bpm:form:create', 3, 2, 1187, '', '', '', 0, 't', 't', '', '2021-12-30 12:38:22', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1190, '????????????', 'bpm:form:update', 3, 3, 1187, '', '', '', 0, 't', 't', '', '2021-12-30 12:38:22', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1191, '????????????', 'bpm:form:delete', 3, 4, 1187, '', '', '', 0, 't', 't', '', '2021-12-30 12:38:22', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1192, '????????????', 'bpm:form:export', 3, 5, 1187, '', '', '', 0, 't', 't', '', '2021-12-30 12:38:22', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1193, '????????????', '', 2, 5, 1186, 'model', 'guide', 'bpm/model/index', 0, 't', 't', '1', '2021-12-31 23:24:58', '103', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1194, '????????????', 'bpm:model:query', 3, 1, 1193, '', '', '', 0, 't', 't', '1', '2022-01-03 19:01:10', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1195, '????????????', 'bpm:model:create', 3, 2, 1193, '', '', '', 0, 't', 't', '1', '2022-01-03 19:01:24', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1196, '????????????', 'bpm:model:import', 3, 3, 1193, '', '', '', 0, 't', 't', '1', '2022-01-03 19:01:35', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1197, '????????????', 'bpm:model:update', 3, 4, 1193, '', '', '', 0, 't', 't', '1', '2022-01-03 19:02:28', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1198, '????????????', 'bpm:model:delete', 3, 5, 1193, '', '', '', 0, 't', 't', '1', '2022-01-03 19:02:43', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1199, '????????????', 'bpm:model:deploy', 3, 6, 1193, '', '', '', 0, 't', 't', '1', '2022-01-03 19:03:24', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1200, '????????????', '', 1, 20, 1185, 'task', 'cascader', NULL, 0, 't', 't', '1', '2022-01-07 23:51:48', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1201, '????????????', '', 2, 0, 1200, 'my', 'people', 'bpm/processInstance/index', 0, 't', 't', '', '2022-01-07 15:53:44', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1202, '?????????????????????', 'bpm:process-instance:query', 3, 1, 1201, '', '', '', 0, 't', 't', '', '2022-01-07 15:53:44', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1207, '????????????', '', 2, 10, 1200, 'todo', 'eye-open', 'bpm/task/todo', 0, 't', 't', '1', '2022-01-08 10:33:37', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1208, '????????????', '', 2, 20, 1200, 'done', 'eye', 'bpm/task/done', 0, 't', 't', '1', '2022-01-08 10:34:13', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1209, '????????????', '', 2, 2, 1186, 'user-group', 'people', 'bpm/group/index', 0, 't', 't', '', '2022-01-14 02:14:20', '103', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1210, '???????????????', 'bpm:user-group:query', 3, 1, 1209, '', '', '', 0, 't', 't', '', '2022-01-14 02:14:20', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1211, '???????????????', 'bpm:user-group:create', 3, 2, 1209, '', '', '', 0, 't', 't', '', '2022-01-14 02:14:20', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1212, '???????????????', 'bpm:user-group:update', 3, 3, 1209, '', '', '', 0, 't', 't', '', '2022-01-14 02:14:20', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1213, '???????????????', 'bpm:user-group:delete', 3, 4, 1209, '', '', '', 0, 't', 't', '', '2022-01-14 02:14:20', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1215, '??????????????????', 'bpm:process-definition:query', 3, 10, 1193, '', '', '', 0, 't', 't', '1', '2022-01-23 00:21:43', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1216, '??????????????????????????????', 'bpm:task-assign-rule:query', 3, 20, 1193, '', '', '', 0, 't', 't', '1', '2022-01-23 00:26:53', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1217, '??????????????????????????????', 'bpm:task-assign-rule:create', 3, 21, 1193, '', '', '', 0, 't', 't', '1', '2022-01-23 00:28:15', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1218, '??????????????????????????????', 'bpm:task-assign-rule:update', 3, 22, 1193, '', '', '', 0, 't', 't', '1', '2022-01-23 00:28:41', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1219, '?????????????????????', 'bpm:process-instance:create', 3, 2, 1201, '', '', '', 0, 't', 't', '1', '2022-01-23 00:36:15', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1220, '?????????????????????', 'bpm:process-instance:cancel', 3, 3, 1201, '', '', '', 0, 't', 't', '1', '2022-01-23 00:36:33', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1221, '?????????????????????', 'bpm:task:query', 3, 1, 1207, '', '', '', 0, 't', 't', '1', '2022-01-23 00:38:52', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1222, '?????????????????????', 'bpm:task:update', 3, 2, 1207, '', '', '', 0, 't', 't', '1', '2022-01-23 00:39:24', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1224, '????????????', '', 2, 0, 1, 'tenant', 'peoples', NULL, 0, 't', 't', '1', '2022-02-20 01:41:13', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1225, '????????????', '', 2, 0, 1224, 'package', 'eye', 'system/tenantPackage/index', 0, 't', 't', '', '2022-02-19 17:44:06', '1', '2022-04-21 01:21:25', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1226, '??????????????????', 'system:tenant-package:query', 3, 1, 1225, '', '', '', 0, 't', 't', '', '2022-02-19 17:44:06', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1227, '??????????????????', 'system:tenant-package:create', 3, 2, 1225, '', '', '', 0, 't', 't', '', '2022-02-19 17:44:06', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1228, '??????????????????', 'system:tenant-package:update', 3, 3, 1225, '', '', '', 0, 't', 't', '', '2022-02-19 17:44:06', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1229, '??????????????????', 'system:tenant-package:delete', 3, 4, 1225, '', '', '', 0, 't', 't', '', '2022-02-19 17:44:06', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1237, '????????????', '', 2, 0, 1243, 'file-config', 'config', 'infra/fileConfig/index', 0, 't', 't', '', '2022-03-15 14:35:28', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1238, '??????????????????', 'infra:file-config:query', 3, 1, 1237, '', '', '', 0, 't', 't', '', '2022-03-15 14:35:28', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1239, '??????????????????', 'infra:file-config:create', 3, 2, 1237, '', '', '', 0, 't', 't', '', '2022-03-15 14:35:28', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1240, '??????????????????', 'infra:file-config:update', 3, 3, 1237, '', '', '', 0, 't', 't', '', '2022-03-15 14:35:28', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1241, '??????????????????', 'infra:file-config:delete', 3, 4, 1237, '', '', '', 0, 't', 't', '', '2022-03-15 14:35:28', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1242, '??????????????????', 'infra:file-config:export', 3, 5, 1237, '', '', '', 0, 't', 't', '', '2022-03-15 14:35:28', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1243, '????????????', '', 2, 5, 2, 'file', 'download', NULL, 0, 't', 't', '1', '2022-03-16 23:47:40', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1247, '???????????????', '', 2, 13, 1, 'sensitive-word', 'education', 'system/sensitiveWord/index', 0, 't', 't', '', '2022-04-07 16:55:03', '1', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1248, '???????????????', 'system:sensitive-word:query', 3, 1, 1247, '', '', '', 0, 't', 't', '', '2022-04-07 16:55:03', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1249, '???????????????', 'system:sensitive-word:create', 3, 2, 1247, '', '', '', 0, 't', 't', '', '2022-04-07 16:55:03', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1250, '???????????????', 'system:sensitive-word:update', 3, 3, 1247, '', '', '', 0, 't', 't', '', '2022-04-07 16:55:03', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1251, '???????????????', 'system:sensitive-word:delete', 3, 4, 1247, '', '', '', 0, 't', 't', '', '2022-04-07 16:55:03', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1252, '???????????????', 'system:sensitive-word:export', 3, 5, 1247, '', '', '', 0, 't', 't', '', '2022-04-07 16:55:03', '', '2022-04-20 17:03:10', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1254, '????????????', '', 1, 0, 0, 'https://www.iocoder.cn', 'people', NULL, 0, 't', 't', '1', '2022-04-23 01:03:15', '1', '2022-04-23 01:03:15', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1255, '???????????????', '', 2, 1, 2, 'data-source-config', 'rate', 'infra/dataSourceConfig/index', 0, 't', 't', '', '2022-04-27 14:37:32', '1', '2022-04-27 22:42:06', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1256, '?????????????????????', 'infra:data-source-config:query', 3, 1, 1255, '', '', '', 0, 't', 't', '', '2022-04-27 14:37:32', '', '2022-04-27 14:37:32', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1257, '?????????????????????', 'infra:data-source-config:create', 3, 2, 1255, '', '', '', 0, 't', 't', '', '2022-04-27 14:37:32', '', '2022-04-27 14:37:32', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1258, '?????????????????????', 'infra:data-source-config:update', 3, 3, 1255, '', '', '', 0, 't', 't', '', '2022-04-27 14:37:32', '', '2022-04-27 14:37:32', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1259, '?????????????????????', 'infra:data-source-config:delete', 3, 4, 1255, '', '', '', 0, 't', 't', '', '2022-04-27 14:37:32', '', '2022-04-27 14:37:32', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1260, '?????????????????????', 'infra:data-source-config:export', 3, 5, 1255, '', '', '', 0, 't', 't', '', '2022-04-27 14:37:32', '', '2022-04-27 14:37:32', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1261, 'OAuth 2.0', '', 1, 10, 1, 'oauth2', 'people', NULL, 0, 't', 't', '1', '2022-05-09 23:38:17', '1', '2022-05-11 23:51:46', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1263, '????????????', '', 2, 0, 1261, 'oauth2/application', 'tool', 'system/oauth2/client/index', 0, 't', 't', '', '2022-05-10 16:26:33', '1', '2022-05-11 23:31:36', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1264, '???????????????', 'system:oauth2-client:query', 3, 1, 1263, '', '', '', 0, 't', 't', '', '2022-05-10 16:26:33', '1', '2022-05-11 00:31:06', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1265, '???????????????', 'system:oauth2-client:create', 3, 2, 1263, '', '', '', 0, 't', 't', '', '2022-05-10 16:26:33', '1', '2022-05-11 00:31:23', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1266, '???????????????', 'system:oauth2-client:update', 3, 3, 1263, '', '', '', 0, 't', 't', '', '2022-05-10 16:26:33', '1', '2022-05-11 00:31:28', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1267, '???????????????', 'system:oauth2-client:delete', 3, 4, 1263, '', '', '', 0, 't', 't', '', '2022-05-10 16:26:33', '1', '2022-05-11 00:31:33', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1117, '????????????', '', 1, 11, 0, '/pay', 'money', NULL, 0, 't', 't', '1', '2021-12-25 16:43:41', '1', '2022-05-13 01:02:25.244', 0);
INSERT INTO "system_menu" ("id", "name", "permission", "type", "sort", "parent_id", "path", "icon", "component", "status", "visible", "keep_alive", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1, '????????????', '', 1, 10, 0, '/system', 'system', NULL, 0, 't', 't', 'admin', '2021-01-05 17:03:48', '1', '2022-05-13 01:02:57.073', 0);
COMMIT;

-- ----------------------------
-- Table structure for system_notice
-- ----------------------------
DROP TABLE IF EXISTS "system_notice";
CREATE TABLE "system_notice" (
  "id" int8 NOT NULL,
  "title" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "content" text COLLATE "pg_catalog"."default" NOT NULL,
  "type" int2 NOT NULL,
  "status" int2 NOT NULL,
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "system_notice"."id" IS '??????ID';
COMMENT ON COLUMN "system_notice"."title" IS '????????????';
COMMENT ON COLUMN "system_notice"."content" IS '????????????';
COMMENT ON COLUMN "system_notice"."type" IS '???????????????1?????? 2?????????';
COMMENT ON COLUMN "system_notice"."status" IS '???????????????0?????? 1?????????';
COMMENT ON COLUMN "system_notice"."creator" IS '?????????';
COMMENT ON COLUMN "system_notice"."create_time" IS '????????????';
COMMENT ON COLUMN "system_notice"."updater" IS '?????????';
COMMENT ON COLUMN "system_notice"."update_time" IS '????????????';
COMMENT ON COLUMN "system_notice"."deleted" IS '????????????';
COMMENT ON COLUMN "system_notice"."tenant_id" IS '????????????';
COMMENT ON TABLE "system_notice" IS '???????????????';

-- ----------------------------
-- Records of system_notice
-- ----------------------------
BEGIN;
INSERT INTO "system_notice" ("id", "title", "content", "type", "status", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1, '???????????????', '<p>???????????????133</p>', 1, 0, 'admin', '2021-01-05 17:03:48', '1', '2022-05-04 21:00:20', 0, 1);
INSERT INTO "system_notice" ("id", "title", "content", "type", "status", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (2, '???????????????2018-07-01 ????????????????????????', '<p><img src="http://test.gaia.iocoder.cn/b7cb3cf49b4b3258bf7309a09dd2f4e5.jpg">????????????</p>', 2, 1, 'admin', '2021-01-05 17:03:48', '1', '2022-05-11 12:34:24', 0, 1);
INSERT INTO "system_notice" ("id", "title", "content", "type", "status", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (4, '??????????????????', '<p>????????????123</p>', 1, 0, '110', '2022-02-22 01:01:25', '110', '2022-02-22 01:01:46', 0, 121);
COMMIT;

-- ----------------------------
-- Table structure for system_oauth2_access_token
-- ----------------------------
DROP TABLE IF EXISTS "system_oauth2_access_token";
CREATE TABLE "system_oauth2_access_token" (
  "id" int8 NOT NULL,
  "user_id" int8 NOT NULL,
  "access_token" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "refresh_token" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "user_type" int2 NOT NULL,
  "client_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "expires_time" timestamp(6) NOT NULL,
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0,
  "scopes" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;
COMMENT ON COLUMN "system_oauth2_access_token"."id" IS '??????';
COMMENT ON COLUMN "system_oauth2_access_token"."user_id" IS '????????????';
COMMENT ON COLUMN "system_oauth2_access_token"."access_token" IS '????????????';
COMMENT ON COLUMN "system_oauth2_access_token"."refresh_token" IS '????????????';
COMMENT ON COLUMN "system_oauth2_access_token"."user_type" IS '????????????';
COMMENT ON COLUMN "system_oauth2_access_token"."client_id" IS '???????????????';
COMMENT ON COLUMN "system_oauth2_access_token"."expires_time" IS '????????????';
COMMENT ON COLUMN "system_oauth2_access_token"."creator" IS '?????????';
COMMENT ON COLUMN "system_oauth2_access_token"."create_time" IS '????????????';
COMMENT ON COLUMN "system_oauth2_access_token"."updater" IS '?????????';
COMMENT ON COLUMN "system_oauth2_access_token"."update_time" IS '????????????';
COMMENT ON COLUMN "system_oauth2_access_token"."deleted" IS '????????????';
COMMENT ON COLUMN "system_oauth2_access_token"."tenant_id" IS '????????????';
COMMENT ON COLUMN "system_oauth2_access_token"."scopes" IS '????????????';
COMMENT ON TABLE "system_oauth2_access_token" IS '????????????';

-- ----------------------------
-- Records of system_oauth2_access_token
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for system_oauth2_approve
-- ----------------------------
DROP TABLE IF EXISTS "system_oauth2_approve";
CREATE TABLE "system_oauth2_approve" (
  "id" int8 NOT NULL,
  "user_id" int8 NOT NULL,
  "user_type" int2 NOT NULL,
  "client_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "scope" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "approved" bool NOT NULL,
  "expires_time" timestamp(6) NOT NULL,
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "system_oauth2_approve"."id" IS '??????';
COMMENT ON COLUMN "system_oauth2_approve"."user_id" IS '????????????';
COMMENT ON COLUMN "system_oauth2_approve"."user_type" IS '????????????';
COMMENT ON COLUMN "system_oauth2_approve"."client_id" IS '???????????????';
COMMENT ON COLUMN "system_oauth2_approve"."scope" IS '????????????';
COMMENT ON COLUMN "system_oauth2_approve"."approved" IS '????????????';
COMMENT ON COLUMN "system_oauth2_approve"."expires_time" IS '????????????';
COMMENT ON COLUMN "system_oauth2_approve"."creator" IS '?????????';
COMMENT ON COLUMN "system_oauth2_approve"."create_time" IS '????????????';
COMMENT ON COLUMN "system_oauth2_approve"."updater" IS '?????????';
COMMENT ON COLUMN "system_oauth2_approve"."update_time" IS '????????????';
COMMENT ON COLUMN "system_oauth2_approve"."deleted" IS '????????????';
COMMENT ON COLUMN "system_oauth2_approve"."tenant_id" IS '????????????';
COMMENT ON TABLE "system_oauth2_approve" IS 'OAuth2 ?????????';

-- ----------------------------
-- Records of system_oauth2_approve
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for system_oauth2_client
-- ----------------------------
DROP TABLE IF EXISTS "system_oauth2_client";
CREATE TABLE "system_oauth2_client" (
  "id" int8 NOT NULL,
  "client_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "secret" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "logo" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "status" int2 NOT NULL,
  "access_token_validity_seconds" int4 NOT NULL,
  "refresh_token_validity_seconds" int4 NOT NULL,
  "redirect_uris" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "authorized_grant_types" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "scopes" varchar(255) COLLATE "pg_catalog"."default",
  "authorities" varchar(255) COLLATE "pg_catalog"."default",
  "resource_ids" varchar(255) COLLATE "pg_catalog"."default",
  "additional_information" varchar(4096) COLLATE "pg_catalog"."default",
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0,
  "auto_approve_scopes" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "system_oauth2_client"."id" IS '??????';
COMMENT ON COLUMN "system_oauth2_client"."client_id" IS '???????????????';
COMMENT ON COLUMN "system_oauth2_client"."secret" IS '???????????????';
COMMENT ON COLUMN "system_oauth2_client"."name" IS '?????????';
COMMENT ON COLUMN "system_oauth2_client"."logo" IS '????????????';
COMMENT ON COLUMN "system_oauth2_client"."description" IS '????????????';
COMMENT ON COLUMN "system_oauth2_client"."status" IS '??????';
COMMENT ON COLUMN "system_oauth2_client"."access_token_validity_seconds" IS '????????????????????????';
COMMENT ON COLUMN "system_oauth2_client"."refresh_token_validity_seconds" IS '????????????????????????';
COMMENT ON COLUMN "system_oauth2_client"."redirect_uris" IS '??????????????? URI ??????';
COMMENT ON COLUMN "system_oauth2_client"."authorized_grant_types" IS '????????????';
COMMENT ON COLUMN "system_oauth2_client"."scopes" IS '????????????';
COMMENT ON COLUMN "system_oauth2_client"."authorities" IS '??????';
COMMENT ON COLUMN "system_oauth2_client"."resource_ids" IS '??????';
COMMENT ON COLUMN "system_oauth2_client"."additional_information" IS '????????????';
COMMENT ON COLUMN "system_oauth2_client"."creator" IS '?????????';
COMMENT ON COLUMN "system_oauth2_client"."create_time" IS '????????????';
COMMENT ON COLUMN "system_oauth2_client"."updater" IS '?????????';
COMMENT ON COLUMN "system_oauth2_client"."update_time" IS '????????????';
COMMENT ON COLUMN "system_oauth2_client"."deleted" IS '????????????';
COMMENT ON COLUMN "system_oauth2_client"."auto_approve_scopes" IS '???????????????????????????';
COMMENT ON TABLE "system_oauth2_client" IS 'OAuth2 ????????????';

-- ----------------------------
-- Records of system_oauth2_client
-- ----------------------------
BEGIN;
INSERT INTO "system_oauth2_client" ("id", "client_id", "secret", "name", "logo", "description", "status", "access_token_validity_seconds", "refresh_token_validity_seconds", "redirect_uris", "authorized_grant_types", "scopes", "authorities", "resource_ids", "additional_information", "creator", "create_time", "updater", "update_time", "deleted", "auto_approve_scopes") VALUES (1, 'default', 'admin123', '????????????', 'http://test.gaia.iocoder.cn/a5e2e244368878a366b516805a4aabf1.png', '????????????', 0, 180, 8640, '["https://www.iocoder.cn","https://doc.iocoder.cn"]', '["password","authorization_code","implicit","refresh_token"]', '["user.read","user.write"]', '["system:user:query"]', '[]', '{}', '1', '2022-05-11 21:47:12', '1', '2022-05-12 01:00:20', 0, NULL);
INSERT INTO "system_oauth2_client" ("id", "client_id", "secret", "name", "logo", "description", "status", "access_token_validity_seconds", "refresh_token_validity_seconds", "redirect_uris", "authorized_grant_types", "scopes", "authorities", "resource_ids", "additional_information", "creator", "create_time", "updater", "update_time", "deleted", "auto_approve_scopes") VALUES (40, 'test', 'test2', 'biubiu', 'http://test.gaia.iocoder.cn/277a899d573723f1fcdfb57340f00379.png', NULL, 0, 1800, 43200, '["https://www.iocoder.cn"]', '["password","authorization_code","implicit"]', '[]', '[]', '[]', '{}', '1', '2022-05-12 00:28:20', '1', '2022-05-25 23:45:33.005', 0, '[]');
COMMIT;

-- ----------------------------
-- Table structure for system_oauth2_code
-- ----------------------------
DROP TABLE IF EXISTS "system_oauth2_code";
CREATE TABLE "system_oauth2_code" (
  "id" int8 NOT NULL,
  "user_id" int8 NOT NULL,
  "user_type" int2 NOT NULL,
  "code" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "client_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "scopes" varchar(255) COLLATE "pg_catalog"."default",
  "expires_time" timestamp(6) NOT NULL,
  "redirect_uri" varchar(255) COLLATE "pg_catalog"."default",
  "state" varchar(255) COLLATE "pg_catalog"."default",
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "system_oauth2_code"."id" IS '??????';
COMMENT ON COLUMN "system_oauth2_code"."user_id" IS '????????????';
COMMENT ON COLUMN "system_oauth2_code"."user_type" IS '????????????';
COMMENT ON COLUMN "system_oauth2_code"."code" IS '?????????';
COMMENT ON COLUMN "system_oauth2_code"."client_id" IS '???????????????';
COMMENT ON COLUMN "system_oauth2_code"."scopes" IS '????????????';
COMMENT ON COLUMN "system_oauth2_code"."expires_time" IS '????????????';
COMMENT ON COLUMN "system_oauth2_code"."redirect_uri" IS '??????????????? URI ??????';
COMMENT ON COLUMN "system_oauth2_code"."state" IS '??????';
COMMENT ON COLUMN "system_oauth2_code"."creator" IS '?????????';
COMMENT ON COLUMN "system_oauth2_code"."create_time" IS '????????????';
COMMENT ON COLUMN "system_oauth2_code"."updater" IS '?????????';
COMMENT ON COLUMN "system_oauth2_code"."update_time" IS '????????????';
COMMENT ON COLUMN "system_oauth2_code"."deleted" IS '????????????';
COMMENT ON COLUMN "system_oauth2_code"."tenant_id" IS '????????????';
COMMENT ON TABLE "system_oauth2_code" IS 'OAuth2 ????????????';

-- ----------------------------
-- Records of system_oauth2_code
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for system_oauth2_refresh_token
-- ----------------------------
DROP TABLE IF EXISTS "system_oauth2_refresh_token";
CREATE TABLE "system_oauth2_refresh_token" (
  "id" int8 NOT NULL,
  "user_id" int8 NOT NULL,
  "refresh_token" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "user_type" int2 NOT NULL,
  "client_id" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "expires_time" timestamp(6) NOT NULL,
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0,
  "scopes" varchar(255) COLLATE "pg_catalog"."default" DEFAULT ''::character varying
)
;
COMMENT ON COLUMN "system_oauth2_refresh_token"."id" IS '??????';
COMMENT ON COLUMN "system_oauth2_refresh_token"."user_id" IS '????????????';
COMMENT ON COLUMN "system_oauth2_refresh_token"."refresh_token" IS '????????????';
COMMENT ON COLUMN "system_oauth2_refresh_token"."user_type" IS '????????????';
COMMENT ON COLUMN "system_oauth2_refresh_token"."client_id" IS '???????????????';
COMMENT ON COLUMN "system_oauth2_refresh_token"."expires_time" IS '????????????';
COMMENT ON COLUMN "system_oauth2_refresh_token"."creator" IS '?????????';
COMMENT ON COLUMN "system_oauth2_refresh_token"."create_time" IS '????????????';
COMMENT ON COLUMN "system_oauth2_refresh_token"."updater" IS '?????????';
COMMENT ON COLUMN "system_oauth2_refresh_token"."update_time" IS '????????????';
COMMENT ON COLUMN "system_oauth2_refresh_token"."deleted" IS '????????????';
COMMENT ON COLUMN "system_oauth2_refresh_token"."tenant_id" IS '????????????';
COMMENT ON COLUMN "system_oauth2_refresh_token"."scopes" IS '????????????';
COMMENT ON TABLE "system_oauth2_refresh_token" IS '????????????';

-- ----------------------------
-- Records of system_oauth2_refresh_token
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for system_operate_log
-- ----------------------------
DROP TABLE IF EXISTS "system_operate_log";
CREATE TABLE "system_operate_log" (
  "id" int8 NOT NULL,
  "trace_id" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "user_id" int8 NOT NULL,
  "user_type" int2 NOT NULL,
  "module" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "type" int8 NOT NULL,
  "content" varchar(2000) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "exts" varchar(512) COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::character varying,
  "request_method" varchar(16) COLLATE "pg_catalog"."default",
  "request_url" varchar(255) COLLATE "pg_catalog"."default",
  "user_ip" varchar(50) COLLATE "pg_catalog"."default",
  "user_agent" varchar(200) COLLATE "pg_catalog"."default",
  "java_method" varchar(512) COLLATE "pg_catalog"."default" NOT NULL,
  "java_method_args" varchar(8000) COLLATE "pg_catalog"."default",
  "start_time" timestamp(6) NOT NULL,
  "duration" int4 NOT NULL,
  "result_code" int4 NOT NULL,
  "result_msg" varchar(512) COLLATE "pg_catalog"."default",
  "result_data" varchar(4000) COLLATE "pg_catalog"."default",
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "system_operate_log"."id" IS '????????????';
COMMENT ON COLUMN "system_operate_log"."trace_id" IS '??????????????????';
COMMENT ON COLUMN "system_operate_log"."user_id" IS '????????????';
COMMENT ON COLUMN "system_operate_log"."user_type" IS '????????????';
COMMENT ON COLUMN "system_operate_log"."module" IS '????????????';
COMMENT ON COLUMN "system_operate_log"."name" IS '?????????';
COMMENT ON COLUMN "system_operate_log"."type" IS '????????????';
COMMENT ON COLUMN "system_operate_log"."content" IS '????????????';
COMMENT ON COLUMN "system_operate_log"."exts" IS '????????????';
COMMENT ON COLUMN "system_operate_log"."request_method" IS '???????????????';
COMMENT ON COLUMN "system_operate_log"."request_url" IS '????????????';
COMMENT ON COLUMN "system_operate_log"."user_ip" IS '?????? IP';
COMMENT ON COLUMN "system_operate_log"."user_agent" IS '????????? UA';
COMMENT ON COLUMN "system_operate_log"."java_method" IS 'Java ?????????';
COMMENT ON COLUMN "system_operate_log"."java_method_args" IS 'Java ???????????????';
COMMENT ON COLUMN "system_operate_log"."start_time" IS '????????????';
COMMENT ON COLUMN "system_operate_log"."duration" IS '????????????';
COMMENT ON COLUMN "system_operate_log"."result_code" IS '?????????';
COMMENT ON COLUMN "system_operate_log"."result_msg" IS '????????????';
COMMENT ON COLUMN "system_operate_log"."result_data" IS '????????????';
COMMENT ON COLUMN "system_operate_log"."creator" IS '?????????';
COMMENT ON COLUMN "system_operate_log"."create_time" IS '????????????';
COMMENT ON COLUMN "system_operate_log"."updater" IS '?????????';
COMMENT ON COLUMN "system_operate_log"."update_time" IS '????????????';
COMMENT ON COLUMN "system_operate_log"."deleted" IS '????????????';
COMMENT ON COLUMN "system_operate_log"."tenant_id" IS '????????????';
COMMENT ON TABLE "system_operate_log" IS '??????????????????';

-- ----------------------------
-- Records of system_operate_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for system_post
-- ----------------------------
DROP TABLE IF EXISTS "system_post";
CREATE TABLE "system_post" (
  "id" int8 NOT NULL DEFAULT 0,
  "code" varchar(64) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "sort" int4 NOT NULL,
  "status" int2 NOT NULL,
  "remark" varchar(500) COLLATE "pg_catalog"."default",
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "system_post"."id" IS '??????ID';
COMMENT ON COLUMN "system_post"."code" IS '????????????';
COMMENT ON COLUMN "system_post"."name" IS '????????????';
COMMENT ON COLUMN "system_post"."sort" IS '????????????';
COMMENT ON COLUMN "system_post"."status" IS '?????????0?????? 1?????????';
COMMENT ON COLUMN "system_post"."remark" IS '??????';
COMMENT ON COLUMN "system_post"."creator" IS '?????????';
COMMENT ON COLUMN "system_post"."create_time" IS '????????????';
COMMENT ON COLUMN "system_post"."updater" IS '?????????';
COMMENT ON COLUMN "system_post"."update_time" IS '????????????';
COMMENT ON COLUMN "system_post"."deleted" IS '????????????';
COMMENT ON COLUMN "system_post"."tenant_id" IS '????????????';
COMMENT ON TABLE "system_post" IS '???????????????';

-- ----------------------------
-- Records of system_post
-- ----------------------------
BEGIN;
INSERT INTO "system_post" ("id", "code", "name", "sort", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1, 'ceo', '?????????', 1, 0, '', 'admin', '2021-01-06 17:03:48', '1', '2022-04-19 16:53:39', 0, 1);
INSERT INTO "system_post" ("id", "code", "name", "sort", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (2, 'se', '????????????', 2, 0, '', 'admin', '2021-01-05 17:03:48', '1', '2021-12-12 10:47:47', 0, 1);
INSERT INTO "system_post" ("id", "code", "name", "sort", "status", "remark", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (4, 'user', '????????????', 4, 0, '111', 'admin', '2021-01-05 17:03:48', '1', '2022-05-04 22:46:35', 0, 1);
COMMIT;

-- ----------------------------
-- Table structure for system_role
-- ----------------------------
DROP TABLE IF EXISTS "system_role";
CREATE TABLE "system_role" (
  "id" int8 NOT NULL,
  "name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "sort" int4 NOT NULL,
  "data_scope" int2 NOT NULL,
  "data_scope_dept_ids" varchar(500) COLLATE "pg_catalog"."default" NOT NULL,
  "status" int2 NOT NULL,
  "type" int2 NOT NULL,
  "remark" varchar(500) COLLATE "pg_catalog"."default",
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "system_role"."id" IS '??????ID';
COMMENT ON COLUMN "system_role"."name" IS '????????????';
COMMENT ON COLUMN "system_role"."code" IS '?????????????????????';
COMMENT ON COLUMN "system_role"."sort" IS '????????????';
COMMENT ON COLUMN "system_role"."data_scope" IS '???????????????1????????????????????? 2????????????????????? 3???????????????????????? 4????????????????????????????????????';
COMMENT ON COLUMN "system_role"."data_scope_dept_ids" IS '????????????(??????????????????)';
COMMENT ON COLUMN "system_role"."status" IS '???????????????0?????? 1?????????';
COMMENT ON COLUMN "system_role"."type" IS '????????????';
COMMENT ON COLUMN "system_role"."remark" IS '??????';
COMMENT ON COLUMN "system_role"."creator" IS '?????????';
COMMENT ON COLUMN "system_role"."create_time" IS '????????????';
COMMENT ON COLUMN "system_role"."updater" IS '?????????';
COMMENT ON COLUMN "system_role"."update_time" IS '????????????';
COMMENT ON COLUMN "system_role"."deleted" IS '????????????';
COMMENT ON COLUMN "system_role"."tenant_id" IS '????????????';
COMMENT ON TABLE "system_role" IS '???????????????';

-- ----------------------------
-- Records of system_role
-- ----------------------------
BEGIN;
INSERT INTO "system_role" ("id", "name", "code", "sort", "data_scope", "data_scope_dept_ids", "status", "type", "remark", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1, '???????????????', 'super_admin', 1, 1, '', 0, 1, '???????????????', 'admin', '2021-01-05 17:03:48', '', '2022-02-22 05:08:21', 0, 1);
INSERT INTO "system_role" ("id", "name", "code", "sort", "data_scope", "data_scope_dept_ids", "status", "type", "remark", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (2, '????????????', 'common', 2, 2, '', 0, 1, '????????????', 'admin', '2021-01-05 17:03:48', '', '2022-02-22 05:08:20', 0, 1);
INSERT INTO "system_role" ("id", "name", "code", "sort", "data_scope", "data_scope_dept_ids", "status", "type", "remark", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (101, '????????????', 'test', 0, 1, '[]', 0, 2, '132', '', '2021-01-06 13:49:35', '1', '2022-04-01 21:37:13', 0, 1);
INSERT INTO "system_role" ("id", "name", "code", "sort", "data_scope", "data_scope_dept_ids", "status", "type", "remark", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (109, '???????????????', 'tenant_admin', 0, 1, '', 0, 1, '??????????????????', '1', '2022-02-22 00:56:14', '1', '2022-02-22 00:56:14', 0, 121);
INSERT INTO "system_role" ("id", "name", "code", "sort", "data_scope", "data_scope_dept_ids", "status", "type", "remark", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (110, '????????????', 'test', 0, 1, '[]', 0, 2, '??????', '110', '2022-02-23 00:14:34', '110', '2022-02-23 13:14:58', 0, 121);
INSERT INTO "system_role" ("id", "name", "code", "sort", "data_scope", "data_scope_dept_ids", "status", "type", "remark", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (111, '???????????????', 'tenant_admin', 0, 1, '', 0, 1, '??????????????????', '1', '2022-03-07 21:37:58', '1', '2022-03-07 21:37:58', 0, 122);
COMMIT;

-- ----------------------------
-- Table structure for system_role_menu
-- ----------------------------
DROP TABLE IF EXISTS "system_role_menu";
CREATE TABLE "system_role_menu" (
  "id" int8 NOT NULL,
  "role_id" int8 NOT NULL,
  "menu_id" int8 NOT NULL,
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "system_role_menu"."id" IS '????????????';
COMMENT ON COLUMN "system_role_menu"."role_id" IS '??????ID';
COMMENT ON COLUMN "system_role_menu"."menu_id" IS '??????ID';
COMMENT ON COLUMN "system_role_menu"."creator" IS '?????????';
COMMENT ON COLUMN "system_role_menu"."create_time" IS '????????????';
COMMENT ON COLUMN "system_role_menu"."updater" IS '?????????';
COMMENT ON COLUMN "system_role_menu"."update_time" IS '????????????';
COMMENT ON COLUMN "system_role_menu"."deleted" IS '????????????';
COMMENT ON COLUMN "system_role_menu"."tenant_id" IS '????????????';
COMMENT ON TABLE "system_role_menu" IS '????????????????????????';

-- ----------------------------
-- Records of system_role_menu
-- ----------------------------
BEGIN;
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (263, 109, 1, '1', '2022-02-22 00:56:14', '1', '2022-02-22 00:56:14', 0, 121);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (434, 2, 1, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (454, 2, 1093, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (455, 2, 1094, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (460, 2, 1100, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (467, 2, 1107, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (470, 2, 1110, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (476, 2, 1117, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (477, 2, 100, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (478, 2, 101, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (479, 2, 102, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (480, 2, 1126, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (481, 2, 103, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (483, 2, 104, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (485, 2, 105, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (488, 2, 107, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (490, 2, 108, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (492, 2, 109, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (498, 2, 1138, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (523, 2, 1224, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (524, 2, 1225, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (541, 2, 500, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (543, 2, 501, '1', '2022-02-22 13:09:12', '1', '2022-02-22 13:09:12', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (675, 2, 2, '1', '2022-02-22 13:16:57', '1', '2022-02-22 13:16:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (689, 2, 1077, '1', '2022-02-22 13:16:57', '1', '2022-02-22 13:16:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (690, 2, 1078, '1', '2022-02-22 13:16:57', '1', '2022-02-22 13:16:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (692, 2, 1083, '1', '2022-02-22 13:16:57', '1', '2022-02-22 13:16:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (693, 2, 1084, '1', '2022-02-22 13:16:57', '1', '2022-02-22 13:16:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (699, 2, 1090, '1', '2022-02-22 13:16:57', '1', '2022-02-22 13:16:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (703, 2, 106, '1', '2022-02-22 13:16:57', '1', '2022-02-22 13:16:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (704, 2, 110, '1', '2022-02-22 13:16:57', '1', '2022-02-22 13:16:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (705, 2, 111, '1', '2022-02-22 13:16:57', '1', '2022-02-22 13:16:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (706, 2, 112, '1', '2022-02-22 13:16:57', '1', '2022-02-22 13:16:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (707, 2, 113, '1', '2022-02-22 13:16:57', '1', '2022-02-22 13:16:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1296, 110, 1, '110', '2022-02-23 00:23:55', '110', '2022-02-23 00:23:55', 0, 121);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1486, 109, 103, '1', '2022-02-23 19:32:14', '1', '2022-02-23 19:32:14', 0, 121);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1487, 109, 104, '1', '2022-02-23 19:32:14', '1', '2022-02-23 19:32:14', 0, 121);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1489, 1, 1, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1490, 1, 2, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1494, 1, 1077, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1495, 1, 1078, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1496, 1, 1083, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1497, 1, 1084, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1498, 1, 1090, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1499, 1, 1093, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1500, 1, 1094, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1501, 1, 1100, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1502, 1, 1107, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1503, 1, 1110, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1505, 1, 1117, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1506, 1, 100, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1507, 1, 101, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1508, 1, 102, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1509, 1, 1126, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1510, 1, 103, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1511, 1, 104, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1512, 1, 105, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1513, 1, 106, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1514, 1, 107, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1515, 1, 108, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1516, 1, 109, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1517, 1, 110, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1518, 1, 111, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1519, 1, 112, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1520, 1, 113, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1522, 1, 1138, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1525, 1, 1224, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1526, 1, 1225, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1527, 1, 500, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1528, 1, 501, '1', '2022-02-23 20:03:57', '1', '2022-02-23 20:03:57', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1529, 109, 1024, '1', '2022-02-23 20:30:14', '1', '2022-02-23 20:30:14', 0, 121);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1530, 109, 1025, '1', '2022-02-23 20:30:14', '1', '2022-02-23 20:30:14', 0, 121);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1536, 109, 1017, '1', '2022-02-23 20:30:14', '1', '2022-02-23 20:30:14', 0, 121);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1537, 109, 1018, '1', '2022-02-23 20:30:14', '1', '2022-02-23 20:30:14', 0, 121);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1538, 109, 1019, '1', '2022-02-23 20:30:14', '1', '2022-02-23 20:30:14', 0, 121);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1539, 109, 1020, '1', '2022-02-23 20:30:14', '1', '2022-02-23 20:30:14', 0, 121);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1540, 109, 1021, '1', '2022-02-23 20:30:14', '1', '2022-02-23 20:30:14', 0, 121);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1541, 109, 1022, '1', '2022-02-23 20:30:14', '1', '2022-02-23 20:30:14', 0, 121);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1542, 109, 1023, '1', '2022-02-23 20:30:14', '1', '2022-02-23 20:30:14', 0, 121);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1576, 111, 1024, '1', '2022-03-07 21:37:58', '1', '2022-03-07 21:37:58', 0, 122);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1577, 111, 1025, '1', '2022-03-07 21:37:58', '1', '2022-03-07 21:37:58', 0, 122);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1578, 111, 1, '1', '2022-03-07 21:37:58', '1', '2022-03-07 21:37:58', 0, 122);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1584, 111, 103, '1', '2022-03-07 21:37:58', '1', '2022-03-07 21:37:58', 0, 122);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1585, 111, 104, '1', '2022-03-07 21:37:58', '1', '2022-03-07 21:37:58', 0, 122);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1587, 111, 1017, '1', '2022-03-07 21:37:58', '1', '2022-03-07 21:37:58', 0, 122);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1588, 111, 1018, '1', '2022-03-07 21:37:58', '1', '2022-03-07 21:37:58', 0, 122);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1589, 111, 1019, '1', '2022-03-07 21:37:58', '1', '2022-03-07 21:37:58', 0, 122);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1590, 111, 1020, '1', '2022-03-07 21:37:58', '1', '2022-03-07 21:37:58', 0, 122);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1591, 111, 1021, '1', '2022-03-07 21:37:58', '1', '2022-03-07 21:37:58', 0, 122);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1592, 111, 1022, '1', '2022-03-07 21:37:58', '1', '2022-03-07 21:37:58', 0, 122);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1593, 111, 1023, '1', '2022-03-07 21:37:58', '1', '2022-03-07 21:37:58', 0, 122);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1594, 109, 102, '1', '2022-03-19 18:39:13', '1', '2022-03-19 18:39:13', 0, 121);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1595, 109, 1013, '1', '2022-03-19 18:39:13', '1', '2022-03-19 18:39:13', 0, 121);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1596, 109, 1014, '1', '2022-03-19 18:39:13', '1', '2022-03-19 18:39:13', 0, 121);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1597, 109, 1015, '1', '2022-03-19 18:39:13', '1', '2022-03-19 18:39:13', 0, 121);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1598, 109, 1016, '1', '2022-03-19 18:39:13', '1', '2022-03-19 18:39:13', 0, 121);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1599, 111, 102, '1', '2022-03-19 18:39:13', '1', '2022-03-19 18:39:13', 0, 122);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1600, 111, 1013, '1', '2022-03-19 18:39:13', '1', '2022-03-19 18:39:13', 0, 122);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1601, 111, 1014, '1', '2022-03-19 18:39:13', '1', '2022-03-19 18:39:13', 0, 122);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1602, 111, 1015, '1', '2022-03-19 18:39:13', '1', '2022-03-19 18:39:13', 0, 122);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1603, 111, 1016, '1', '2022-03-19 18:39:13', '1', '2022-03-19 18:39:13', 0, 122);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1604, 101, 1216, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1605, 101, 1217, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1606, 101, 1218, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1607, 101, 1219, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1608, 101, 1220, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1609, 101, 1221, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1610, 101, 5, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1611, 101, 1222, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1612, 101, 1118, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1613, 101, 1119, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1614, 101, 1120, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1615, 101, 1185, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1616, 101, 1186, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1617, 101, 1187, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1618, 101, 1188, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1619, 101, 1189, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1620, 101, 1190, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1621, 101, 1191, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1622, 101, 1192, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1623, 101, 1193, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1624, 101, 1194, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1625, 101, 1195, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1626, 101, 1196, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1627, 101, 1197, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1628, 101, 1198, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1629, 101, 1199, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1630, 101, 1200, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1631, 101, 1201, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1632, 101, 1202, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1633, 101, 1207, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1634, 101, 1208, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1635, 101, 1209, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1636, 101, 1210, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1637, 101, 1211, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1638, 101, 1212, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1639, 101, 1213, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1640, 101, 1215, '1', '2022-03-19 21:45:52', '1', '2022-03-19 21:45:52', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1641, 101, 2, '1', '2022-04-01 22:21:24', '1', '2022-04-01 22:21:24', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1642, 101, 1031, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1643, 101, 1032, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1644, 101, 1033, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1645, 101, 1034, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1646, 101, 1035, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1647, 101, 1050, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1648, 101, 1051, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1649, 101, 1052, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1650, 101, 1053, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1651, 101, 1054, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1652, 101, 1056, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1653, 101, 1057, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1654, 101, 1058, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1655, 101, 1059, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1656, 101, 1060, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1657, 101, 1066, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1658, 101, 1067, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1659, 101, 1070, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1660, 101, 1071, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1661, 101, 1072, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1662, 101, 1073, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1663, 101, 1074, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1664, 101, 1075, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1665, 101, 1076, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1666, 101, 1077, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1667, 101, 1078, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1668, 101, 1082, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1669, 101, 1083, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1670, 101, 1084, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1671, 101, 1085, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1672, 101, 1086, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1673, 101, 1087, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1674, 101, 1088, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1675, 101, 1089, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1676, 101, 1090, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1677, 101, 1091, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1678, 101, 1092, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1679, 101, 1237, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1680, 101, 1238, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1681, 101, 1239, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1682, 101, 1240, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1683, 101, 1241, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1684, 101, 1242, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1685, 101, 1243, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1687, 101, 106, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1688, 101, 110, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1689, 101, 111, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1690, 101, 112, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1691, 101, 113, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1692, 101, 114, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1693, 101, 115, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
INSERT INTO "system_role_menu" ("id", "role_id", "menu_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1694, 101, 116, '1', '2022-04-01 22:21:37', '1', '2022-04-01 22:21:37', 0, 1);
COMMIT;

-- ----------------------------
-- Table structure for system_sensitive_word
-- ----------------------------
DROP TABLE IF EXISTS "system_sensitive_word";
CREATE TABLE "system_sensitive_word" (
  "id" int8 NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar(512) COLLATE "pg_catalog"."default",
  "tags" varchar(255) COLLATE "pg_catalog"."default",
  "status" int2 NOT NULL,
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "system_sensitive_word"."id" IS '??????';
COMMENT ON COLUMN "system_sensitive_word"."name" IS '?????????';
COMMENT ON COLUMN "system_sensitive_word"."description" IS '??????';
COMMENT ON COLUMN "system_sensitive_word"."tags" IS '????????????';
COMMENT ON COLUMN "system_sensitive_word"."status" IS '??????';
COMMENT ON COLUMN "system_sensitive_word"."creator" IS '?????????';
COMMENT ON COLUMN "system_sensitive_word"."create_time" IS '????????????';
COMMENT ON COLUMN "system_sensitive_word"."updater" IS '?????????';
COMMENT ON COLUMN "system_sensitive_word"."update_time" IS '????????????';
COMMENT ON COLUMN "system_sensitive_word"."deleted" IS '????????????';
COMMENT ON TABLE "system_sensitive_word" IS '?????????';

-- ----------------------------
-- Records of system_sensitive_word
-- ----------------------------
BEGIN;
INSERT INTO "system_sensitive_word" ("id", "name", "description", "tags", "status", "creator", "create_time", "updater", "update_time", "deleted") VALUES (3, '??????', '??????', '??????,??????', 0, '1', '2022-04-08 21:07:12', '1', '2022-04-09 10:28:14', 0);
INSERT INTO "system_sensitive_word" ("id", "name", "description", "tags", "status", "creator", "create_time", "updater", "update_time", "deleted") VALUES (4, 'XXX', NULL, '??????', 0, '1', '2022-04-08 21:27:49', '1', '2022-04-08 21:27:49', 0);
COMMIT;

-- ----------------------------
-- Table structure for system_sms_channel
-- ----------------------------
DROP TABLE IF EXISTS "system_sms_channel";
CREATE TABLE "system_sms_channel" (
  "id" int8 NOT NULL,
  "signature" varchar(12) COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar(63) COLLATE "pg_catalog"."default" NOT NULL,
  "status" int2 NOT NULL,
  "remark" varchar(255) COLLATE "pg_catalog"."default",
  "api_key" varchar(128) COLLATE "pg_catalog"."default" NOT NULL,
  "api_secret" varchar(128) COLLATE "pg_catalog"."default",
  "callback_url" varchar(255) COLLATE "pg_catalog"."default",
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "system_sms_channel"."id" IS '??????';
COMMENT ON COLUMN "system_sms_channel"."signature" IS '????????????';
COMMENT ON COLUMN "system_sms_channel"."code" IS '????????????';
COMMENT ON COLUMN "system_sms_channel"."status" IS '????????????';
COMMENT ON COLUMN "system_sms_channel"."remark" IS '??????';
COMMENT ON COLUMN "system_sms_channel"."api_key" IS '?????? API ?????????';
COMMENT ON COLUMN "system_sms_channel"."api_secret" IS '?????? API ?????????';
COMMENT ON COLUMN "system_sms_channel"."callback_url" IS '?????????????????? URL';
COMMENT ON COLUMN "system_sms_channel"."creator" IS '?????????';
COMMENT ON COLUMN "system_sms_channel"."create_time" IS '????????????';
COMMENT ON COLUMN "system_sms_channel"."updater" IS '?????????';
COMMENT ON COLUMN "system_sms_channel"."update_time" IS '????????????';
COMMENT ON COLUMN "system_sms_channel"."deleted" IS '????????????';
COMMENT ON TABLE "system_sms_channel" IS '????????????';

-- ----------------------------
-- Records of system_sms_channel
-- ----------------------------
BEGIN;
INSERT INTO "system_sms_channel" ("id", "signature", "code", "status", "remark", "api_key", "api_secret", "callback_url", "creator", "create_time", "updater", "update_time", "deleted") VALUES (2, 'Ballcat', 'ALIYUN', 0, '?????????', 'LTAI5tCnKso2uG3kJ5gRav88', 'fGJ5SNXL7P1NHNRmJ7DJaMJGPyE55C', NULL, '', '2021-03-31 11:53:10', '1', '2021-04-14 00:08:37', 0);
INSERT INTO "system_sms_channel" ("id", "signature", "code", "status", "remark", "api_key", "api_secret", "callback_url", "creator", "create_time", "updater", "update_time", "deleted") VALUES (4, '????????????', 'DEBUG_DING_TALK', 0, '123', '696b5d8ead48071237e4aa5861ff08dbadb2b4ded1c688a7b7c9afc615579859', 'SEC5c4e5ff888bc8a9923ae47f59e7ccd30af1f14d93c55b4e2c9cb094e35aeed67', NULL, '1', '2021-04-13 00:23:14', '1', '2022-03-27 20:29:49', 0);
INSERT INTO "system_sms_channel" ("id", "signature", "code", "status", "remark", "api_key", "api_secret", "callback_url", "creator", "create_time", "updater", "update_time", "deleted") VALUES (6, '????????????', 'DEBUG_DING_TALK', 0, NULL, '696b5d8ead48071237e4aa5861ff08dbadb2b4ded1c688a7b7c9afc615579859', 'SEC5c4e5ff888bc8a9923ae47f59e7ccd30af1f14d93c55b4e2c9cb094e35aeed67', NULL, '1', '2022-04-10 23:07:59', '1', '2022-04-10 23:07:59', 0);
COMMIT;

-- ----------------------------
-- Table structure for system_sms_code
-- ----------------------------
DROP TABLE IF EXISTS "system_sms_code";
CREATE TABLE "system_sms_code" (
  "id" int8 NOT NULL,
  "mobile" varchar(11) COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar(6) COLLATE "pg_catalog"."default" NOT NULL,
  "create_ip" varchar(15) COLLATE "pg_catalog"."default" NOT NULL,
  "scene" int2 NOT NULL,
  "today_index" int2 NOT NULL,
  "used" bool NOT NULL,
  "used_time" timestamp(6),
  "used_ip" varchar(255) COLLATE "pg_catalog"."default",
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "system_sms_code"."id" IS '??????';
COMMENT ON COLUMN "system_sms_code"."mobile" IS '?????????';
COMMENT ON COLUMN "system_sms_code"."code" IS '?????????';
COMMENT ON COLUMN "system_sms_code"."create_ip" IS '?????? IP';
COMMENT ON COLUMN "system_sms_code"."scene" IS '????????????';
COMMENT ON COLUMN "system_sms_code"."today_index" IS '????????????????????????';
COMMENT ON COLUMN "system_sms_code"."used" IS '????????????';
COMMENT ON COLUMN "system_sms_code"."used_time" IS '????????????';
COMMENT ON COLUMN "system_sms_code"."used_ip" IS '?????? IP';
COMMENT ON COLUMN "system_sms_code"."creator" IS '?????????';
COMMENT ON COLUMN "system_sms_code"."create_time" IS '????????????';
COMMENT ON COLUMN "system_sms_code"."updater" IS '?????????';
COMMENT ON COLUMN "system_sms_code"."update_time" IS '????????????';
COMMENT ON COLUMN "system_sms_code"."deleted" IS '????????????';
COMMENT ON COLUMN "system_sms_code"."tenant_id" IS '????????????';
COMMENT ON TABLE "system_sms_code" IS '???????????????';

-- ----------------------------
-- Records of system_sms_code
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for system_sms_log
-- ----------------------------
DROP TABLE IF EXISTS "system_sms_log";
CREATE TABLE "system_sms_log" (
  "id" int8 NOT NULL,
  "channel_id" int8 NOT NULL,
  "channel_code" varchar(63) COLLATE "pg_catalog"."default" NOT NULL,
  "template_id" int8 NOT NULL,
  "template_code" varchar(63) COLLATE "pg_catalog"."default" NOT NULL,
  "template_type" int2 NOT NULL,
  "template_content" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "template_params" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "api_template_id" varchar(63) COLLATE "pg_catalog"."default" NOT NULL,
  "mobile" varchar(11) COLLATE "pg_catalog"."default" NOT NULL,
  "user_id" int8,
  "user_type" int2,
  "send_status" int2 NOT NULL,
  "send_time" timestamp(6),
  "send_code" int4,
  "send_msg" varchar(255) COLLATE "pg_catalog"."default",
  "api_send_code" varchar(63) COLLATE "pg_catalog"."default",
  "api_send_msg" varchar(255) COLLATE "pg_catalog"."default",
  "api_request_id" varchar(255) COLLATE "pg_catalog"."default",
  "api_serial_no" varchar(255) COLLATE "pg_catalog"."default",
  "receive_status" int2 NOT NULL,
  "receive_time" timestamp(6),
  "api_receive_code" varchar(63) COLLATE "pg_catalog"."default",
  "api_receive_msg" varchar(255) COLLATE "pg_catalog"."default",
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "system_sms_log"."id" IS '??????';
COMMENT ON COLUMN "system_sms_log"."channel_id" IS '??????????????????';
COMMENT ON COLUMN "system_sms_log"."channel_code" IS '??????????????????';
COMMENT ON COLUMN "system_sms_log"."template_id" IS '????????????';
COMMENT ON COLUMN "system_sms_log"."template_code" IS '????????????';
COMMENT ON COLUMN "system_sms_log"."template_type" IS '????????????';
COMMENT ON COLUMN "system_sms_log"."template_content" IS '????????????';
COMMENT ON COLUMN "system_sms_log"."template_params" IS '????????????';
COMMENT ON COLUMN "system_sms_log"."api_template_id" IS '?????? API ???????????????';
COMMENT ON COLUMN "system_sms_log"."mobile" IS '?????????';
COMMENT ON COLUMN "system_sms_log"."user_id" IS '????????????';
COMMENT ON COLUMN "system_sms_log"."user_type" IS '????????????';
COMMENT ON COLUMN "system_sms_log"."send_status" IS '????????????';
COMMENT ON COLUMN "system_sms_log"."send_time" IS '????????????';
COMMENT ON COLUMN "system_sms_log"."send_code" IS '?????????????????????';
COMMENT ON COLUMN "system_sms_log"."send_msg" IS '?????????????????????';
COMMENT ON COLUMN "system_sms_log"."api_send_code" IS '?????? API ?????????????????????';
COMMENT ON COLUMN "system_sms_log"."api_send_msg" IS '?????? API ?????????????????????';
COMMENT ON COLUMN "system_sms_log"."api_request_id" IS '?????? API ??????????????????????????? ID';
COMMENT ON COLUMN "system_sms_log"."api_serial_no" IS '?????? API ?????????????????????';
COMMENT ON COLUMN "system_sms_log"."receive_status" IS '????????????';
COMMENT ON COLUMN "system_sms_log"."receive_time" IS '????????????';
COMMENT ON COLUMN "system_sms_log"."api_receive_code" IS 'API ?????????????????????';
COMMENT ON COLUMN "system_sms_log"."api_receive_msg" IS 'API ?????????????????????';
COMMENT ON COLUMN "system_sms_log"."creator" IS '?????????';
COMMENT ON COLUMN "system_sms_log"."create_time" IS '????????????';
COMMENT ON COLUMN "system_sms_log"."updater" IS '?????????';
COMMENT ON COLUMN "system_sms_log"."update_time" IS '????????????';
COMMENT ON COLUMN "system_sms_log"."deleted" IS '????????????';
COMMENT ON TABLE "system_sms_log" IS '????????????';

-- ----------------------------
-- Records of system_sms_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for system_sms_template
-- ----------------------------
DROP TABLE IF EXISTS "system_sms_template";
CREATE TABLE "system_sms_template" (
  "id" int8 NOT NULL,
  "type" int2 NOT NULL,
  "status" int2 NOT NULL,
  "code" varchar(63) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(63) COLLATE "pg_catalog"."default" NOT NULL,
  "content" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "params" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "remark" varchar(255) COLLATE "pg_catalog"."default",
  "api_template_id" varchar(63) COLLATE "pg_catalog"."default" NOT NULL,
  "channel_id" int8 NOT NULL,
  "channel_code" varchar(63) COLLATE "pg_catalog"."default" NOT NULL,
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "system_sms_template"."id" IS '??????';
COMMENT ON COLUMN "system_sms_template"."type" IS '????????????';
COMMENT ON COLUMN "system_sms_template"."status" IS '????????????';
COMMENT ON COLUMN "system_sms_template"."code" IS '????????????';
COMMENT ON COLUMN "system_sms_template"."name" IS '????????????';
COMMENT ON COLUMN "system_sms_template"."content" IS '????????????';
COMMENT ON COLUMN "system_sms_template"."params" IS '????????????';
COMMENT ON COLUMN "system_sms_template"."remark" IS '??????';
COMMENT ON COLUMN "system_sms_template"."api_template_id" IS '?????? API ???????????????';
COMMENT ON COLUMN "system_sms_template"."channel_id" IS '??????????????????';
COMMENT ON COLUMN "system_sms_template"."channel_code" IS '??????????????????';
COMMENT ON COLUMN "system_sms_template"."creator" IS '?????????';
COMMENT ON COLUMN "system_sms_template"."create_time" IS '????????????';
COMMENT ON COLUMN "system_sms_template"."updater" IS '?????????';
COMMENT ON COLUMN "system_sms_template"."update_time" IS '????????????';
COMMENT ON COLUMN "system_sms_template"."deleted" IS '????????????';
COMMENT ON TABLE "system_sms_template" IS '????????????';

-- ----------------------------
-- Records of system_sms_template
-- ----------------------------
BEGIN;
INSERT INTO "system_sms_template" ("id", "type", "status", "code", "name", "content", "params", "remark", "api_template_id", "channel_id", "channel_code", "creator", "create_time", "updater", "update_time", "deleted") VALUES (2, 1, 0, 'test_01', '?????????????????????', '????????????????????????{operation}?????????????????????{code}', '["operation","code"]', NULL, '4383920', 1, 'YUN_PIAN', '', '2021-03-31 10:49:38', '1', '2021-04-10 01:22:00', 0);
INSERT INTO "system_sms_template" ("id", "type", "status", "code", "name", "content", "params", "remark", "api_template_id", "channel_id", "channel_code", "creator", "create_time", "updater", "update_time", "deleted") VALUES (3, 1, 0, 'test_02', '????????????', '???????????????{code}???????????????5??????????????????????????????????????????', '["code"]', NULL, 'SMS_207945135', 2, 'ALIYUN', '', '2021-03-31 11:56:30', '1', '2021-04-10 01:22:02', 0);
INSERT INTO "system_sms_template" ("id", "type", "status", "code", "name", "content", "params", "remark", "api_template_id", "channel_id", "channel_code", "creator", "create_time", "updater", "update_time", "deleted") VALUES (6, 3, 0, 'test-01', '????????????', '????????? {name}', '["name"]', 'f?????????', '4383920', 1, 'YUN_PIAN', '1', '2021-04-10 01:07:21', '1', '2021-04-10 01:22:05', 0);
INSERT INTO "system_sms_template" ("id", "type", "status", "code", "name", "content", "params", "remark", "api_template_id", "channel_id", "channel_code", "creator", "create_time", "updater", "update_time", "deleted") VALUES (7, 3, 0, 'test-04', '?????????', '??????{name}?????????{code}', '["name","code"]', NULL, 'suibian', 4, 'DEBUG_DING_TALK', '1', '2021-04-13 00:29:53', '1', '2021-04-14 00:30:38', 0);
INSERT INTO "system_sms_template" ("id", "type", "status", "code", "name", "content", "params", "remark", "api_template_id", "channel_id", "channel_code", "creator", "create_time", "updater", "update_time", "deleted") VALUES (8, 1, 0, 'user-sms-login', '????????????????????????', '??????????????????{code}', '["code"]', NULL, '4372216', 1, 'YUN_PIAN', '1', '2021-10-11 08:10:00', '1', '2021-10-11 08:10:00', 0);
INSERT INTO "system_sms_template" ("id", "type", "status", "code", "name", "content", "params", "remark", "api_template_id", "channel_id", "channel_code", "creator", "create_time", "updater", "update_time", "deleted") VALUES (9, 2, 0, 'bpm_task_assigned', '??????????????????????????????', '???????????????????????????????????????{processInstanceName}-{taskName}???????????????{startUserNickname}??????????????????{detailUrl}', '["processInstanceName","taskName","startUserNickname","detailUrl"]', NULL, 'suibian', 4, 'DEBUG_DING_TALK', '1', '2022-01-21 22:31:19', '1', '2022-01-22 00:03:36', 0);
INSERT INTO "system_sms_template" ("id", "type", "status", "code", "name", "content", "params", "remark", "api_template_id", "channel_id", "channel_code", "creator", "create_time", "updater", "update_time", "deleted") VALUES (10, 2, 0, 'bpm_process_instance_reject', '?????????????????????????????????', '?????????????????????????????????{processInstanceName}????????????{reason}??????????????????{detailUrl}', '["processInstanceName","reason","detailUrl"]', NULL, 'suibian', 4, 'DEBUG_DING_TALK', '1', '2022-01-22 00:03:31', '1', '2022-05-01 12:33:14', 0);
INSERT INTO "system_sms_template" ("id", "type", "status", "code", "name", "content", "params", "remark", "api_template_id", "channel_id", "channel_code", "creator", "create_time", "updater", "update_time", "deleted") VALUES (11, 2, 0, 'bpm_process_instance_approve', '??????????????????????????????', '??????????????????????????????{processInstanceName}??????????????????{detailUrl}', '["processInstanceName","detailUrl"]', NULL, 'suibian', 4, 'DEBUG_DING_TALK', '1', '2022-01-22 00:04:31', '1', '2022-03-27 20:32:21', 0);
INSERT INTO "system_sms_template" ("id", "type", "status", "code", "name", "content", "params", "remark", "api_template_id", "channel_id", "channel_code", "creator", "create_time", "updater", "update_time", "deleted") VALUES (12, 2, 0, 'demo', '????????????', '????????????????????????', '[]', NULL, 'biubiubiu', 6, 'DEBUG_DING_TALK', '1', '2022-04-10 23:22:49', '1', '2022-04-10 23:22:49', 0);
INSERT INTO "system_sms_template" ("id", "type", "status", "code", "name", "content", "params", "remark", "api_template_id", "channel_id", "channel_code", "creator", "create_time", "updater", "update_time", "deleted") VALUES (13, 1, 0, 'admin-sms-login', '????????????????????????', '??????????????????{code}', '["code"]', '', '4372216', 1, 'YUN_PIAN', '1', '2021-10-11 08:10:00', '1', '2021-10-11 08:10:00', 0);
COMMIT;

-- ----------------------------
-- Table structure for system_social_user
-- ----------------------------
DROP TABLE IF EXISTS "system_social_user";
CREATE TABLE "system_social_user" (
  "id" numeric(20,0) NOT NULL,
  "type" int2 NOT NULL,
  "openid" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "token" varchar(256) COLLATE "pg_catalog"."default",
  "raw_token_info" varchar(1024) COLLATE "pg_catalog"."default" NOT NULL,
  "nickname" varchar(32) COLLATE "pg_catalog"."default" NOT NULL,
  "avatar" varchar(255) COLLATE "pg_catalog"."default",
  "raw_user_info" varchar(1024) COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar(256) COLLATE "pg_catalog"."default" NOT NULL,
  "state" varchar(256) COLLATE "pg_catalog"."default",
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "system_social_user"."id" IS '??????(????????????)';
COMMENT ON COLUMN "system_social_user"."type" IS '?????????????????????';
COMMENT ON COLUMN "system_social_user"."openid" IS '?????? openid';
COMMENT ON COLUMN "system_social_user"."token" IS '?????? token';
COMMENT ON COLUMN "system_social_user"."raw_token_info" IS '?????? Token ?????????????????? JSON ??????';
COMMENT ON COLUMN "system_social_user"."nickname" IS '????????????';
COMMENT ON COLUMN "system_social_user"."avatar" IS '????????????';
COMMENT ON COLUMN "system_social_user"."raw_user_info" IS '?????????????????????????????? JSON ??????';
COMMENT ON COLUMN "system_social_user"."code" IS '????????????????????? code';
COMMENT ON COLUMN "system_social_user"."state" IS '????????????????????? state';
COMMENT ON COLUMN "system_social_user"."creator" IS '?????????';
COMMENT ON COLUMN "system_social_user"."create_time" IS '????????????';
COMMENT ON COLUMN "system_social_user"."updater" IS '?????????';
COMMENT ON COLUMN "system_social_user"."update_time" IS '????????????';
COMMENT ON COLUMN "system_social_user"."deleted" IS '????????????';
COMMENT ON COLUMN "system_social_user"."tenant_id" IS '????????????';
COMMENT ON TABLE "system_social_user" IS '???????????????';

-- ----------------------------
-- Records of system_social_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for system_social_user_bind
-- ----------------------------
DROP TABLE IF EXISTS "system_social_user_bind";
CREATE TABLE "system_social_user_bind" (
  "id" numeric(20,0) NOT NULL,
  "user_id" int8 NOT NULL,
  "user_type" int2 NOT NULL,
  "social_type" int2 NOT NULL,
  "social_user_id" int8 NOT NULL,
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "system_social_user_bind"."id" IS '??????(????????????)';
COMMENT ON COLUMN "system_social_user_bind"."user_id" IS '????????????';
COMMENT ON COLUMN "system_social_user_bind"."user_type" IS '????????????';
COMMENT ON COLUMN "system_social_user_bind"."social_type" IS '?????????????????????';
COMMENT ON COLUMN "system_social_user_bind"."social_user_id" IS '?????????????????????';
COMMENT ON COLUMN "system_social_user_bind"."creator" IS '?????????';
COMMENT ON COLUMN "system_social_user_bind"."create_time" IS '????????????';
COMMENT ON COLUMN "system_social_user_bind"."updater" IS '?????????';
COMMENT ON COLUMN "system_social_user_bind"."update_time" IS '????????????';
COMMENT ON COLUMN "system_social_user_bind"."deleted" IS '????????????';
COMMENT ON COLUMN "system_social_user_bind"."tenant_id" IS '????????????';
COMMENT ON TABLE "system_social_user_bind" IS '???????????????';

-- ----------------------------
-- Records of system_social_user_bind
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for system_tenant
-- ----------------------------
DROP TABLE IF EXISTS "system_tenant";
CREATE TABLE "system_tenant" (
  "id" int8 NOT NULL,
  "name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "contact_user_id" int8,
  "contact_name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "contact_mobile" varchar(500) COLLATE "pg_catalog"."default",
  "status" int2 NOT NULL,
  "domain" varchar(256) COLLATE "pg_catalog"."default",
  "package_id" int8 NOT NULL,
  "expire_time" timestamp(6) NOT NULL,
  "account_count" int4 NOT NULL,
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "system_tenant"."id" IS '????????????';
COMMENT ON COLUMN "system_tenant"."name" IS '?????????';
COMMENT ON COLUMN "system_tenant"."contact_user_id" IS '????????????????????????';
COMMENT ON COLUMN "system_tenant"."contact_name" IS '?????????';
COMMENT ON COLUMN "system_tenant"."contact_mobile" IS '????????????';
COMMENT ON COLUMN "system_tenant"."status" IS '???????????????0?????? 1?????????';
COMMENT ON COLUMN "system_tenant"."domain" IS '????????????';
COMMENT ON COLUMN "system_tenant"."package_id" IS '??????????????????';
COMMENT ON COLUMN "system_tenant"."expire_time" IS '????????????';
COMMENT ON COLUMN "system_tenant"."account_count" IS '????????????';
COMMENT ON COLUMN "system_tenant"."creator" IS '?????????';
COMMENT ON COLUMN "system_tenant"."create_time" IS '????????????';
COMMENT ON COLUMN "system_tenant"."updater" IS '?????????';
COMMENT ON COLUMN "system_tenant"."update_time" IS '????????????';
COMMENT ON COLUMN "system_tenant"."deleted" IS '????????????';
COMMENT ON TABLE "system_tenant" IS '?????????';

-- ----------------------------
-- Records of system_tenant
-- ----------------------------
BEGIN;
INSERT INTO "system_tenant" ("id", "name", "contact_user_id", "contact_name", "contact_mobile", "status", "domain", "package_id", "expire_time", "account_count", "creator", "create_time", "updater", "update_time", "deleted") VALUES (1, '????????????', NULL, '??????', '17321315478', 0, 'https://www.iocoder.cn', 0, '2099-02-19 17:14:16', 9999, '1', '2021-01-05 17:03:47', '1', '2022-02-23 12:15:11', 0);
INSERT INTO "system_tenant" ("id", "name", "contact_user_id", "contact_name", "contact_mobile", "status", "domain", "package_id", "expire_time", "account_count", "creator", "create_time", "updater", "update_time", "deleted") VALUES (121, '?????????', 110, '??????2', '15601691300', 0, 'http://www.iocoder.cn', 111, '2024-03-11 00:00:00', 20, '1', '2022-02-22 00:56:14', '1', '2022-03-19 18:37:20', 0);
INSERT INTO "system_tenant" ("id", "name", "contact_user_id", "contact_name", "contact_mobile", "status", "domain", "package_id", "expire_time", "account_count", "creator", "create_time", "updater", "update_time", "deleted") VALUES (122, '????????????', 113, '??????', '15601691300', 0, 'https://www.iocoder.cn', 111, '2022-04-30 00:00:00', 50, '1', '2022-03-07 21:37:58', '1', '2022-03-07 21:37:58', 0);
COMMIT;

-- ----------------------------
-- Table structure for system_tenant_package
-- ----------------------------
DROP TABLE IF EXISTS "system_tenant_package";
CREATE TABLE "system_tenant_package" (
  "id" int8 NOT NULL,
  "name" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "status" int2 NOT NULL,
  "remark" varchar(256) COLLATE "pg_catalog"."default",
  "menu_ids" varchar(2048) COLLATE "pg_catalog"."default" NOT NULL,
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "system_tenant_package"."id" IS '????????????';
COMMENT ON COLUMN "system_tenant_package"."name" IS '?????????';
COMMENT ON COLUMN "system_tenant_package"."status" IS '???????????????0?????? 1?????????';
COMMENT ON COLUMN "system_tenant_package"."remark" IS '??????';
COMMENT ON COLUMN "system_tenant_package"."menu_ids" IS '?????????????????????';
COMMENT ON COLUMN "system_tenant_package"."creator" IS '?????????';
COMMENT ON COLUMN "system_tenant_package"."create_time" IS '????????????';
COMMENT ON COLUMN "system_tenant_package"."updater" IS '?????????';
COMMENT ON COLUMN "system_tenant_package"."update_time" IS '????????????';
COMMENT ON COLUMN "system_tenant_package"."deleted" IS '????????????';
COMMENT ON TABLE "system_tenant_package" IS '???????????????';

-- ----------------------------
-- Records of system_tenant_package
-- ----------------------------
BEGIN;
INSERT INTO "system_tenant_package" ("id", "name", "status", "remark", "menu_ids", "creator", "create_time", "updater", "update_time", "deleted") VALUES (111, '????????????', 0, '?????????', '[1024,1025,1,102,103,104,1013,1014,1015,1016,1017,1018,1019,1020,1021,1022,1023]', '1', '2022-02-22 00:54:00', '1', '2022-03-19 18:39:13', 0);
COMMIT;

-- ----------------------------
-- Table structure for system_user_post
-- ----------------------------
DROP TABLE IF EXISTS "system_user_post";
CREATE TABLE "system_user_post" (
  "id" int8 NOT NULL,
  "user_id" int8 NOT NULL,
  "post_id" int8 NOT NULL,
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "tenant_id" int8 NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "system_user_post"."id" IS 'id';
COMMENT ON COLUMN "system_user_post"."user_id" IS '??????ID';
COMMENT ON COLUMN "system_user_post"."post_id" IS '??????ID';
COMMENT ON COLUMN "system_user_post"."creator" IS '?????????';
COMMENT ON COLUMN "system_user_post"."create_time" IS '????????????';
COMMENT ON COLUMN "system_user_post"."updater" IS '?????????';
COMMENT ON COLUMN "system_user_post"."update_time" IS '????????????';
COMMENT ON COLUMN "system_user_post"."tenant_id" IS '????????????';
COMMENT ON COLUMN "system_user_post"."deleted" IS '????????????';
COMMENT ON TABLE "system_user_post" IS '???????????????';

-- ----------------------------
-- Records of system_user_post
-- ----------------------------
BEGIN;
INSERT INTO "system_user_post" ("id", "user_id", "post_id", "creator", "create_time", "updater", "update_time", "tenant_id", "deleted") VALUES (112, 1, 1, 'admin', '2022-05-02 07:25:24', 'admin', '2022-05-02 07:25:24', 1, 0);
INSERT INTO "system_user_post" ("id", "user_id", "post_id", "creator", "create_time", "updater", "update_time", "tenant_id", "deleted") VALUES (113, 100, 1, 'admin', '2022-05-02 07:25:24', 'admin', '2022-05-02 07:25:24', 1, 0);
INSERT INTO "system_user_post" ("id", "user_id", "post_id", "creator", "create_time", "updater", "update_time", "tenant_id", "deleted") VALUES (114, 114, 3, 'admin', '2022-05-02 07:25:24', 'admin', '2022-05-02 07:25:24', 1, 0);
COMMIT;

-- ----------------------------
-- Table structure for system_user_role
-- ----------------------------
DROP TABLE IF EXISTS "system_user_role";
CREATE TABLE "system_user_role" (
  "id" int8 NOT NULL,
  "user_id" int8 NOT NULL,
  "role_id" int8 NOT NULL,
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6),
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6),
  "deleted" int2 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "system_user_role"."id" IS '????????????';
COMMENT ON COLUMN "system_user_role"."user_id" IS '??????ID';
COMMENT ON COLUMN "system_user_role"."role_id" IS '??????ID';
COMMENT ON COLUMN "system_user_role"."creator" IS '?????????';
COMMENT ON COLUMN "system_user_role"."create_time" IS '????????????';
COMMENT ON COLUMN "system_user_role"."updater" IS '?????????';
COMMENT ON COLUMN "system_user_role"."update_time" IS '????????????';
COMMENT ON COLUMN "system_user_role"."deleted" IS '????????????';
COMMENT ON COLUMN "system_user_role"."tenant_id" IS '????????????';
COMMENT ON TABLE "system_user_role" IS '????????????????????????';

-- ----------------------------
-- Records of system_user_role
-- ----------------------------
BEGIN;
INSERT INTO "system_user_role" ("id", "user_id", "role_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1, 1, 1, '', '2022-01-11 13:19:45', '', '2022-05-12 12:35:17', 0, 1);
INSERT INTO "system_user_role" ("id", "user_id", "role_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (2, 2, 2, '', '2022-01-11 13:19:45', '', '2022-05-12 12:35:13', 0, 1);
INSERT INTO "system_user_role" ("id", "user_id", "role_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (4, 100, 101, '', '2022-01-11 13:19:45', '', '2022-05-12 12:35:13', 0, 1);
INSERT INTO "system_user_role" ("id", "user_id", "role_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (5, 100, 1, '', '2022-01-11 13:19:45', '', '2022-05-12 12:35:12', 0, 1);
INSERT INTO "system_user_role" ("id", "user_id", "role_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (6, 100, 2, '', '2022-01-11 13:19:45', '', '2022-05-12 12:35:11', 0, 1);
INSERT INTO "system_user_role" ("id", "user_id", "role_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (7, 104, 101, '', '2022-01-11 13:19:45', '', '2022-05-12 12:35:11', 0, 1);
INSERT INTO "system_user_role" ("id", "user_id", "role_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (10, 103, 1, '1', '2022-01-11 13:19:45', '1', '2022-01-11 13:19:45', 0, 1);
INSERT INTO "system_user_role" ("id", "user_id", "role_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (11, 107, 106, '1', '2022-02-20 22:59:33', '1', '2022-02-20 22:59:33', 0, 118);
INSERT INTO "system_user_role" ("id", "user_id", "role_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (12, 108, 107, '1', '2022-02-20 23:00:50', '1', '2022-02-20 23:00:50', 0, 119);
INSERT INTO "system_user_role" ("id", "user_id", "role_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (13, 109, 108, '1', '2022-02-20 23:11:50', '1', '2022-02-20 23:11:50', 0, 120);
INSERT INTO "system_user_role" ("id", "user_id", "role_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (14, 110, 109, '1', '2022-02-22 00:56:14', '1', '2022-02-22 00:56:14', 0, 121);
INSERT INTO "system_user_role" ("id", "user_id", "role_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (15, 111, 110, '110', '2022-02-23 13:14:38', '110', '2022-02-23 13:14:38', 0, 121);
INSERT INTO "system_user_role" ("id", "user_id", "role_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (16, 113, 111, '1', '2022-03-07 21:37:58', '1', '2022-03-07 21:37:58', 0, 122);
INSERT INTO "system_user_role" ("id", "user_id", "role_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (17, 114, 101, '1', '2022-03-19 21:51:13', '1', '2022-03-19 21:51:13', 0, 1);
INSERT INTO "system_user_role" ("id", "user_id", "role_id", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (18, 1, 2, '1', '2022-05-12 20:39:29', '1', '2022-05-12 20:39:29', 0, 1);
COMMIT;

-- ----------------------------
-- Table structure for system_users
-- ----------------------------
DROP TABLE IF EXISTS "system_users";
CREATE TABLE "system_users" (
  "id" int8 NOT NULL,
  "username" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "password" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "nickname" varchar(30) COLLATE "pg_catalog"."default" NOT NULL,
  "remark" varchar(500) COLLATE "pg_catalog"."default",
  "dept_id" int8,
  "post_ids" varchar(255) COLLATE "pg_catalog"."default",
  "email" varchar(50) COLLATE "pg_catalog"."default",
  "mobile" varchar(11) COLLATE "pg_catalog"."default",
  "sex" int2,
  "avatar" varchar(100) COLLATE "pg_catalog"."default",
  "status" int2 NOT NULL,
  "login_ip" varchar(50) COLLATE "pg_catalog"."default",
  "login_date" timestamp(6),
  "creator" varchar(64) COLLATE "pg_catalog"."default",
  "create_time" timestamp(6) NOT NULL,
  "updater" varchar(64) COLLATE "pg_catalog"."default",
  "update_time" timestamp(6) NOT NULL,
  "deleted" int2 NOT NULL DEFAULT 0,
  "tenant_id" int8 NOT NULL DEFAULT 0
)
;
COMMENT ON COLUMN "system_users"."id" IS '??????ID';
COMMENT ON COLUMN "system_users"."username" IS '????????????';
COMMENT ON COLUMN "system_users"."password" IS '??????';
COMMENT ON COLUMN "system_users"."nickname" IS '????????????';
COMMENT ON COLUMN "system_users"."remark" IS '??????';
COMMENT ON COLUMN "system_users"."dept_id" IS '??????ID';
COMMENT ON COLUMN "system_users"."post_ids" IS '??????????????????';
COMMENT ON COLUMN "system_users"."email" IS '????????????';
COMMENT ON COLUMN "system_users"."mobile" IS '????????????';
COMMENT ON COLUMN "system_users"."sex" IS '????????????';
COMMENT ON COLUMN "system_users"."avatar" IS '????????????';
COMMENT ON COLUMN "system_users"."status" IS '???????????????0?????? 1?????????';
COMMENT ON COLUMN "system_users"."login_ip" IS '????????????IP';
COMMENT ON COLUMN "system_users"."login_date" IS '??????????????????';
COMMENT ON COLUMN "system_users"."creator" IS '?????????';
COMMENT ON COLUMN "system_users"."create_time" IS '????????????';
COMMENT ON COLUMN "system_users"."updater" IS '?????????';
COMMENT ON COLUMN "system_users"."update_time" IS '????????????';
COMMENT ON COLUMN "system_users"."deleted" IS '????????????';
COMMENT ON COLUMN "system_users"."tenant_id" IS '????????????';
COMMENT ON TABLE "system_users" IS '???????????????';

-- ----------------------------
-- Records of system_users
-- ----------------------------
BEGIN;
INSERT INTO "system_users" ("id", "username", "password", "nickname", "remark", "dept_id", "post_ids", "email", "mobile", "sex", "avatar", "status", "login_ip", "login_date", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (100, 'gaia', '$2a$10$11U48RhyJ5pSBYWSn12AD./ld671.ycSzJHbyrtpeoMeYiw31eo8a', '??????', '????????????', 104, '[1]', 'gaia@iocoder.cn', '15601691300', 1, '', 1, '', NULL, '', '2021-01-07 09:07:17', '104', '2021-12-16 09:26:10', 0, 1);
INSERT INTO "system_users" ("id", "username", "password", "nickname", "remark", "dept_id", "post_ids", "email", "mobile", "sex", "avatar", "status", "login_ip", "login_date", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (103, 'yuanma', '$2a$10$wWoPT7sqriM2O1YXRL.je.GiL538OR6ZTN8aQZr9JAGdnpCH2tpYe', '??????', NULL, 106, NULL, 'yuanma@iocoder.cn', '15601701300', 0, '', 0, '127.0.0.1', '2022-01-18 00:33:40', '', '2021-01-13 23:50:35', NULL, '2022-01-18 00:33:40', 0, 1);
INSERT INTO "system_users" ("id", "username", "password", "nickname", "remark", "dept_id", "post_ids", "email", "mobile", "sex", "avatar", "status", "login_ip", "login_date", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (104, 'test', '$2a$10$e5RpuDCC0GYSt0Hvd2.CjujIXwgGct4SnXi6dVGxdgFsnqgEryk5a', '?????????', NULL, 107, '[]', '111@qq.com', '15601691200', 1, '', 0, '127.0.0.1', '2022-03-19 21:46:19', '', '2021-01-21 02:13:53', NULL, '2022-03-19 21:46:19', 0, 1);
INSERT INTO "system_users" ("id", "username", "password", "nickname", "remark", "dept_id", "post_ids", "email", "mobile", "sex", "avatar", "status", "login_ip", "login_date", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (107, 'admin107', '$2a$10$dYOOBKMO93v/.ReCqzyFg.o67Tqk.bbc2bhrpyBGkIw9aypCtr2pm', '??????', NULL, NULL, NULL, '', '15601691300', 0, '', 0, '', NULL, '1', '2022-02-20 22:59:33', '1', '2022-02-27 08:26:51', 0, 118);
INSERT INTO "system_users" ("id", "username", "password", "nickname", "remark", "dept_id", "post_ids", "email", "mobile", "sex", "avatar", "status", "login_ip", "login_date", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (108, 'admin108', '$2a$10$y6mfvKoNYL1GXWak8nYwVOH.kCWqjactkzdoIDgiKl93WN3Ejg.Lu', '??????', NULL, NULL, NULL, '', '15601691300', 0, '', 0, '', NULL, '1', '2022-02-20 23:00:50', '1', '2022-02-27 08:26:53', 0, 119);
INSERT INTO "system_users" ("id", "username", "password", "nickname", "remark", "dept_id", "post_ids", "email", "mobile", "sex", "avatar", "status", "login_ip", "login_date", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (109, 'admin109', '$2a$10$JAqvH0tEc0I7dfDVBI7zyuB4E3j.uH6daIjV53.vUS6PknFkDJkuK', '??????', NULL, NULL, NULL, '', '15601691300', 0, '', 0, '', NULL, '1', '2022-02-20 23:11:50', '1', '2022-02-27 08:26:56', 0, 120);
INSERT INTO "system_users" ("id", "username", "password", "nickname", "remark", "dept_id", "post_ids", "email", "mobile", "sex", "avatar", "status", "login_ip", "login_date", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (110, 'admin110', '$2a$10$qYxoXs0ogPHgYllyEneYde9xcCW5hZgukrxeXZ9lmLhKse8TK6IwW', '??????', NULL, NULL, NULL, '', '15601691300', 0, '', 0, '127.0.0.1', '2022-02-23 19:36:28', '1', '2022-02-22 00:56:14', NULL, '2022-02-27 08:26:59', 0, 121);
INSERT INTO "system_users" ("id", "username", "password", "nickname", "remark", "dept_id", "post_ids", "email", "mobile", "sex", "avatar", "status", "login_ip", "login_date", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (111, 'test', '$2a$10$mExveopHUx9Q4QiLtAzhDeH3n4/QlNLzEsM4AqgxKrU.ciUZDXZCy', '????????????', NULL, NULL, '[]', '', '', 0, '', 0, '', NULL, '110', '2022-02-23 13:14:33', '110', '2022-02-23 13:14:33', 0, 121);
INSERT INTO "system_users" ("id", "username", "password", "nickname", "remark", "dept_id", "post_ids", "email", "mobile", "sex", "avatar", "status", "login_ip", "login_date", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (112, 'newobject', '$2a$10$jh5MsR.ud/gKe3mVeUp5t.nEXGDSmHyv5OYjWQwHO8wlGmMSI9Twy', '?????????', NULL, NULL, '[]', '', '', 0, '', 0, '', NULL, '1', '2022-02-23 19:08:03', '1', '2022-02-23 19:08:03', 0, 1);
INSERT INTO "system_users" ("id", "username", "password", "nickname", "remark", "dept_id", "post_ids", "email", "mobile", "sex", "avatar", "status", "login_ip", "login_date", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (113, 'aoteman', '$2a$10$0acJOIk2D25/oC87nyclE..0lzeu9DtQ/n3geP4fkun/zIVRhHJIO', '??????', NULL, NULL, NULL, '', '15601691300', 0, '', 0, '127.0.0.1', '2022-03-19 18:38:51', '1', '2022-03-07 21:37:58', NULL, '2022-03-19 18:38:51', 0, 122);
INSERT INTO "system_users" ("id", "username", "password", "nickname", "remark", "dept_id", "post_ids", "email", "mobile", "sex", "avatar", "status", "login_ip", "login_date", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (114, 'hrmgr', '$2a$10$TR4eybBioGRhBmDBWkqWLO6NIh3mzYa8KBKDDB5woiGYFVlRAi.fu', 'hr ?????????', NULL, NULL, '[3]', '', '', 0, '', 0, '127.0.0.1', '2022-03-19 22:15:43', '1', '2022-03-19 21:50:58', NULL, '2022-03-19 22:15:43', 0, 1);
INSERT INTO "system_users" ("id", "username", "password", "nickname", "remark", "dept_id", "post_ids", "email", "mobile", "sex", "avatar", "status", "login_ip", "login_date", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (115, 'aotemane', '$2a$10$/WCwGHu1eq0wOVDd/u8HweJ0gJCHyLS6T7ndCqI8UXZAQom1etk2e', '1', '11', 100, '[]', '', '', 0, '', 0, '', NULL, '1', '2022-04-30 02:55:43', '1', '2022-04-30 02:55:43', 0, 1);
INSERT INTO "system_users" ("id", "username", "password", "nickname", "remark", "dept_id", "post_ids", "email", "mobile", "sex", "avatar", "status", "login_ip", "login_date", "creator", "create_time", "updater", "update_time", "deleted", "tenant_id") VALUES (1, 'admin', '$2a$10$0acJOIk2D25/oC87nyclE..0lzeu9DtQ/n3geP4fkun/zIVRhHJIO', '????????????', '?????????', 103, '[1]', 'aoteman@126.com', '15612345678', 1, 'http://test.gaia.iocoder.cn/48934f2f-92d4-4250-b917-d10d2b262c6a', 0, '127.0.0.1', '2022-05-25 23:44:33.003', 'admin', '2021-01-05 17:03:47', NULL, '2022-05-25 23:44:33.003', 0, 1);
COMMIT;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"bpm_oa_leave_seq"', 1, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"bpm_task_assign_rule_seq"', 1, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"infra_api_access_log_seq"', 537, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"infra_api_error_log_seq"', 73, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"infra_job_log_seq"', 1, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"infra_job_seq"', 2, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"system_error_code_seq"', 186, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"system_login_log_seq"', 23, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"system_oauth2_access_token_seq"', 11, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"system_oauth2_approve_seq"', 4, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"system_oauth2_client_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"system_oauth2_code_seq"', 4, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"system_oauth2_refresh_token_seq"', 1, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"system_operate_log_seq"', 44, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
SELECT setval('"system_sms_log_seq"', 1, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table bpm_form
-- ----------------------------
ALTER TABLE "bpm_form" ADD CONSTRAINT "bpm_form_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table bpm_oa_leave
-- ----------------------------
ALTER TABLE "bpm_oa_leave" ADD CONSTRAINT "bpm_oa_leave_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table bpm_process_definition_ext
-- ----------------------------
ALTER TABLE "bpm_process_definition_ext" ADD CONSTRAINT "bpm_process_definition_ext_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table bpm_process_instance_ext
-- ----------------------------
ALTER TABLE "bpm_process_instance_ext" ADD CONSTRAINT "bpm_process_instance_ext_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table bpm_task_assign_rule
-- ----------------------------
ALTER TABLE "bpm_task_assign_rule" ADD CONSTRAINT "bpm_task_assign_rule_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table bpm_task_ext
-- ----------------------------
ALTER TABLE "bpm_task_ext" ADD CONSTRAINT "bpm_task_ext_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table bpm_user_group
-- ----------------------------
ALTER TABLE "bpm_user_group" ADD CONSTRAINT "bpm_user_group_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table infra_api_access_log
-- ----------------------------
ALTER TABLE "infra_api_access_log" ADD CONSTRAINT "infra_api_access_log_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table infra_api_error_log
-- ----------------------------
ALTER TABLE "infra_api_error_log" ADD CONSTRAINT "infra_api_error_log_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table infra_codegen_column
-- ----------------------------
ALTER TABLE "infra_codegen_column" ADD CONSTRAINT "infra_codegen_column_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table infra_codegen_table
-- ----------------------------
ALTER TABLE "infra_codegen_table" ADD CONSTRAINT "infra_codegen_table_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table infra_config
-- ----------------------------
ALTER TABLE "infra_config" ADD CONSTRAINT "infra_config_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table infra_data_source_config
-- ----------------------------
ALTER TABLE "infra_data_source_config" ADD CONSTRAINT "infra_data_source_config_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table infra_file
-- ----------------------------
ALTER TABLE "infra_file" ADD CONSTRAINT "infra_file_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table infra_file_config
-- ----------------------------
ALTER TABLE "infra_file_config" ADD CONSTRAINT "infra_file_config_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table infra_file_content
-- ----------------------------
ALTER TABLE "infra_file_content" ADD CONSTRAINT "infra_file_content_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table infra_job
-- ----------------------------
ALTER TABLE "infra_job" ADD CONSTRAINT "infra_job_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table infra_job_log
-- ----------------------------
ALTER TABLE "infra_job_log" ADD CONSTRAINT "infra_job_log_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table infra_test_demo
-- ----------------------------
ALTER TABLE "infra_test_demo" ADD CONSTRAINT "infra_test_demo_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table member_user
-- ----------------------------
CREATE UNIQUE INDEX "uk_mobile" ON "member_user" USING btree (
  "mobile" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
COMMENT ON INDEX "uk_mobile" IS '?????????';

-- ----------------------------
-- Primary Key structure for table member_user
-- ----------------------------
ALTER TABLE "member_user" ADD CONSTRAINT "member_user_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pay_app
-- ----------------------------
ALTER TABLE "pay_app" ADD CONSTRAINT "pay_app_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pay_channel
-- ----------------------------
ALTER TABLE "pay_channel" ADD CONSTRAINT "pay_channel_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pay_merchant
-- ----------------------------
ALTER TABLE "pay_merchant" ADD CONSTRAINT "pay_merchant_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pay_notify_log
-- ----------------------------
ALTER TABLE "pay_notify_log" ADD CONSTRAINT "pay_notify_log_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pay_notify_task
-- ----------------------------
ALTER TABLE "pay_notify_task" ADD CONSTRAINT "pay_notify_task_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pay_order
-- ----------------------------
ALTER TABLE "pay_order" ADD CONSTRAINT "pay_order_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pay_order_extension
-- ----------------------------
ALTER TABLE "pay_order_extension" ADD CONSTRAINT "pay_order_extension_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table pay_refund
-- ----------------------------
ALTER TABLE "pay_refund" ADD CONSTRAINT "pay_refund_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table qrtz_blob_triggers
-- ----------------------------
ALTER TABLE "qrtz_blob_triggers" ADD CONSTRAINT "qrtz_blob_triggers_pkey" PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Primary Key structure for table qrtz_calendars
-- ----------------------------
ALTER TABLE "qrtz_calendars" ADD CONSTRAINT "qrtz_calendars_pkey" PRIMARY KEY ("sched_name", "calendar_name");

-- ----------------------------
-- Primary Key structure for table qrtz_cron_triggers
-- ----------------------------
ALTER TABLE "qrtz_cron_triggers" ADD CONSTRAINT "qrtz_cron_triggers_pkey" PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Indexes structure for table qrtz_fired_triggers
-- ----------------------------
CREATE INDEX "idx_qrtz_ft_inst_job_req_rcvry" ON "qrtz_fired_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "instance_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "requests_recovery" "pg_catalog"."bool_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_ft_j_g" ON "qrtz_fired_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "job_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "job_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_ft_jg" ON "qrtz_fired_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "job_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_ft_t_g" ON "qrtz_fired_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_ft_tg" ON "qrtz_fired_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_ft_trig_inst_name" ON "qrtz_fired_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "instance_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table qrtz_fired_triggers
-- ----------------------------
ALTER TABLE "qrtz_fired_triggers" ADD CONSTRAINT "qrtz_fired_triggers_pkey" PRIMARY KEY ("sched_name", "entry_id");

-- ----------------------------
-- Indexes structure for table qrtz_job_details
-- ----------------------------
CREATE INDEX "idx_qrtz_j_grp" ON "qrtz_job_details" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "job_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_j_req_recovery" ON "qrtz_job_details" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "requests_recovery" "pg_catalog"."bool_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table qrtz_job_details
-- ----------------------------
ALTER TABLE "qrtz_job_details" ADD CONSTRAINT "qrtz_job_details_pkey" PRIMARY KEY ("sched_name", "job_name", "job_group");

-- ----------------------------
-- Primary Key structure for table qrtz_locks
-- ----------------------------
ALTER TABLE "qrtz_locks" ADD CONSTRAINT "qrtz_locks_pkey" PRIMARY KEY ("sched_name", "lock_name");

-- ----------------------------
-- Primary Key structure for table qrtz_paused_trigger_grps
-- ----------------------------
ALTER TABLE "qrtz_paused_trigger_grps" ADD CONSTRAINT "qrtz_paused_trigger_grps_pkey" PRIMARY KEY ("sched_name", "trigger_group");

-- ----------------------------
-- Primary Key structure for table qrtz_scheduler_state
-- ----------------------------
ALTER TABLE "qrtz_scheduler_state" ADD CONSTRAINT "qrtz_scheduler_state_pkey" PRIMARY KEY ("sched_name", "instance_name");

-- ----------------------------
-- Primary Key structure for table qrtz_simple_triggers
-- ----------------------------
ALTER TABLE "qrtz_simple_triggers" ADD CONSTRAINT "qrtz_simple_triggers_pkey" PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Primary Key structure for table qrtz_simprop_triggers
-- ----------------------------
ALTER TABLE "qrtz_simprop_triggers" ADD CONSTRAINT "qrtz_simprop_triggers_pkey" PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Indexes structure for table qrtz_triggers
-- ----------------------------
CREATE INDEX "idx_qrtz_t_c" ON "qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "calendar_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_g" ON "qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_j" ON "qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "job_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "job_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_jg" ON "qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "job_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_n_g_state" ON "qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_state" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_n_state" ON "qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_state" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_next_fire_time" ON "qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "next_fire_time" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_nft_misfire" ON "qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "misfire_instr" "pg_catalog"."int2_ops" ASC NULLS LAST,
  "next_fire_time" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_nft_st" ON "qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_state" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "next_fire_time" "pg_catalog"."int8_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_nft_st_misfire" ON "qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "misfire_instr" "pg_catalog"."int2_ops" ASC NULLS LAST,
  "next_fire_time" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "trigger_state" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_nft_st_misfire_grp" ON "qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "misfire_instr" "pg_catalog"."int2_ops" ASC NULLS LAST,
  "next_fire_time" "pg_catalog"."int8_ops" ASC NULLS LAST,
  "trigger_group" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_state" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_qrtz_t_state" ON "qrtz_triggers" USING btree (
  "sched_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "trigger_state" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table qrtz_triggers
-- ----------------------------
ALTER TABLE "qrtz_triggers" ADD CONSTRAINT "qrtz_triggers_pkey" PRIMARY KEY ("sched_name", "trigger_name", "trigger_group");

-- ----------------------------
-- Primary Key structure for table system_dept
-- ----------------------------
ALTER TABLE "system_dept" ADD CONSTRAINT "system_dept_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table system_dict_data
-- ----------------------------
ALTER TABLE "system_dict_data" ADD CONSTRAINT "system_dict_data_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table system_dict_type
-- ----------------------------
CREATE UNIQUE INDEX "dict_type" ON "system_dict_type" USING btree (
  "type" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table system_dict_type
-- ----------------------------
ALTER TABLE "system_dict_type" ADD CONSTRAINT "system_dict_type_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table system_error_code
-- ----------------------------
ALTER TABLE "system_error_code" ADD CONSTRAINT "system_error_code_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table system_login_log
-- ----------------------------
ALTER TABLE "system_login_log" ADD CONSTRAINT "system_login_log_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table system_menu
-- ----------------------------
ALTER TABLE "system_menu" ADD CONSTRAINT "system_menu_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table system_notice
-- ----------------------------
ALTER TABLE "system_notice" ADD CONSTRAINT "system_notice_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table system_oauth2_access_token
-- ----------------------------
ALTER TABLE "system_oauth2_access_token" ADD CONSTRAINT "system_oauth2_access_token_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table system_oauth2_approve
-- ----------------------------
ALTER TABLE "system_oauth2_approve" ADD CONSTRAINT "system_oauth2_approve_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table system_oauth2_client
-- ----------------------------
ALTER TABLE "system_oauth2_client" ADD CONSTRAINT "system_oauth2_client_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table system_oauth2_code
-- ----------------------------
ALTER TABLE "system_oauth2_code" ADD CONSTRAINT "system_oauth2_code_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table system_oauth2_refresh_token
-- ----------------------------
ALTER TABLE "system_oauth2_refresh_token" ADD CONSTRAINT "system_oauth2_refresh_token_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table system_operate_log
-- ----------------------------
ALTER TABLE "system_operate_log" ADD CONSTRAINT "system_operate_log_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table system_post
-- ----------------------------
ALTER TABLE "system_post" ADD CONSTRAINT "system_post_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table system_role
-- ----------------------------
ALTER TABLE "system_role" ADD CONSTRAINT "system_role_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table system_role_menu
-- ----------------------------
ALTER TABLE "system_role_menu" ADD CONSTRAINT "system_role_menu_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table system_sensitive_word
-- ----------------------------
ALTER TABLE "system_sensitive_word" ADD CONSTRAINT "system_sensitive_word_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table system_sms_channel
-- ----------------------------
ALTER TABLE "system_sms_channel" ADD CONSTRAINT "system_sms_channel_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table system_sms_code
-- ----------------------------
CREATE INDEX "idx_mobile" ON "system_sms_code" USING btree (
  "mobile" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
COMMENT ON INDEX "idx_mobile" IS '?????????';

-- ----------------------------
-- Primary Key structure for table system_sms_code
-- ----------------------------
ALTER TABLE "system_sms_code" ADD CONSTRAINT "system_sms_code_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table system_sms_log
-- ----------------------------
ALTER TABLE "system_sms_log" ADD CONSTRAINT "system_sms_log_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table system_sms_template
-- ----------------------------
ALTER TABLE "system_sms_template" ADD CONSTRAINT "system_sms_template_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table system_social_user
-- ----------------------------
ALTER TABLE "system_social_user" ADD CONSTRAINT "system_social_user_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table system_social_user_bind
-- ----------------------------
ALTER TABLE "system_social_user_bind" ADD CONSTRAINT "system_social_user_bind_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table system_tenant
-- ----------------------------
ALTER TABLE "system_tenant" ADD CONSTRAINT "system_tenant_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table system_tenant_package
-- ----------------------------
ALTER TABLE "system_tenant_package" ADD CONSTRAINT "system_tenant_package_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table system_user_post
-- ----------------------------
ALTER TABLE "system_user_post" ADD CONSTRAINT "system_user_post_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table system_user_role
-- ----------------------------
ALTER TABLE "system_user_role" ADD CONSTRAINT "system_user_role_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table system_users
-- ----------------------------
CREATE UNIQUE INDEX "idx_username" ON "system_users" USING btree (
  "username" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "update_time" "pg_catalog"."timestamp_ops" ASC NULLS LAST,
  "tenant_id" "pg_catalog"."int8_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table system_users
-- ----------------------------
ALTER TABLE "system_users" ADD CONSTRAINT "system_user_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table qrtz_blob_triggers
-- ----------------------------
ALTER TABLE "qrtz_blob_triggers" ADD CONSTRAINT "qrtz_blob_triggers_sched_name_trigger_name_trigger_group_fkey" FOREIGN KEY ("sched_name", "trigger_name", "trigger_group") REFERENCES "qrtz_triggers" ("sched_name", "trigger_name", "trigger_group") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table qrtz_cron_triggers
-- ----------------------------
ALTER TABLE "qrtz_cron_triggers" ADD CONSTRAINT "qrtz_cron_triggers_sched_name_trigger_name_trigger_group_fkey" FOREIGN KEY ("sched_name", "trigger_name", "trigger_group") REFERENCES "qrtz_triggers" ("sched_name", "trigger_name", "trigger_group") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table qrtz_simple_triggers
-- ----------------------------
ALTER TABLE "qrtz_simple_triggers" ADD CONSTRAINT "qrtz_simple_triggers_sched_name_trigger_name_trigger_group_fkey" FOREIGN KEY ("sched_name", "trigger_name", "trigger_group") REFERENCES "qrtz_triggers" ("sched_name", "trigger_name", "trigger_group") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table qrtz_simprop_triggers
-- ----------------------------
ALTER TABLE "qrtz_simprop_triggers" ADD CONSTRAINT "qrtz_simprop_triggers_sched_name_trigger_name_trigger_grou_fkey" FOREIGN KEY ("sched_name", "trigger_name", "trigger_group") REFERENCES "qrtz_triggers" ("sched_name", "trigger_name", "trigger_group") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table qrtz_triggers
-- ----------------------------
ALTER TABLE "qrtz_triggers" ADD CONSTRAINT "qrtz_triggers_sched_name_job_name_job_group_fkey" FOREIGN KEY ("sched_name", "job_name", "job_group") REFERENCES "qrtz_job_details" ("sched_name", "job_name", "job_group") ON DELETE NO ACTION ON UPDATE NO ACTION;
