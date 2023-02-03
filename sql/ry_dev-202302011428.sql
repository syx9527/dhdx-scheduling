/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80028 (8.0.28)
 Source Host           : 127.0.0.1:3306
 Source Schema         : ry-vue

 Target Server Type    : MySQL
 Target Server Version : 80028 (8.0.28)
 File Encoding         : 65001

 Date: 01/02/2023 14:28:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'sys_config', '参数配置表', NULL, NULL, 'SysConfig', 'crud', 'com.ruoyi.system', 'system', 'config', '参数配置', 'ruoyi', '0', '/', NULL, 'admin', '2023-01-18 16:17:19', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (2, 'sys_dept', '部门表', NULL, NULL, 'SysDept', 'crud', 'com.ruoyi.system', 'system', 'dept', '部门', 'ruoyi', '0', '/', NULL, 'admin', '2023-01-18 16:17:19', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (3, 'sys_dict_data', '字典数据表', NULL, NULL, 'SysDictData', 'crud', 'com.ruoyi.system', 'system', 'data', '字典数据', 'ruoyi', '0', '/', NULL, 'admin', '2023-01-18 16:17:20', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (4, 'sys_dict_type', '字典类型表', NULL, NULL, 'SysDictType', 'crud', 'com.ruoyi.system', 'system', 'type', '字典类型', 'ruoyi', '0', '/', NULL, 'admin', '2023-01-18 16:17:20', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (5, 'sys_job', '定时任务调度表', NULL, NULL, 'SysJob', 'crud', 'com.ruoyi.system', 'system', 'job', '定时任务调度', 'ruoyi', '0', '/', NULL, 'admin', '2023-01-18 16:17:20', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (6, 'sys_job_log', '定时任务调度日志表', NULL, NULL, 'SysJobLog', 'crud', 'com.ruoyi.system', 'system', 'log', '定时任务调度日志', 'ruoyi', '0', '/', NULL, 'admin', '2023-01-18 16:17:20', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (7, 'sys_logininfor', '系统访问记录', NULL, NULL, 'SysLogininfor', 'crud', 'com.ruoyi.system', 'system', 'logininfor', '系统访问记录', 'ruoyi', '0', '/', NULL, 'admin', '2023-01-18 16:17:20', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (8, 'sys_menu', '菜单权限表', NULL, NULL, 'SysMenu', 'crud', 'com.ruoyi.system', 'system', 'menu', '菜单权限', 'ruoyi', '0', '/', NULL, 'admin', '2023-01-18 16:17:20', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (9, 'sys_notice', '通知公告表', NULL, NULL, 'SysNotice', 'crud', 'com.ruoyi.system', 'system', 'notice', '通知公告', 'ruoyi', '0', '/', NULL, 'admin', '2023-01-18 16:17:20', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (10, 'sys_oper_log', '操作日志记录', NULL, NULL, 'SysOperLog', 'crud', 'com.ruoyi.system', 'system', 'log', '操作日志记录', 'ruoyi', '0', '/', NULL, 'admin', '2023-01-18 16:17:20', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (11, 'sys_post', '岗位信息表', NULL, NULL, 'SysPost', 'crud', 'com.ruoyi.system', 'system', 'post', '岗位信息', 'ruoyi', '0', '/', NULL, 'admin', '2023-01-18 16:17:20', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (12, 'sys_role', '角色信息表', NULL, NULL, 'SysRole', 'crud', 'com.ruoyi.system', 'system', 'role', '角色信息', 'ruoyi', '0', '/', NULL, 'admin', '2023-01-18 16:17:20', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (13, 'sys_role_dept', '角色和部门关联表', NULL, NULL, 'SysRoleDept', 'crud', 'com.ruoyi.system', 'system', 'dept', '角色和部门关联', 'ruoyi', '0', '/', NULL, 'admin', '2023-01-18 16:17:20', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (14, 'sys_role_menu', '角色和菜单关联表', NULL, NULL, 'SysRoleMenu', 'crud', 'com.ruoyi.system', 'system', 'menu', '角色和菜单关联', 'ruoyi', '0', '/', NULL, 'admin', '2023-01-18 16:17:20', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (15, 'sys_user', '用户信息表', NULL, NULL, 'SysUser', 'crud', 'com.ruoyi.system', 'system', 'user', '用户信息', 'ruoyi', '0', '/', NULL, 'admin', '2023-01-18 16:17:20', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (16, 'sys_user_post', '用户与岗位关联表', NULL, NULL, 'SysUserPost', 'crud', 'com.ruoyi.system', 'system', 'post', '用户与岗位关联', 'ruoyi', '0', '/', NULL, 'admin', '2023-01-18 16:17:20', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (17, 'sys_user_role', '用户和角色关联表', NULL, NULL, 'SysUserRole', 'crud', 'com.ruoyi.system', 'system', 'role', '用户和角色关联', 'ruoyi', '0', '/', NULL, 'admin', '2023-01-18 16:17:20', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (34, 'sys_duty', '值班类型', NULL, NULL, 'SysDuty', 'crud', 'com.ruoyi.duty', 'duty', 'duty', '值班类型', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2060\"}', 'admin', '2023-01-29 23:26:35', '', '2023-01-30 00:03:29', NULL);
INSERT INTO `gen_table` VALUES (35, 'sys_duty_log', '值班记录', NULL, NULL, 'SysDutyLog', 'crud', 'com.ruoyi.duty', 'duty', 'duty_log', '值班记录', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2060\"}', 'admin', '2023-01-29 23:26:35', '', '2023-01-29 23:38:59', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 364 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, '1', 'config_id', '参数主键', 'int', 'Long', 'configId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-01-18 16:17:19', '', NULL);
INSERT INTO `gen_table_column` VALUES (2, '1', 'config_name', '参数名称', 'varchar(100)', 'String', 'configName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-01-18 16:17:19', '', NULL);
INSERT INTO `gen_table_column` VALUES (3, '1', 'config_key', '参数键名', 'varchar(100)', 'String', 'configKey', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-01-18 16:17:19', '', NULL);
INSERT INTO `gen_table_column` VALUES (4, '1', 'config_value', '参数键值', 'varchar(500)', 'String', 'configValue', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 4, 'admin', '2023-01-18 16:17:19', '', NULL);
INSERT INTO `gen_table_column` VALUES (5, '1', 'config_type', '系统内置（Y是 N否）', 'char(1)', 'String', 'configType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 5, 'admin', '2023-01-18 16:17:19', '', NULL);
INSERT INTO `gen_table_column` VALUES (6, '1', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2023-01-18 16:17:19', '', NULL);
INSERT INTO `gen_table_column` VALUES (7, '1', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2023-01-18 16:17:19', '', NULL);
INSERT INTO `gen_table_column` VALUES (8, '1', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2023-01-18 16:17:19', '', NULL);
INSERT INTO `gen_table_column` VALUES (9, '1', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2023-01-18 16:17:19', '', NULL);
INSERT INTO `gen_table_column` VALUES (10, '1', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 10, 'admin', '2023-01-18 16:17:19', '', NULL);
INSERT INTO `gen_table_column` VALUES (11, '2', 'dept_id', '部门id', 'bigint', 'Long', 'deptId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-01-18 16:17:19', '', NULL);
INSERT INTO `gen_table_column` VALUES (12, '2', 'parent_id', '父部门id', 'bigint', 'Long', 'parentId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-01-18 16:17:19', '', NULL);
INSERT INTO `gen_table_column` VALUES (13, '2', 'ancestors', '祖级列表', 'varchar(50)', 'String', 'ancestors', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-01-18 16:17:19', '', NULL);
INSERT INTO `gen_table_column` VALUES (14, '2', 'dept_name', '部门名称', 'varchar(30)', 'String', 'deptName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2023-01-18 16:17:19', '', NULL);
INSERT INTO `gen_table_column` VALUES (15, '2', 'order_num', '显示顺序', 'int', 'Long', 'orderNum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-01-18 16:17:19', '', NULL);
INSERT INTO `gen_table_column` VALUES (16, '2', 'leader', '负责人', 'varchar(20)', 'String', 'leader', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-01-18 16:17:19', '', NULL);
INSERT INTO `gen_table_column` VALUES (17, '2', 'phone', '联系电话', 'varchar(11)', 'String', 'phone', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-01-18 16:17:19', '', NULL);
INSERT INTO `gen_table_column` VALUES (18, '2', 'email', '邮箱', 'varchar(50)', 'String', 'email', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (19, '2', 'status', '部门状态（0正常 1停用）', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 9, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (20, '2', 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (21, '2', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (22, '2', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (23, '2', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (24, '2', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 14, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (25, '3', 'dict_code', '字典编码', 'bigint', 'Long', 'dictCode', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (26, '3', 'dict_sort', '字典排序', 'int', 'Long', 'dictSort', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (27, '3', 'dict_label', '字典标签', 'varchar(100)', 'String', 'dictLabel', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (28, '3', 'dict_value', '字典键值', 'varchar(100)', 'String', 'dictValue', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (29, '3', 'dict_type', '字典类型', 'varchar(100)', 'String', 'dictType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 5, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (30, '3', 'css_class', '样式属性（其他样式扩展）', 'varchar(100)', 'String', 'cssClass', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (31, '3', 'list_class', '表格回显样式', 'varchar(100)', 'String', 'listClass', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (32, '3', 'is_default', '是否默认（Y是 N否）', 'char(1)', 'String', 'isDefault', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (33, '3', 'status', '状态（0正常 1停用）', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 9, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (34, '3', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (35, '3', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (36, '3', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (37, '3', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (38, '3', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 14, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (39, '4', 'dict_id', '字典主键', 'bigint', 'Long', 'dictId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (40, '4', 'dict_name', '字典名称', 'varchar(100)', 'String', 'dictName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (41, '4', 'dict_type', '字典类型', 'varchar(100)', 'String', 'dictType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (42, '4', 'status', '状态（0正常 1停用）', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 4, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (43, '4', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 5, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (44, '4', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (45, '4', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (46, '4', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (47, '4', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 9, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (48, '5', 'job_id', '任务ID', 'bigint', 'Long', 'jobId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (49, '5', 'job_name', '任务名称', 'varchar(64)', 'String', 'jobName', '1', '0', NULL, '1', NULL, NULL, NULL, 'LIKE', 'input', '', 2, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (50, '5', 'job_group', '任务组名', 'varchar(64)', 'String', 'jobGroup', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 3, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (51, '5', 'invoke_target', '调用目标字符串', 'varchar(500)', 'String', 'invokeTarget', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 4, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (52, '5', 'cron_expression', 'cron执行表达式', 'varchar(255)', 'String', 'cronExpression', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (53, '5', 'misfire_policy', '计划执行错误策略（1立即执行 2执行一次 3放弃执行）', 'varchar(20)', 'String', 'misfirePolicy', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (54, '5', 'concurrent', '是否并发执行（0允许 1禁止）', 'char(1)', 'String', 'concurrent', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (55, '5', 'status', '状态（0正常 1暂停）', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 8, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (56, '5', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (57, '5', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (58, '5', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (59, '5', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (60, '5', 'remark', '备注信息', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 13, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (61, '6', 'job_log_id', '任务日志ID', 'bigint', 'Long', 'jobLogId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (62, '6', 'job_name', '任务名称', 'varchar(64)', 'String', 'jobName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (63, '6', 'job_group', '任务组名', 'varchar(64)', 'String', 'jobGroup', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (64, '6', 'invoke_target', '调用目标字符串', 'varchar(500)', 'String', 'invokeTarget', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 4, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (65, '6', 'job_message', '日志信息', 'varchar(500)', 'String', 'jobMessage', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 5, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (66, '6', 'status', '执行状态（0正常 1失败）', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 6, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (67, '6', 'exception_info', '异常信息', 'varchar(2000)', 'String', 'exceptionInfo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 7, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (68, '6', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (69, '7', 'info_id', '访问ID', 'bigint', 'Long', 'infoId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (70, '7', 'user_name', '用户账号', 'varchar(50)', 'String', 'userName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (71, '7', 'ipaddr', '登录IP地址', 'varchar(128)', 'String', 'ipaddr', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (72, '7', 'login_location', '登录地点', 'varchar(255)', 'String', 'loginLocation', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (73, '7', 'browser', '浏览器类型', 'varchar(50)', 'String', 'browser', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (74, '7', 'os', '操作系统', 'varchar(50)', 'String', 'os', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (75, '7', 'status', '登录状态（0成功 1失败）', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 7, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (76, '7', 'msg', '提示消息', 'varchar(255)', 'String', 'msg', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (77, '7', 'login_time', '访问时间', 'datetime', 'Date', 'loginTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 9, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (78, '8', 'menu_id', '菜单ID', 'bigint', 'Long', 'menuId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (79, '8', 'menu_name', '菜单名称', 'varchar(50)', 'String', 'menuName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (80, '8', 'parent_id', '父菜单ID', 'bigint', 'Long', 'parentId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (81, '8', 'order_num', '显示顺序', 'int', 'Long', 'orderNum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (82, '8', 'path', '路由地址', 'varchar(200)', 'String', 'path', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (83, '8', 'component', '组件路径', 'varchar(255)', 'String', 'component', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (84, '8', 'query', '路由参数', 'varchar(255)', 'String', 'query', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (85, '8', 'is_frame', '是否为外链（0是 1否）', 'int', 'Long', 'isFrame', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (86, '8', 'is_cache', '是否缓存（0缓存 1不缓存）', 'int', 'Long', 'isCache', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (87, '8', 'menu_type', '菜单类型（M目录 C菜单 F按钮）', 'char(1)', 'String', 'menuType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 10, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (88, '8', 'visible', '菜单状态（0显示 1隐藏）', 'char(1)', 'String', 'visible', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (89, '8', 'status', '菜单状态（0正常 1停用）', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 12, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (90, '8', 'perms', '权限标识', 'varchar(100)', 'String', 'perms', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (91, '8', 'icon', '菜单图标', 'varchar(100)', 'String', 'icon', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (92, '8', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 15, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (93, '8', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 16, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (94, '8', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 17, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (95, '8', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 18, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (96, '8', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 19, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (97, '9', 'notice_id', '公告ID', 'int', 'Long', 'noticeId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (98, '9', 'notice_title', '公告标题', 'varchar(50)', 'String', 'noticeTitle', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (99, '9', 'notice_type', '公告类型（1通知 2公告）', 'char(1)', 'String', 'noticeType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (100, '9', 'notice_content', '公告内容', 'longblob', 'String', 'noticeContent', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'editor', '', 4, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (101, '9', 'status', '公告状态（0正常 1关闭）', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 5, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (102, '9', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (103, '9', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (104, '9', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (105, '9', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (106, '9', 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 10, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (107, '10', 'oper_id', '日志主键', 'bigint', 'Long', 'operId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (108, '10', 'title', '模块标题', 'varchar(50)', 'String', 'title', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (109, '10', 'business_type', '业务类型（0其它 1新增 2修改 3删除）', 'int', 'Long', 'businessType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (110, '10', 'method', '方法名称', 'varchar(100)', 'String', 'method', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (111, '10', 'request_method', '请求方式', 'varchar(10)', 'String', 'requestMethod', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (112, '10', 'operator_type', '操作类别（0其它 1后台用户 2手机端用户）', 'int', 'Long', 'operatorType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 6, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (113, '10', 'oper_name', '操作人员', 'varchar(50)', 'String', 'operName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 7, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (114, '10', 'dept_name', '部门名称', 'varchar(50)', 'String', 'deptName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 8, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (115, '10', 'oper_url', '请求URL', 'varchar(255)', 'String', 'operUrl', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (116, '10', 'oper_ip', '主机地址', 'varchar(128)', 'String', 'operIp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (117, '10', 'oper_location', '操作地点', 'varchar(255)', 'String', 'operLocation', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (118, '10', 'oper_param', '请求参数', 'varchar(2000)', 'String', 'operParam', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 12, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (119, '10', 'json_result', '返回参数', 'varchar(2000)', 'String', 'jsonResult', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 13, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (120, '10', 'status', '操作状态（0正常 1异常）', 'int', 'Long', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 14, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (121, '10', 'error_msg', '错误消息', 'varchar(2000)', 'String', 'errorMsg', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 15, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (122, '10', 'oper_time', '操作时间', 'datetime', 'Date', 'operTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 16, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (123, '11', 'post_id', '岗位ID', 'bigint', 'Long', 'postId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (124, '11', 'post_code', '岗位编码', 'varchar(64)', 'String', 'postCode', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (125, '11', 'post_name', '岗位名称', 'varchar(50)', 'String', 'postName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (126, '11', 'post_sort', '显示顺序', 'int', 'Long', 'postSort', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (127, '11', 'status', '状态（0正常 1停用）', 'char(1)', 'String', 'status', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', '', 5, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (128, '11', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (129, '11', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (130, '11', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (131, '11', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (132, '11', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 10, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (133, '12', 'role_id', '角色ID', 'bigint', 'Long', 'roleId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (134, '12', 'role_name', '角色名称', 'varchar(30)', 'String', 'roleName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (135, '12', 'role_key', '角色权限字符串', 'varchar(100)', 'String', 'roleKey', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (136, '12', 'role_sort', '显示顺序', 'int', 'Long', 'roleSort', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (137, '12', 'data_scope', '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）', 'char(1)', 'String', 'dataScope', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (138, '12', 'menu_check_strictly', '菜单树选择项是否关联显示', 'tinyint(1)', 'Integer', 'menuCheckStrictly', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (139, '12', 'dept_check_strictly', '部门树选择项是否关联显示', 'tinyint(1)', 'Integer', 'deptCheckStrictly', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (140, '12', 'status', '角色状态（0正常 1停用）', 'char(1)', 'String', 'status', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', '', 8, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (141, '12', 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (142, '12', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (143, '12', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (144, '12', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (145, '12', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (146, '12', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 14, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (147, '13', 'role_id', '角色ID', 'bigint', 'Long', 'roleId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (148, '13', 'dept_id', '部门ID', 'bigint', 'Long', 'deptId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 2, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (149, '14', 'role_id', '角色ID', 'bigint', 'Long', 'roleId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (150, '14', 'menu_id', '菜单ID', 'bigint', 'Long', 'menuId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 2, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (151, '15', 'user_id', '用户ID', 'bigint', 'Long', 'userId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (152, '15', 'dept_id', '部门ID', 'bigint', 'Long', 'deptId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (153, '15', 'user_name', '用户账号', 'varchar(30)', 'String', 'userName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (154, '15', 'nick_name', '用户昵称', 'varchar(30)', 'String', 'nickName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (155, '15', 'user_type', '用户类型（00系统用户）', 'varchar(2)', 'String', 'userType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 5, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (156, '15', 'email', '用户邮箱', 'varchar(50)', 'String', 'email', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (157, '15', 'phonenumber', '手机号码', 'varchar(11)', 'String', 'phonenumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (158, '15', 'sex', '用户性别（0男 1女 2未知）', 'char(1)', 'String', 'sex', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 8, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (159, '15', 'avatar', '头像地址', 'varchar(100)', 'String', 'avatar', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (160, '15', 'password', '密码', 'varchar(100)', 'String', 'password', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (161, '15', 'status', '帐号状态（0正常 1停用）', 'char(1)', 'String', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 11, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (162, '15', 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (163, '15', 'login_ip', '最后登录IP', 'varchar(128)', 'String', 'loginIp', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (164, '15', 'login_date', '最后登录时间', 'datetime', 'Date', 'loginDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 14, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (165, '15', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 15, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (166, '15', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 16, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (167, '15', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 17, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (168, '15', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 18, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (169, '15', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 19, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (170, '16', 'user_id', '用户ID', 'bigint', 'Long', 'userId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (171, '16', 'post_id', '岗位ID', 'bigint', 'Long', 'postId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 2, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (172, '17', 'user_id', '用户ID', 'bigint', 'Long', 'userId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (173, '17', 'role_id', '角色ID', 'bigint', 'Long', 'roleId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 2, 'admin', '2023-01-18 16:17:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (347, '34', 'duty_id', 'id', 'int', 'Long', 'dutyId', '1', '1', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 1, 'admin', '2023-01-29 23:26:35', '', '2023-01-30 00:03:29');
INSERT INTO `gen_table_column` VALUES (348, '34', 'duty_type', '值班类型', 'varchar(255)', 'String', 'dutyType', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'select', '', 2, 'admin', '2023-01-29 23:26:35', '', '2023-01-30 00:03:29');
INSERT INTO `gen_table_column` VALUES (349, '34', 'duty_sort', '显示顺序', 'int', 'Long', 'dutySort', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-01-29 23:26:35', '', '2023-01-30 00:03:29');
INSERT INTO `gen_table_column` VALUES (350, '34', 'create_by', '创建者', 'int', 'Long', 'createBy', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2023-01-29 23:26:35', '', '2023-01-30 00:03:29');
INSERT INTO `gen_table_column` VALUES (351, '34', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', '1', '1', '1', 'BETWEEN', 'datetime', '', 5, 'admin', '2023-01-29 23:26:35', '', '2023-01-30 00:03:29');
INSERT INTO `gen_table_column` VALUES (352, '34', 'update_by', '更新者', 'int', 'Long', 'updateBy', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-01-29 23:26:35', '', '2023-01-30 00:03:29');
INSERT INTO `gen_table_column` VALUES (353, '34', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', '1', '1', 'BETWEEN', 'datetime', '', 7, 'admin', '2023-01-29 23:26:35', '', '2023-01-30 00:03:29');
INSERT INTO `gen_table_column` VALUES (354, '34', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'textarea', '', 8, 'admin', '2023-01-29 23:26:35', '', '2023-01-30 00:03:29');
INSERT INTO `gen_table_column` VALUES (355, '35', 'log_id', '值班日志主键', 'bigint', 'Long', 'logId', '1', '1', NULL, '0', NULL, NULL, '1', 'EQ', 'input', '', 1, 'admin', '2023-01-29 23:26:35', '', '2023-01-29 23:38:59');
INSERT INTO `gen_table_column` VALUES (356, '35', 'duty_id', '值班类型id', 'int', 'Long', 'dutyId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', '', 2, 'admin', '2023-01-29 23:26:35', '', '2023-01-29 23:38:59');
INSERT INTO `gen_table_column` VALUES (357, '35', 'duty_name', '值班类型名称', 'varchar(64)', 'String', 'dutyName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'radio', '', 3, 'admin', '2023-01-29 23:26:35', '', '2023-01-29 23:38:59');
INSERT INTO `gen_table_column` VALUES (358, '35', 'user_id', '值班人员ID', 'int', 'Long', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', '', 4, 'admin', '2023-01-29 23:26:35', '', '2023-01-29 23:38:59');
INSERT INTO `gen_table_column` VALUES (359, '35', 'user_name', '值班人员姓名', 'varchar(50)', 'String', 'userName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'radio', '', 5, 'admin', '2023-01-29 23:26:35', '', '2023-01-29 23:38:59');
INSERT INTO `gen_table_column` VALUES (360, '35', 'dept_id', '部门id', 'int', 'Long', 'deptId', '0', '0', '0', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-01-29 23:26:35', '', '2023-01-29 23:38:59');
INSERT INTO `gen_table_column` VALUES (361, '35', 'dept_name', '部门名称', 'varchar(50)', 'String', 'deptName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 7, 'admin', '2023-01-29 23:26:35', '', '2023-01-29 23:38:59');
INSERT INTO `gen_table_column` VALUES (362, '35', 'start_time', '值班开始时间', 'datetime', 'Date', 'startTime', '0', '0', '1', '1', '1', '1', '1', 'BETWEEN', 'datetime', '', 8, 'admin', '2023-01-29 23:26:35', '', '2023-01-29 23:38:59');
INSERT INTO `gen_table_column` VALUES (363, '35', 'end_time', '值班结束时间', 'datetime', 'Date', 'endTime', '0', '0', '1', '1', '1', '1', '1', 'BETWEEN', 'datetime', '', 9, 'admin', '2023-01-29 23:26:35', '', '2023-01-29 23:38:59');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '日历信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '已触发的触发器表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '任务详细信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '暂停的触发器表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '调度器状态表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name` ASC, `job_name` ASC, `job_group` ASC) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '触发器详细信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for sys_address
-- ----------------------------
DROP TABLE IF EXISTS `sys_address`;
CREATE TABLE `sys_address`  (
  `address_id` int NOT NULL AUTO_INCREMENT COMMENT '地址id',
  `address_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址名称',
  `adrress_local` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址位置',
  PRIMARY KEY (`address_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '地址' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_address
-- ----------------------------
INSERT INTO `sys_address` VALUES (1, '北站', '13123');
INSERT INTO `sys_address` VALUES (2, '州医院', '160.9,9.5360');
INSERT INTO `sys_address` VALUES (6, '天河区天河路950号', '-11.544,90.0000');
INSERT INTO `sys_address` VALUES (7, '黄浦区淮海中路283号', '10.6807,-05.0762');
INSERT INTO `sys_address` VALUES (8, '福田区深南大道449号', '-19.21,-29.35');
INSERT INTO `sys_address` VALUES (9, '福田区景田东一街227号', '180.0000,-75.286');
INSERT INTO `sys_address` VALUES (10, '罗湖区田贝一路2号', '056.51925,5.0879');
INSERT INTO `sys_address` VALUES (11, '天河区大信商圈大信南路165号', '-180.0,-1.78');
INSERT INTO `sys_address` VALUES (12, '西城区复兴门内大街166号', '-180.000,-90.000');
INSERT INTO `sys_address` VALUES (13, '龙岗区学园一巷356号', '180.000,90.0000');
INSERT INTO `sys_address` VALUES (14, '越秀区中山二路304号', '11.33554,-90.000');
INSERT INTO `sys_address` VALUES (15, '天河区大信商圈大信南路694号', '04.08,3.1');
INSERT INTO `sys_address` VALUES (16, '锦江区红星路三段684号', '-12.328,-90.00000');
INSERT INTO `sys_address` VALUES (17, '黄浦区淮海中路368号', '-9.7,90.000');
INSERT INTO `sys_address` VALUES (18, '京华商圈华夏街862号', '11.46,28.0');
INSERT INTO `sys_address` VALUES (19, '福田区景田东一街379号', '-180.0000,90.00000');
INSERT INTO `sys_address` VALUES (20, '白云区机场路棠苑街五巷822号', '-117.3,90.00000');
INSERT INTO `sys_address` VALUES (21, '天河区大信商圈大信南路155号', '-180.000,90.00000');
INSERT INTO `sys_address` VALUES (22, '浦东新区橄榄路76号', '137.7423,87.9433');
INSERT INTO `sys_address` VALUES (23, '环区南街二巷538号', '034.724,90.00000');
INSERT INTO `sys_address` VALUES (24, '龙岗区学园一巷163号', '-180.00000,44.64');
INSERT INTO `sys_address` VALUES (25, '海淀区清河中街68号560号', '16.4,90.00000');
INSERT INTO `sys_address` VALUES (26, '闵行区宾川路151号', '180.00,90.000');
INSERT INTO `sys_address` VALUES (27, '東城区東直門內大街615号', '180.0,-42.17906');
INSERT INTO `sys_address` VALUES (28, '徐汇区虹桥路69号', '-180.00,-62.6');
INSERT INTO `sys_address` VALUES (29, '徐汇区虹桥路41号', '-15.11944,-90.00000');
INSERT INTO `sys_address` VALUES (30, '浦东新区健祥路544号', '-180.0000,90.0000');
INSERT INTO `sys_address` VALUES (31, '乐丰六路440号', '-15.21,-0.0590');
INSERT INTO `sys_address` VALUES (32, '紫马岭商圈中山五路509号', '004.8799,-90.00');
INSERT INTO `sys_address` VALUES (33, '浦东新区橄榄路148号', '-139.44932,7.48581');
INSERT INTO `sys_address` VALUES (34, '东泰五街473号', '-10.21,-1.8938');
INSERT INTO `sys_address` VALUES (35, '天河区大信商圈大信南路979号', '-105.5613,90.0');
INSERT INTO `sys_address` VALUES (36, '西城区复兴门内大街373号', '026.6618,-90.0000');
INSERT INTO `sys_address` VALUES (37, '锦江区红星路三段54号', '180.0000,-4.9');
INSERT INTO `sys_address` VALUES (38, '东泰五街914号', '-180.0000,-90.00');
INSERT INTO `sys_address` VALUES (39, '浦东新区橄榄路557号', '18.455,02.3267');
INSERT INTO `sys_address` VALUES (40, '罗湖区清水河一路379号', '-17.5615,-8.879');
INSERT INTO `sys_address` VALUES (41, '天河区天河路424号', '-098.66124,-90.0');
INSERT INTO `sys_address` VALUES (42, '京华商圈华夏街192号', '-180.000,-90.00');
INSERT INTO `sys_address` VALUES (43, '浦东新区健祥路905号', '-148.8,-64.4');
INSERT INTO `sys_address` VALUES (44, '房山区岳琉路51号', '167.95351,-90.000');
INSERT INTO `sys_address` VALUES (45, '罗湖区田贝一路596号', '-7.6,-90.0');
INSERT INTO `sys_address` VALUES (46, '成华区二仙桥东三路10号', '-180.0000,-90.00000');
INSERT INTO `sys_address` VALUES (47, '罗湖区田贝一路783号', '-13.21,4.08');
INSERT INTO `sys_address` VALUES (48, '东泰五街333号', '093.86355,-21.22333');
INSERT INTO `sys_address` VALUES (49, '东城区东单王府井东街291号', '-180.0,90.00');
INSERT INTO `sys_address` VALUES (50, '西城区复兴门内大街159号', '-180.0,-90.000');
INSERT INTO `sys_address` VALUES (51, '闵行区宾川路525号', '11.3099,5.6');
INSERT INTO `sys_address` VALUES (52, '天河区大信商圈大信南路730号', '159.45,72.1');
INSERT INTO `sys_address` VALUES (53, '罗湖区蔡屋围深南东路825号', '180.00000,56.3');
INSERT INTO `sys_address` VALUES (54, '乐丰六路248号', '180.00000,90.000');
INSERT INTO `sys_address` VALUES (55, '坑美十五巷653号', '160.9,9.5360');

-- ----------------------------
-- Table structure for sys_address_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_address_type`;
CREATE TABLE `sys_address_type`  (
  `address_type_id` int NOT NULL AUTO_INCREMENT COMMENT '地址类型id',
  `address_type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址类型名称',
  PRIMARY KEY (`address_type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '地址类型' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_address_type
-- ----------------------------
INSERT INTO `sys_address_type` VALUES (1, '车站');
INSERT INTO `sys_address_type` VALUES (2, '机场');
INSERT INTO `sys_address_type` VALUES (3, '学校');
INSERT INTO `sys_address_type` VALUES (4, '医院');
INSERT INTO `sys_address_type` VALUES (6, '商场');
INSERT INTO `sys_address_type` VALUES (8, '广场');
INSERT INTO `sys_address_type` VALUES (9, '贸易行业');
INSERT INTO `sys_address_type` VALUES (10, '咨询业');
INSERT INTO `sys_address_type` VALUES (11, '物流业');
INSERT INTO `sys_address_type` VALUES (12, '金融服务业');
INSERT INTO `sys_address_type` VALUES (13, '贸易行业');
INSERT INTO `sys_address_type` VALUES (14, '电讯業');
INSERT INTO `sys_address_type` VALUES (15, '饮食业');
INSERT INTO `sys_address_type` VALUES (16, '资讯科技业');
INSERT INTO `sys_address_type` VALUES (17, '工业');
INSERT INTO `sys_address_type` VALUES (18, '电子行业');
INSERT INTO `sys_address_type` VALUES (19, '电讯業');
INSERT INTO `sys_address_type` VALUES (20, '工程业');
INSERT INTO `sys_address_type` VALUES (21, '制造业');
INSERT INTO `sys_address_type` VALUES (22, '物流业');
INSERT INTO `sys_address_type` VALUES (23, '贸易行业');

-- ----------------------------
-- Table structure for sys_address_type_list
-- ----------------------------
DROP TABLE IF EXISTS `sys_address_type_list`;
CREATE TABLE `sys_address_type_list`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT 'id',
  `address_id` int NOT NULL,
  `address_type_id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 209 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_address_type_list
-- ----------------------------
INSERT INTO `sys_address_type_list` VALUES (1, 5, 4);
INSERT INTO `sys_address_type_list` VALUES (2, 5, 2);
INSERT INTO `sys_address_type_list` VALUES (3, 2, 2);
INSERT INTO `sys_address_type_list` VALUES (4, 3, 6);
INSERT INTO `sys_address_type_list` VALUES (5, 5, 3);
INSERT INTO `sys_address_type_list` VALUES (6, 2, 3);
INSERT INTO `sys_address_type_list` VALUES (8, 4, 6);
INSERT INTO `sys_address_type_list` VALUES (9, 9, 9);
INSERT INTO `sys_address_type_list` VALUES (10, 20, 2);
INSERT INTO `sys_address_type_list` VALUES (11, 50, 9);
INSERT INTO `sys_address_type_list` VALUES (12, 20, 2);
INSERT INTO `sys_address_type_list` VALUES (13, 14, 17);
INSERT INTO `sys_address_type_list` VALUES (14, 36, 20);
INSERT INTO `sys_address_type_list` VALUES (15, 10, 2);
INSERT INTO `sys_address_type_list` VALUES (16, 6, 19);
INSERT INTO `sys_address_type_list` VALUES (17, 41, 12);
INSERT INTO `sys_address_type_list` VALUES (18, 40, 11);
INSERT INTO `sys_address_type_list` VALUES (19, 47, 9);
INSERT INTO `sys_address_type_list` VALUES (20, 24, 20);
INSERT INTO `sys_address_type_list` VALUES (21, 51, 15);
INSERT INTO `sys_address_type_list` VALUES (22, 41, 16);
INSERT INTO `sys_address_type_list` VALUES (23, 12, 10);
INSERT INTO `sys_address_type_list` VALUES (24, 55, 10);
INSERT INTO `sys_address_type_list` VALUES (25, 39, 8);
INSERT INTO `sys_address_type_list` VALUES (26, 27, 8);
INSERT INTO `sys_address_type_list` VALUES (27, 19, 8);
INSERT INTO `sys_address_type_list` VALUES (28, 18, 14);
INSERT INTO `sys_address_type_list` VALUES (29, 41, 15);
INSERT INTO `sys_address_type_list` VALUES (30, 39, 13);
INSERT INTO `sys_address_type_list` VALUES (31, 39, 1);
INSERT INTO `sys_address_type_list` VALUES (32, 26, 13);
INSERT INTO `sys_address_type_list` VALUES (33, 29, 9);
INSERT INTO `sys_address_type_list` VALUES (34, 20, 11);
INSERT INTO `sys_address_type_list` VALUES (35, 20, 14);
INSERT INTO `sys_address_type_list` VALUES (36, 33, 9);
INSERT INTO `sys_address_type_list` VALUES (37, 8, 11);
INSERT INTO `sys_address_type_list` VALUES (38, 47, 1);
INSERT INTO `sys_address_type_list` VALUES (39, 31, 1);
INSERT INTO `sys_address_type_list` VALUES (40, 40, 8);
INSERT INTO `sys_address_type_list` VALUES (41, 13, 10);
INSERT INTO `sys_address_type_list` VALUES (42, 55, 20);
INSERT INTO `sys_address_type_list` VALUES (43, 39, 16);
INSERT INTO `sys_address_type_list` VALUES (44, 17, 11);
INSERT INTO `sys_address_type_list` VALUES (45, 26, 14);
INSERT INTO `sys_address_type_list` VALUES (46, 26, 8);
INSERT INTO `sys_address_type_list` VALUES (47, 42, 18);
INSERT INTO `sys_address_type_list` VALUES (48, 32, 13);
INSERT INTO `sys_address_type_list` VALUES (49, 25, 21);
INSERT INTO `sys_address_type_list` VALUES (50, 24, 16);
INSERT INTO `sys_address_type_list` VALUES (51, 1, 23);
INSERT INTO `sys_address_type_list` VALUES (52, 23, 12);
INSERT INTO `sys_address_type_list` VALUES (53, 46, 17);
INSERT INTO `sys_address_type_list` VALUES (54, 21, 15);
INSERT INTO `sys_address_type_list` VALUES (55, 39, 14);
INSERT INTO `sys_address_type_list` VALUES (56, 39, 20);
INSERT INTO `sys_address_type_list` VALUES (57, 16, 11);
INSERT INTO `sys_address_type_list` VALUES (58, 51, 2);
INSERT INTO `sys_address_type_list` VALUES (59, 16, 17);
INSERT INTO `sys_address_type_list` VALUES (60, 43, 9);
INSERT INTO `sys_address_type_list` VALUES (61, 19, 17);
INSERT INTO `sys_address_type_list` VALUES (62, 39, 20);
INSERT INTO `sys_address_type_list` VALUES (63, 24, 20);
INSERT INTO `sys_address_type_list` VALUES (64, 30, 23);
INSERT INTO `sys_address_type_list` VALUES (65, 24, 3);
INSERT INTO `sys_address_type_list` VALUES (66, 8, 10);
INSERT INTO `sys_address_type_list` VALUES (67, 16, 10);
INSERT INTO `sys_address_type_list` VALUES (68, 46, 18);
INSERT INTO `sys_address_type_list` VALUES (69, 21, 3);
INSERT INTO `sys_address_type_list` VALUES (70, 50, 23);
INSERT INTO `sys_address_type_list` VALUES (71, 54, 18);
INSERT INTO `sys_address_type_list` VALUES (72, 16, 21);
INSERT INTO `sys_address_type_list` VALUES (73, 8, 9);
INSERT INTO `sys_address_type_list` VALUES (74, 23, 20);
INSERT INTO `sys_address_type_list` VALUES (75, 7, 10);
INSERT INTO `sys_address_type_list` VALUES (76, 41, 1);
INSERT INTO `sys_address_type_list` VALUES (77, 44, 2);
INSERT INTO `sys_address_type_list` VALUES (78, 39, 10);
INSERT INTO `sys_address_type_list` VALUES (79, 41, 10);
INSERT INTO `sys_address_type_list` VALUES (80, 38, 11);
INSERT INTO `sys_address_type_list` VALUES (81, 47, 2);
INSERT INTO `sys_address_type_list` VALUES (82, 49, 2);
INSERT INTO `sys_address_type_list` VALUES (83, 45, 9);
INSERT INTO `sys_address_type_list` VALUES (84, 35, 16);
INSERT INTO `sys_address_type_list` VALUES (85, 12, 12);
INSERT INTO `sys_address_type_list` VALUES (86, 29, 20);
INSERT INTO `sys_address_type_list` VALUES (87, 55, 3);
INSERT INTO `sys_address_type_list` VALUES (88, 52, 11);
INSERT INTO `sys_address_type_list` VALUES (89, 53, 10);
INSERT INTO `sys_address_type_list` VALUES (90, 25, 21);
INSERT INTO `sys_address_type_list` VALUES (91, 38, 19);
INSERT INTO `sys_address_type_list` VALUES (92, 13, 12);
INSERT INTO `sys_address_type_list` VALUES (93, 49, 4);
INSERT INTO `sys_address_type_list` VALUES (94, 11, 15);
INSERT INTO `sys_address_type_list` VALUES (95, 14, 1);
INSERT INTO `sys_address_type_list` VALUES (96, 36, 12);
INSERT INTO `sys_address_type_list` VALUES (97, 19, 22);
INSERT INTO `sys_address_type_list` VALUES (98, 28, 8);
INSERT INTO `sys_address_type_list` VALUES (99, 9, 10);
INSERT INTO `sys_address_type_list` VALUES (100, 1, 12);
INSERT INTO `sys_address_type_list` VALUES (101, 25, 3);
INSERT INTO `sys_address_type_list` VALUES (102, 52, 13);
INSERT INTO `sys_address_type_list` VALUES (103, 39, 19);
INSERT INTO `sys_address_type_list` VALUES (104, 51, 6);
INSERT INTO `sys_address_type_list` VALUES (105, 1, 13);
INSERT INTO `sys_address_type_list` VALUES (106, 2, 2);
INSERT INTO `sys_address_type_list` VALUES (107, 35, 6);
INSERT INTO `sys_address_type_list` VALUES (108, 39, 19);
INSERT INTO `sys_address_type_list` VALUES (109, 26, 8);
INSERT INTO `sys_address_type_list` VALUES (110, 34, 10);
INSERT INTO `sys_address_type_list` VALUES (111, 26, 18);
INSERT INTO `sys_address_type_list` VALUES (112, 35, 2);
INSERT INTO `sys_address_type_list` VALUES (113, 20, 12);
INSERT INTO `sys_address_type_list` VALUES (114, 51, 10);
INSERT INTO `sys_address_type_list` VALUES (115, 55, 3);
INSERT INTO `sys_address_type_list` VALUES (116, 8, 1);
INSERT INTO `sys_address_type_list` VALUES (117, 12, 19);
INSERT INTO `sys_address_type_list` VALUES (118, 17, 23);
INSERT INTO `sys_address_type_list` VALUES (119, 52, 4);
INSERT INTO `sys_address_type_list` VALUES (120, 54, 1);
INSERT INTO `sys_address_type_list` VALUES (121, 1, 17);
INSERT INTO `sys_address_type_list` VALUES (122, 19, 16);
INSERT INTO `sys_address_type_list` VALUES (123, 21, 1);
INSERT INTO `sys_address_type_list` VALUES (124, 8, 6);
INSERT INTO `sys_address_type_list` VALUES (125, 50, 6);
INSERT INTO `sys_address_type_list` VALUES (126, 8, 8);
INSERT INTO `sys_address_type_list` VALUES (127, 52, 12);
INSERT INTO `sys_address_type_list` VALUES (128, 23, 10);
INSERT INTO `sys_address_type_list` VALUES (129, 40, 11);
INSERT INTO `sys_address_type_list` VALUES (130, 12, 15);
INSERT INTO `sys_address_type_list` VALUES (131, 38, 21);
INSERT INTO `sys_address_type_list` VALUES (132, 55, 15);
INSERT INTO `sys_address_type_list` VALUES (133, 37, 19);
INSERT INTO `sys_address_type_list` VALUES (134, 28, 8);
INSERT INTO `sys_address_type_list` VALUES (135, 23, 11);
INSERT INTO `sys_address_type_list` VALUES (136, 43, 8);
INSERT INTO `sys_address_type_list` VALUES (137, 31, 14);
INSERT INTO `sys_address_type_list` VALUES (138, 37, 18);
INSERT INTO `sys_address_type_list` VALUES (139, 49, 8);
INSERT INTO `sys_address_type_list` VALUES (140, 48, 17);
INSERT INTO `sys_address_type_list` VALUES (141, 29, 16);
INSERT INTO `sys_address_type_list` VALUES (142, 7, 8);
INSERT INTO `sys_address_type_list` VALUES (143, 35, 14);
INSERT INTO `sys_address_type_list` VALUES (144, 10, 19);
INSERT INTO `sys_address_type_list` VALUES (145, 23, 9);
INSERT INTO `sys_address_type_list` VALUES (146, 33, 10);
INSERT INTO `sys_address_type_list` VALUES (147, 25, 23);
INSERT INTO `sys_address_type_list` VALUES (148, 42, 14);
INSERT INTO `sys_address_type_list` VALUES (149, 15, 21);
INSERT INTO `sys_address_type_list` VALUES (150, 21, 19);
INSERT INTO `sys_address_type_list` VALUES (151, 26, 2);
INSERT INTO `sys_address_type_list` VALUES (152, 27, 23);
INSERT INTO `sys_address_type_list` VALUES (153, 14, 9);
INSERT INTO `sys_address_type_list` VALUES (154, 31, 10);
INSERT INTO `sys_address_type_list` VALUES (155, 15, 22);
INSERT INTO `sys_address_type_list` VALUES (156, 20, 9);
INSERT INTO `sys_address_type_list` VALUES (157, 11, 22);
INSERT INTO `sys_address_type_list` VALUES (158, 45, 3);
INSERT INTO `sys_address_type_list` VALUES (159, 40, 19);
INSERT INTO `sys_address_type_list` VALUES (160, 17, 14);
INSERT INTO `sys_address_type_list` VALUES (161, 25, 13);
INSERT INTO `sys_address_type_list` VALUES (162, 23, 20);
INSERT INTO `sys_address_type_list` VALUES (163, 7, 4);
INSERT INTO `sys_address_type_list` VALUES (164, 18, 22);
INSERT INTO `sys_address_type_list` VALUES (165, 13, 16);
INSERT INTO `sys_address_type_list` VALUES (166, 2, 1);
INSERT INTO `sys_address_type_list` VALUES (167, 54, 16);
INSERT INTO `sys_address_type_list` VALUES (168, 14, 3);
INSERT INTO `sys_address_type_list` VALUES (169, 19, 13);
INSERT INTO `sys_address_type_list` VALUES (170, 30, 4);
INSERT INTO `sys_address_type_list` VALUES (171, 51, 13);
INSERT INTO `sys_address_type_list` VALUES (172, 28, 1);
INSERT INTO `sys_address_type_list` VALUES (173, 39, 12);
INSERT INTO `sys_address_type_list` VALUES (174, 24, 23);
INSERT INTO `sys_address_type_list` VALUES (175, 28, 16);
INSERT INTO `sys_address_type_list` VALUES (176, 21, 2);
INSERT INTO `sys_address_type_list` VALUES (177, 18, 20);
INSERT INTO `sys_address_type_list` VALUES (178, 45, 10);
INSERT INTO `sys_address_type_list` VALUES (179, 50, 17);
INSERT INTO `sys_address_type_list` VALUES (180, 30, 22);
INSERT INTO `sys_address_type_list` VALUES (181, 49, 10);
INSERT INTO `sys_address_type_list` VALUES (182, 24, 6);
INSERT INTO `sys_address_type_list` VALUES (183, 8, 12);
INSERT INTO `sys_address_type_list` VALUES (184, 40, 16);
INSERT INTO `sys_address_type_list` VALUES (185, 35, 4);
INSERT INTO `sys_address_type_list` VALUES (186, 40, 15);
INSERT INTO `sys_address_type_list` VALUES (187, 22, 20);
INSERT INTO `sys_address_type_list` VALUES (188, 45, 12);
INSERT INTO `sys_address_type_list` VALUES (189, 17, 1);
INSERT INTO `sys_address_type_list` VALUES (190, 20, 20);
INSERT INTO `sys_address_type_list` VALUES (191, 53, 17);
INSERT INTO `sys_address_type_list` VALUES (192, 40, 10);
INSERT INTO `sys_address_type_list` VALUES (193, 2, 3);
INSERT INTO `sys_address_type_list` VALUES (194, 13, 16);
INSERT INTO `sys_address_type_list` VALUES (195, 29, 3);
INSERT INTO `sys_address_type_list` VALUES (196, 8, 10);
INSERT INTO `sys_address_type_list` VALUES (197, 37, 6);
INSERT INTO `sys_address_type_list` VALUES (198, 45, 14);
INSERT INTO `sys_address_type_list` VALUES (199, 18, 3);
INSERT INTO `sys_address_type_list` VALUES (200, 47, 3);
INSERT INTO `sys_address_type_list` VALUES (201, 51, 6);
INSERT INTO `sys_address_type_list` VALUES (202, 17, 16);
INSERT INTO `sys_address_type_list` VALUES (203, 32, 14);
INSERT INTO `sys_address_type_list` VALUES (204, 44, 12);
INSERT INTO `sys_address_type_list` VALUES (205, 16, 21);
INSERT INTO `sys_address_type_list` VALUES (206, 44, 1);
INSERT INTO `sys_address_type_list` VALUES (207, 44, 6);
INSERT INTO `sys_address_type_list` VALUES (208, 37, 21);

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '参数配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-yellow', 'Y', 'admin', '2023-01-18 15:42:30', 'admin', '2023-01-18 16:11:52', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2023-01-18 15:42:30', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-light', 'Y', 'admin', '2023-01-18 15:42:30', 'admin', '2023-01-18 16:12:27', '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2023-01-18 15:42:31', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2023-01-18 15:42:31', '', NULL, '是否开启注册用户功能（true开启，false关闭）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 215 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '中国电信德宏分公司', 0, '', '', '', '0', '0', 'admin', '2023-01-18 15:42:11', 'admin', '2023-01-19 11:05:00');
INSERT INTO `sys_dept` VALUES (200, 202, '0,100,202', '打工人', 3, NULL, NULL, NULL, '0', '2', 'admin', '2023-01-18 16:06:04', 'admin', '2023-01-30 04:09:38');
INSERT INTO `sys_dept` VALUES (201, 100, '0,100', '网络部', 0, NULL, NULL, NULL, '0', '2', 'admin', '2023-01-19 11:08:41', '', NULL);
INSERT INTO `sys_dept` VALUES (202, 100, '0,100', '云中台', 1, NULL, NULL, NULL, '0', '2', 'admin', '2023-01-19 11:08:51', '', NULL);
INSERT INTO `sys_dept` VALUES (203, 100, '0,100', '办公室', 2, NULL, NULL, NULL, '0', '2', 'admin', '2023-01-19 11:09:05', 'admin', '2023-01-19 11:09:12');
INSERT INTO `sys_dept` VALUES (204, 100, '0,100', '政企客户部', 4, NULL, NULL, NULL, '0', '2', 'admin', '2023-01-19 11:13:34', '', NULL);
INSERT INTO `sys_dept` VALUES (205, 200, '0,100,202,200', '打工啊', 0, NULL, NULL, NULL, '0', '2', 'admin', '2023-01-30 02:27:07', '', NULL);
INSERT INTO `sys_dept` VALUES (206, 202, '0,100,202', '解决方案中心', 0, NULL, NULL, NULL, '0', '2', 'syx', '2023-01-30 03:46:02', '', NULL);
INSERT INTO `sys_dept` VALUES (207, 202, '0,100,202', '装维团队', 1, NULL, NULL, NULL, '0', '2', 'syx', '2023-01-30 03:46:35', '', NULL);
INSERT INTO `sys_dept` VALUES (208, 207, '0,100,202,207', '111', 1, NULL, NULL, NULL, '0', '2', 'syx', '2023-01-30 04:05:55', '', NULL);
INSERT INTO `sys_dept` VALUES (209, 100, '0,100', '测试部门', 1, NULL, NULL, NULL, '0', '2', 'admin', '2023-01-31 21:15:31', '', NULL);
INSERT INTO `sys_dept` VALUES (210, 100, '0,100', '网络部', 0, NULL, NULL, NULL, '0', '0', 'admin', '2023-02-01 13:49:16', '', NULL);
INSERT INTO `sys_dept` VALUES (211, 100, '0,100', '云中台', 1, NULL, NULL, NULL, '0', '0', 'admin', '2023-02-01 13:49:33', '', NULL);
INSERT INTO `sys_dept` VALUES (212, 100, '0,100', '政企客户部', 3, NULL, NULL, NULL, '0', '0', 'admin', '2023-02-01 13:49:48', '', NULL);
INSERT INTO `sys_dept` VALUES (213, 100, '0,100', '梁河分公司', 3, NULL, NULL, NULL, '0', '0', 'admin', '2023-02-01 13:57:07', '', NULL);
INSERT INTO `sys_dept` VALUES (214, 213, '0,100,213', '梁河县-网络部', 1, NULL, NULL, NULL, '0', '0', 'admin', '2023-02-01 13:57:25', 'admin', '2023-02-01 14:01:14');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典数据表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2023-01-18 15:42:29', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-01-18 15:42:29', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-01-18 15:42:29', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2023-01-18 15:42:29', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2023-01-18 15:42:29', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2023-01-18 15:42:29', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2023-01-18 15:42:29', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2023-01-18 15:42:29', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2023-01-18 15:42:29', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2023-01-18 15:42:29', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2023-01-18 15:42:29', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2023-01-18 15:42:29', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2023-01-18 15:42:29', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2023-01-18 15:42:29', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2023-01-18 15:42:29', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2023-01-18 15:42:29', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2023-01-18 15:42:30', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-01-18 15:42:30', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-01-18 15:42:30', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-01-18 15:42:30', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-01-18 15:42:30', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2023-01-18 15:42:30', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-01-18 15:42:30', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-01-18 15:42:30', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-01-18 15:42:30', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-01-18 15:42:30', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-01-18 15:42:30', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2023-01-18 15:42:30', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2023-01-18 15:42:30', '', NULL, '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典类型表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2023-01-18 15:42:27', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2023-01-18 15:42:27', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2023-01-18 15:42:28', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2023-01-18 15:42:28', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2023-01-18 15:42:28', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2023-01-18 15:42:28', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2023-01-18 15:42:28', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2023-01-18 15:42:28', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2023-01-18 15:42:28', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2023-01-18 15:42:28', '', NULL, '登录状态列表');

-- ----------------------------
-- Table structure for sys_duty
-- ----------------------------
DROP TABLE IF EXISTS `sys_duty`;
CREATE TABLE `sys_duty`  (
  `duty_id` bigint NOT NULL AUTO_INCREMENT COMMENT 'del_flag',
  `duty_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '值班类型',
  `duty_sort` int NULL DEFAULT NULL COMMENT '显示顺序',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  PRIMARY KEY (`duty_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '值班类型' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_duty
-- ----------------------------
INSERT INTO `sys_duty` VALUES (12, '日常值班', 1, 'admin', '2023-01-30 02:09:32', 'admin', '2023-02-01 14:02:02', NULL, '0');
INSERT INTO `sys_duty` VALUES (13, '行政值班', NULL, 'admin', '2023-01-30 09:09:52', NULL, NULL, NULL, '0');
INSERT INTO `sys_duty` VALUES (14, '巡查', NULL, 'admin', '2023-01-30 09:10:54', 'admin', '2023-02-01 14:02:28', NULL, '0');
INSERT INTO `sys_duty` VALUES (15, 'sss', NULL, 'admin', '2023-02-01 11:54:53', NULL, '2023-02-01 12:01:48', NULL, '2');

-- ----------------------------
-- Table structure for sys_duty_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_duty_log`;
CREATE TABLE `sys_duty_log`  (
  `log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '值班日志主键',
  `duty_id` bigint NOT NULL DEFAULT 0 COMMENT '值班类型id',
  `user_id` bigint NOT NULL COMMENT '值班人员ID',
  `dept_id` bigint NOT NULL COMMENT '部门id',
  `start_time` datetime NOT NULL COMMENT '值班开始时间',
  `end_time` datetime NOT NULL COMMENT '值班结束时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 62 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '值班记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_duty_log
-- ----------------------------
INSERT INTO `sys_duty_log` VALUES (52, 12, 123, 100, '2023-01-11 00:00:00', '2023-01-20 00:00:00', 'admin', '2023-01-31 20:15:56', '', NULL, NULL, '2');
INSERT INTO `sys_duty_log` VALUES (53, 12, 124, 100, '2023-01-02 00:00:00', '2023-01-25 00:00:00', 'admin', '2023-01-31 20:38:23', '', NULL, NULL, '2');
INSERT INTO `sys_duty_log` VALUES (54, 13, 127, 100, '2023-01-02 00:00:00', '2023-01-20 00:00:00', 'admin', '2023-01-31 21:16:58', '', NULL, NULL, '2');
INSERT INTO `sys_duty_log` VALUES (55, 13, 126, 209, '2022-12-28 00:00:00', '2023-01-28 00:00:00', 'admin', '2023-01-31 21:17:09', '', NULL, NULL, '2');
INSERT INTO `sys_duty_log` VALUES (56, 13, 128, 209, '2023-01-11 00:00:00', '2023-01-28 00:00:00', 'admin', '2023-01-31 21:17:23', '', NULL, NULL, '2');
INSERT INTO `sys_duty_log` VALUES (57, 13, 114, 100, '2023-02-06 00:00:00', '2023-02-17 00:00:00', 'admin', '2023-02-01 14:02:53', '', NULL, NULL, '0');
INSERT INTO `sys_duty_log` VALUES (58, 12, 108, 211, '2023-02-05 00:00:00', '2023-02-25 00:00:00', 'admin', '2023-02-01 14:03:29', '', NULL, NULL, '0');
INSERT INTO `sys_duty_log` VALUES (59, 13, 109, 210, '2023-02-01 00:00:00', '2023-02-11 00:00:00', 'admin', '2023-02-01 14:03:41', '', NULL, NULL, '0');
INSERT INTO `sys_duty_log` VALUES (60, 12, 116, 214, '2023-02-06 00:00:00', '2023-02-10 00:00:00', 'admin', '2023-02-01 14:04:01', '', NULL, NULL, '0');
INSERT INTO `sys_duty_log` VALUES (61, 12, 110, 210, '2022-12-01 00:00:00', '2023-03-10 00:00:00', 'boss1', '2023-02-01 14:20:36', '', NULL, NULL, '0');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2023-01-18 15:42:31', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2023-01-18 15:42:31', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2023-01-18 15:42:31', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 268 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统访问记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-18 15:49:50');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-18 16:08:40');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-01-18 16:09:09');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-18 16:09:16');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-18 16:12:47');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-18 16:14:39');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-19 10:00:15');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-19 10:57:04');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-01-19 12:26:36');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-19 12:26:39');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-19 12:27:04');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-19 12:28:46');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-28 09:04:59');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-28 09:49:43');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-28 11:27:56');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-28 11:40:33');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-28 13:26:48');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-28 14:32:21');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-30 00:15:34');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-30 01:47:35');
INSERT INTO `sys_logininfor` VALUES (120, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-30 02:31:25');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-30 03:13:49');
INSERT INTO `sys_logininfor` VALUES (122, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-30 03:14:44');
INSERT INTO `sys_logininfor` VALUES (123, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-30 03:14:51');
INSERT INTO `sys_logininfor` VALUES (124, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-30 03:16:18');
INSERT INTO `sys_logininfor` VALUES (125, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-30 03:16:55');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-30 03:16:59');
INSERT INTO `sys_logininfor` VALUES (127, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-30 03:22:23');
INSERT INTO `sys_logininfor` VALUES (128, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-30 03:22:27');
INSERT INTO `sys_logininfor` VALUES (129, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-30 03:44:21');
INSERT INTO `sys_logininfor` VALUES (130, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-30 03:44:25');
INSERT INTO `sys_logininfor` VALUES (131, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-30 04:06:05');
INSERT INTO `sys_logininfor` VALUES (132, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-01-30 04:06:09');
INSERT INTO `sys_logininfor` VALUES (133, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-30 04:06:15');
INSERT INTO `sys_logininfor` VALUES (134, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-30 04:07:46');
INSERT INTO `sys_logininfor` VALUES (135, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-30 04:07:49');
INSERT INTO `sys_logininfor` VALUES (136, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-30 04:09:52');
INSERT INTO `sys_logininfor` VALUES (137, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-30 04:09:56');
INSERT INTO `sys_logininfor` VALUES (138, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-30 04:10:25');
INSERT INTO `sys_logininfor` VALUES (139, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-30 04:10:29');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-30 09:09:13');
INSERT INTO `sys_logininfor` VALUES (141, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-30 09:13:11');
INSERT INTO `sys_logininfor` VALUES (142, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2023-01-30 10:18:21');
INSERT INTO `sys_logininfor` VALUES (143, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-30 10:18:25');
INSERT INTO `sys_logininfor` VALUES (144, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-30 12:51:36');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-30 14:29:42');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-30 15:34:23');
INSERT INTO `sys_logininfor` VALUES (147, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-30 16:12:02');
INSERT INTO `sys_logininfor` VALUES (148, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-30 16:32:09');
INSERT INTO `sys_logininfor` VALUES (149, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-01-30 16:32:13');
INSERT INTO `sys_logininfor` VALUES (150, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-01-30 16:32:18');
INSERT INTO `sys_logininfor` VALUES (151, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-30 16:32:22');
INSERT INTO `sys_logininfor` VALUES (152, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-01-30 16:34:41');
INSERT INTO `sys_logininfor` VALUES (153, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-30 16:34:46');
INSERT INTO `sys_logininfor` VALUES (154, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-30 16:36:25');
INSERT INTO `sys_logininfor` VALUES (155, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-01-30 16:36:32');
INSERT INTO `sys_logininfor` VALUES (156, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-30 16:36:35');
INSERT INTO `sys_logininfor` VALUES (157, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-30 17:07:27');
INSERT INTO `sys_logininfor` VALUES (158, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-30 17:07:34');
INSERT INTO `sys_logininfor` VALUES (159, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-30 17:33:01');
INSERT INTO `sys_logininfor` VALUES (160, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-30 17:33:18');
INSERT INTO `sys_logininfor` VALUES (161, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-30 17:35:01');
INSERT INTO `sys_logininfor` VALUES (162, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-30 17:35:12');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-30 18:12:16');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-30 18:12:21');
INSERT INTO `sys_logininfor` VALUES (165, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-30 18:39:58');
INSERT INTO `sys_logininfor` VALUES (166, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-30 18:40:06');
INSERT INTO `sys_logininfor` VALUES (167, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-31 13:59:57');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-31 14:00:23');
INSERT INTO `sys_logininfor` VALUES (169, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2023-01-31 14:01:41');
INSERT INTO `sys_logininfor` VALUES (170, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-31 14:01:45');
INSERT INTO `sys_logininfor` VALUES (171, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-31 14:01:54');
INSERT INTO `sys_logininfor` VALUES (172, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-31 15:24:21');
INSERT INTO `sys_logininfor` VALUES (173, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-31 15:24:26');
INSERT INTO `sys_logininfor` VALUES (174, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-31 15:24:33');
INSERT INTO `sys_logininfor` VALUES (175, 'syx', '10.1.2.181', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-31 15:41:42');
INSERT INTO `sys_logininfor` VALUES (176, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-31 15:55:10');
INSERT INTO `sys_logininfor` VALUES (177, 'syx', '10.1.2.181', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-31 15:58:07');
INSERT INTO `sys_logininfor` VALUES (178, 'admin', '10.1.2.181', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-31 15:58:18');
INSERT INTO `sys_logininfor` VALUES (179, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-31 18:28:58');
INSERT INTO `sys_logininfor` VALUES (180, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '密码输入错误1次', '2023-01-31 21:13:57');
INSERT INTO `sys_logininfor` VALUES (181, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-01-31 21:13:57');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-31 21:14:04');
INSERT INTO `sys_logininfor` VALUES (183, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2023-01-31 21:36:39');
INSERT INTO `sys_logininfor` VALUES (184, 'syx', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '登录用户：syx 不存在', '2023-01-31 21:36:43');
INSERT INTO `sys_logininfor` VALUES (185, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-31 21:36:50');
INSERT INTO `sys_logininfor` VALUES (186, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-01-31 22:08:08');
INSERT INTO `sys_logininfor` VALUES (187, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-31 22:08:11');
INSERT INTO `sys_logininfor` VALUES (188, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-31 22:08:53');
INSERT INTO `sys_logininfor` VALUES (189, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-31 22:10:04');
INSERT INTO `sys_logininfor` VALUES (190, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-31 22:13:32');
INSERT INTO `sys_logininfor` VALUES (191, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-31 22:13:46');
INSERT INTO `sys_logininfor` VALUES (192, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-31 22:13:57');
INSERT INTO `sys_logininfor` VALUES (193, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-01-31 22:14:14');
INSERT INTO `sys_logininfor` VALUES (194, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-01-31 22:24:07');
INSERT INTO `sys_logininfor` VALUES (195, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-02-01 09:24:00');
INSERT INTO `sys_logininfor` VALUES (196, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '密码输入错误1次', '2023-02-01 09:24:00');
INSERT INTO `sys_logininfor` VALUES (197, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2023-02-01 09:29:04');
INSERT INTO `sys_logininfor` VALUES (198, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '密码输入错误2次', '2023-02-01 09:29:08');
INSERT INTO `sys_logininfor` VALUES (199, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-02-01 09:29:08');
INSERT INTO `sys_logininfor` VALUES (200, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2023-02-01 09:33:30');
INSERT INTO `sys_logininfor` VALUES (201, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '密码输入错误3次', '2023-02-01 09:33:32');
INSERT INTO `sys_logininfor` VALUES (202, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-02-01 09:33:32');
INSERT INTO `sys_logininfor` VALUES (203, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-02-01 09:33:49');
INSERT INTO `sys_logininfor` VALUES (204, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '密码输入错误4次', '2023-02-01 09:33:53');
INSERT INTO `sys_logininfor` VALUES (205, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-02-01 09:33:53');
INSERT INTO `sys_logininfor` VALUES (206, 'asd', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '登录用户：asd 不存在', '2023-02-01 10:40:02');
INSERT INTO `sys_logininfor` VALUES (207, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-02-01 10:40:08');
INSERT INTO `sys_logininfor` VALUES (208, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '密码输入错误1次', '2023-02-01 10:40:08');
INSERT INTO `sys_logininfor` VALUES (209, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '密码输入错误2次', '2023-02-01 10:41:42');
INSERT INTO `sys_logininfor` VALUES (210, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-02-01 10:41:42');
INSERT INTO `sys_logininfor` VALUES (211, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '密码输入错误1次', '2023-02-01 10:58:34');
INSERT INTO `sys_logininfor` VALUES (212, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-02-01 10:58:34');
INSERT INTO `sys_logininfor` VALUES (213, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-02-01 10:58:41');
INSERT INTO `sys_logininfor` VALUES (214, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '密码输入错误2次', '2023-02-01 10:58:44');
INSERT INTO `sys_logininfor` VALUES (215, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-02-01 10:58:44');
INSERT INTO `sys_logininfor` VALUES (216, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2023-02-01 11:02:20');
INSERT INTO `sys_logininfor` VALUES (217, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '密码输入错误1次', '2023-02-01 11:02:22');
INSERT INTO `sys_logininfor` VALUES (218, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-02-01 11:02:22');
INSERT INTO `sys_logininfor` VALUES (219, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-02-01 11:02:30');
INSERT INTO `sys_logininfor` VALUES (220, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-01 11:09:33');
INSERT INTO `sys_logininfor` VALUES (221, 'test', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-01 11:09:53');
INSERT INTO `sys_logininfor` VALUES (222, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-01 11:10:01');
INSERT INTO `sys_logininfor` VALUES (223, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-01 11:10:45');
INSERT INTO `sys_logininfor` VALUES (224, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-01 11:11:05');
INSERT INTO `sys_logininfor` VALUES (225, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-01 11:14:06');
INSERT INTO `sys_logininfor` VALUES (226, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-01 11:14:11');
INSERT INTO `sys_logininfor` VALUES (227, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-01 11:20:14');
INSERT INTO `sys_logininfor` VALUES (228, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-01 11:32:55');
INSERT INTO `sys_logininfor` VALUES (229, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-01 11:33:59');
INSERT INTO `sys_logininfor` VALUES (230, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-01 11:34:03');
INSERT INTO `sys_logininfor` VALUES (231, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2023-02-01 11:37:30');
INSERT INTO `sys_logininfor` VALUES (232, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '密码输入错误1次', '2023-02-01 11:37:35');
INSERT INTO `sys_logininfor` VALUES (233, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-02-01 11:37:35');
INSERT INTO `sys_logininfor` VALUES (234, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-01 11:37:44');
INSERT INTO `sys_logininfor` VALUES (235, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-01 11:38:46');
INSERT INTO `sys_logininfor` VALUES (236, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-01 11:38:50');
INSERT INTO `sys_logininfor` VALUES (237, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-01 11:39:54');
INSERT INTO `sys_logininfor` VALUES (238, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-01 11:40:00');
INSERT INTO `sys_logininfor` VALUES (239, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-01 11:43:59');
INSERT INTO `sys_logininfor` VALUES (240, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-01 11:44:03');
INSERT INTO `sys_logininfor` VALUES (241, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-02-01 11:45:17');
INSERT INTO `sys_logininfor` VALUES (242, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-01 11:45:22');
INSERT INTO `sys_logininfor` VALUES (243, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-01 11:45:26');
INSERT INTO `sys_logininfor` VALUES (244, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-01 11:45:30');
INSERT INTO `sys_logininfor` VALUES (245, 'admin', '106.61.172.98', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-01 11:47:41');
INSERT INTO `sys_logininfor` VALUES (246, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-02-01 11:53:18');
INSERT INTO `sys_logininfor` VALUES (247, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-01 11:53:21');
INSERT INTO `sys_logininfor` VALUES (248, 'admin', '106.61.172.98', 'XX XX', 'Chrome 10', 'Windows 10', '1', '验证码错误', '2023-02-01 11:57:48');
INSERT INTO `sys_logininfor` VALUES (249, 'admin', '106.61.172.98', 'XX XX', 'Chrome 10', 'Windows 10', '1', '密码输入错误1次', '2023-02-01 11:57:51');
INSERT INTO `sys_logininfor` VALUES (250, 'admin', '106.61.172.98', 'XX XX', 'Chrome 10', 'Windows 10', '1', '用户不存在/密码错误', '2023-02-01 11:57:51');
INSERT INTO `sys_logininfor` VALUES (251, 'admin', '106.61.172.98', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-01 11:57:59');
INSERT INTO `sys_logininfor` VALUES (252, 'admin', '106.61.172.98', 'XX XX', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-01 11:58:06');
INSERT INTO `sys_logininfor` VALUES (253, 'admin', '106.61.172.98', 'XX XX', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-01 11:58:10');
INSERT INTO `sys_logininfor` VALUES (254, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2023-02-01 12:00:13');
INSERT INTO `sys_logininfor` VALUES (255, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-01 12:00:16');
INSERT INTO `sys_logininfor` VALUES (256, 'admin', '106.61.172.98', 'XX XX', 'Chrome Mobile', 'Android 1.x', '1', '密码输入错误1次', '2023-02-01 12:23:24');
INSERT INTO `sys_logininfor` VALUES (257, 'admin', '106.61.172.98', 'XX XX', 'Chrome Mobile', 'Android 1.x', '1', '用户不存在/密码错误', '2023-02-01 12:23:24');
INSERT INTO `sys_logininfor` VALUES (258, 'admin', '106.61.172.98', 'XX XX', 'Chrome Mobile', 'Android 1.x', '1', '验证码错误', '2023-02-01 12:23:49');
INSERT INTO `sys_logininfor` VALUES (259, 'admin', '106.61.172.98', 'XX XX', 'Chrome Mobile', 'Android 1.x', '0', '登录成功', '2023-02-01 12:23:56');
INSERT INTO `sys_logininfor` VALUES (260, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-01 13:35:31');
INSERT INTO `sys_logininfor` VALUES (261, 'lh2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '1', '验证码已失效', '2023-02-01 14:04:48');
INSERT INTO `sys_logininfor` VALUES (262, 'lh2', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-01 14:04:51');
INSERT INTO `sys_logininfor` VALUES (263, 'boss1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-01 14:13:24');
INSERT INTO `sys_logininfor` VALUES (264, 'boss1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-01 14:18:12');
INSERT INTO `sys_logininfor` VALUES (265, 'boss1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-01 14:18:16');
INSERT INTO `sys_logininfor` VALUES (266, 'boss1', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '退出成功', '2023-02-01 14:27:24');
INSERT INTO `sys_logininfor` VALUES (267, 'admin', '127.0.0.1', '内网IP', 'Chrome 10', 'Windows 10', '0', '登录成功', '2023-02-01 14:27:36');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2109 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', 'admin', '2023-01-18 15:42:13', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, '', 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2023-01-18 15:42:13', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2023-01-18 15:42:13', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2023-01-18 15:42:13', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2023-01-18 15:42:13', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2023-01-18 15:42:14', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2023-01-18 15:42:14', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2023-01-18 15:42:14', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2023-01-18 15:42:14', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2023-01-18 15:42:14', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2023-01-18 15:42:14', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2023-01-18 15:42:14', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2023-01-18 15:42:14', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2023-01-18 15:42:14', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', '', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2023-01-18 15:42:14', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', '', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2023-01-18 15:42:14', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2023-01-18 15:42:15', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2023-01-18 15:42:15', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (115, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2023-01-18 15:42:15', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (116, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2023-01-18 15:42:15', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (117, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', '', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2023-01-18 15:42:15', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2023-01-18 15:42:15', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2023-01-18 15:42:15', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2023-01-18 15:42:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2023-01-18 15:42:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2023-01-18 15:42:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2023-01-18 15:42:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2023-01-18 15:42:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2023-01-18 15:42:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2023-01-18 15:42:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2023-01-18 15:42:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2023-01-18 15:42:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2023-01-18 15:42:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2023-01-18 15:42:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2023-01-18 15:42:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2023-01-18 15:42:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2023-01-18 15:42:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2023-01-18 15:42:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2023-01-18 15:42:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2023-01-18 15:42:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2023-01-18 15:42:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2023-01-18 15:42:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2023-01-18 15:42:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2023-01-18 15:42:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2023-01-18 15:42:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2023-01-18 15:42:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2023-01-18 15:42:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2023-01-18 15:42:16', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2023-01-18 15:42:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2023-01-18 15:42:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2023-01-18 15:42:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2023-01-18 15:42:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2023-01-18 15:42:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2023-01-18 15:42:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2023-01-18 15:42:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2023-01-18 15:42:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2023-01-18 15:42:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2023-01-18 15:42:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2023-01-18 15:42:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2023-01-18 15:42:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2023-01-18 15:42:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2023-01-18 15:42:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2023-01-18 15:42:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2023-01-18 15:42:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '日志导出', 500, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2023-01-18 15:42:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2023-01-18 15:42:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2023-01-18 15:42:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2023-01-18 15:42:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '账户解锁', 501, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2023-01-18 15:42:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2023-01-18 15:42:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2023-01-18 15:42:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2023-01-18 15:42:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2023-01-18 15:42:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2023-01-18 15:42:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2023-01-18 15:42:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2023-01-18 15:42:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2023-01-18 15:42:18', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 6, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2023-01-18 15:42:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 116, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2023-01-18 15:42:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 116, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2023-01-18 15:42:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 116, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2023-01-18 15:42:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 116, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2023-01-18 15:42:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 116, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2023-01-18 15:42:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 116, 6, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2023-01-18 15:42:19', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2060, '排班管理', 0, 5, 'duty', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'chart', 'admin', '2023-01-28 14:33:08', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2097, '值班记录', 2060, 2, 'duty_log', 'duty/duty_log/index', NULL, 1, 0, 'C', '0', '0', 'duty:duty_log:list', '#', 'admin', '2023-01-30 00:05:45', 'admin', '2023-02-01 14:19:53', '值班记录菜单');
INSERT INTO `sys_menu` VALUES (2098, '值班记录查询', 2097, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'duty:duty_log:query', '#', 'admin', '2023-01-30 00:05:45', 'admin', '2023-01-30 18:10:37', '');
INSERT INTO `sys_menu` VALUES (2099, '值班记录新增', 2097, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'duty:duty_log:add', '#', 'admin', '2023-01-30 00:05:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2100, '值班记录修改', 2097, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'duty:duty_log:edit', '#', 'admin', '2023-01-30 00:05:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2101, '值班记录删除', 2097, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'duty:duty_log:remove', '#', 'admin', '2023-01-30 00:05:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2102, '值班记录导出', 2097, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'duty:duty_log:export', '#', 'admin', '2023-01-30 00:05:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2103, '值班类型', 2060, 1, 'duty', 'duty/duty/index', NULL, 1, 0, 'C', '0', '0', 'duty:duty:list', '#', 'admin', '2023-01-30 00:05:54', '', NULL, '值班类型菜单');
INSERT INTO `sys_menu` VALUES (2104, '值班类型查询', 2103, 1, '#', '', NULL, 1, 0, 'F', '0', '0', 'duty:duty:query', '#', 'admin', '2023-01-30 00:05:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2105, '值班类型新增', 2103, 2, '#', '', NULL, 1, 0, 'F', '0', '0', 'duty:duty:add', '#', 'admin', '2023-01-30 00:05:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2106, '值班类型修改', 2103, 3, '#', '', NULL, 1, 0, 'F', '0', '0', 'duty:duty:edit', '#', 'admin', '2023-01-30 00:05:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2107, '值班类型删除', 2103, 4, '#', '', NULL, 1, 0, 'F', '0', '0', 'duty:duty:remove', '#', 'admin', '2023-01-30 00:05:54', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2108, '值班类型导出', 2103, 5, '#', '', NULL, 1, 0, 'F', '0', '0', 'duty:duty:export', '#', 'admin', '2023-01-30 00:05:54', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '通知公告表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 578 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '操作日志记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,102\",\"children\":[],\"createBy\":\"admin\",\"deptName\":\"打工人\",\"orderNum\":3,\"params\":{},\"parentId\":102,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-18 16:06:04');
INSERT INTO `sys_oper_log` VALUES (101, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2023/01/18/blob_20230118161010A001.png\",\"code\":200}', 0, NULL, '2023-01-18 16:10:10');
INSERT INTO `sys_oper_log` VALUES (102, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":true,\"createBy\":\"admin\",\"createTime\":\"2023-01-18 15:42:12\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":103,\"deptName\":\"研发部门\",\"leader\":\"若依\",\"orderNum\":1,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"email\":\"ry@163.com\",\"loginDate\":\"2023-01-18 15:49:51\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"若依\",\"params\":{},\"phonenumber\":\"15888888888\",\"remark\":\"管理员\",\"roles\":[{\"admin\":true,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":1,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"roleSort\":1,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"userId\":1,\"userName\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-18 16:10:17');
INSERT INTO `sys_oper_log` VALUES (103, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', NULL, '/system/config', '127.0.0.1', '内网IP', '{\"configId\":1,\"configKey\":\"sys.index.skinName\",\"configName\":\"主框架页-默认皮肤样式名称\",\"configType\":\"Y\",\"configValue\":\"skin-yellow\",\"createBy\":\"admin\",\"createTime\":\"2023-01-18 15:42:30\",\"params\":{},\"remark\":\"蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-18 16:11:52');
INSERT INTO `sys_oper_log` VALUES (104, '参数管理', 2, 'com.ruoyi.web.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', NULL, '/system/config', '127.0.0.1', '内网IP', '{\"configId\":3,\"configKey\":\"sys.index.sideTheme\",\"configName\":\"主框架页-侧边栏主题\",\"configType\":\"Y\",\"configValue\":\"theme-light\",\"createBy\":\"admin\",\"createTime\":\"2023-01-18 15:42:30\",\"params\":{},\"remark\":\"深色主题theme-dark，浅色主题theme-light\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-18 16:12:27');
INSERT INTO `sys_oper_log` VALUES (105, '在线用户', 7, 'com.ruoyi.web.controller.monitor.SysUserOnlineController.forceLogout()', 'DELETE', 1, 'admin', NULL, '/monitor/online/427630ca-ca24-41ff-8b7e-32f6cf5ae755', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-18 16:12:41');
INSERT INTO `sys_oper_log` VALUES (106, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '\"sys_notice,sys_job,sys_job_log,sys_logininfor,sys_config,sys_dict_data,sys_dict_type,sys_oper_log,sys_role_dept,sys_user_post,sys_role_menu,sys_user_role,sys_menu,sys_role,sys_post,sys_user,sys_dept\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-18 16:17:20');
INSERT INTO `sys_oper_log` VALUES (107, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_dict_data\"}', NULL, 0, NULL, '2023-01-18 16:18:15');
INSERT INTO `sys_oper_log` VALUES (108, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/101', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在下级部门,不允许删除\",\"code\":601}', 0, NULL, '2023-01-19 10:01:43');
INSERT INTO `sys_oper_log` VALUES (109, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/103', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":601}', 0, NULL, '2023-01-19 10:01:48');
INSERT INTO `sys_oper_log` VALUES (110, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,2,103,1016,1017,1018,1019,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112],\"params\":{},\"roleId\":100,\"roleKey\":\"3\",\"roleName\":\"主任\",\"roleSort\":3,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-19 10:08:17');
INSERT INTO `sys_oper_log` VALUES (111, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-01-19 10:08:17\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,2,103,1016,1017,1018,1019,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112],\"params\":{},\"roleId\":100,\"roleKey\":\"dempBoss\",\"roleName\":\"主任\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-19 10:08:39');
INSERT INTO `sys_oper_log` VALUES (112, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/4', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', 0, NULL, '2023-01-19 10:20:03');
INSERT INTO `sys_oper_log` VALUES (113, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-01-18 15:42:12\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":105,\"deptName\":\"测试部门\",\"leader\":\"若依\",\"orderNum\":3,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"deptId\":100,\"email\":\"ry@qq.com\",\"loginDate\":\"2023-01-18 15:42:12\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"若依\",\"params\":{},\"phonenumber\":\"15666666666\",\"postIds\":[2],\"remark\":\"测试员\",\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":2,\"userName\":\"ry\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-19 10:34:40');
INSERT INTO `sys_oper_log` VALUES (114, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-01-18 15:42:12\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"若依科技\",\"leader\":\"若依\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"deptId\":101,\"email\":\"ry@qq.com\",\"loginDate\":\"2023-01-18 15:42:12\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"若依\",\"params\":{},\"phonenumber\":\"15666666666\",\"postIds\":[2],\"remark\":\"测试员\",\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":2,\"userName\":\"ry\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-19 10:35:27');
INSERT INTO `sys_oper_log` VALUES (115, '代码生成', 6, 'com.dhdx.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '\"sys_scheduling\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-19 11:01:35');
INSERT INTO `sys_oper_log` VALUES (116, '用户管理', 3, 'com.dhdx.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/2', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-19 11:04:26');
INSERT INTO `sys_oper_log` VALUES (117, '部门管理', 2, 'com.dhdx.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"中国电信德宏分公司\",\"email\":\"\",\"leader\":\"\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"phone\":\"\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-19 11:05:00');
INSERT INTO `sys_oper_log` VALUES (118, '部门管理', 3, 'com.dhdx.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/104', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-19 11:05:11');
INSERT INTO `sys_oper_log` VALUES (119, '用户管理', 1, 'com.dhdx.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":100,\"nickName\":\"s\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":100,\"userName\":\"sss\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-19 11:06:46');
INSERT INTO `sys_oper_log` VALUES (120, '用户管理', 3, 'com.dhdx.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/100', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-19 11:07:47');
INSERT INTO `sys_oper_log` VALUES (121, '部门管理', 3, 'com.dhdx.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/101', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在下级部门,不允许删除\",\"code\":601}', 0, NULL, '2023-01-19 11:07:54');
INSERT INTO `sys_oper_log` VALUES (122, '部门管理', 3, 'com.dhdx.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/103', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-19 11:07:57');
INSERT INTO `sys_oper_log` VALUES (123, '部门管理', 3, 'com.dhdx.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/105', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-19 11:07:59');
INSERT INTO `sys_oper_log` VALUES (124, '部门管理', 3, 'com.dhdx.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/106', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-19 11:08:01');
INSERT INTO `sys_oper_log` VALUES (125, '部门管理', 3, 'com.dhdx.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/108', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-19 11:08:03');
INSERT INTO `sys_oper_log` VALUES (126, '部门管理', 3, 'com.dhdx.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/109', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-19 11:08:05');
INSERT INTO `sys_oper_log` VALUES (127, '部门管理', 3, 'com.dhdx.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/200', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-19 11:08:07');
INSERT INTO `sys_oper_log` VALUES (128, '部门管理', 3, 'com.dhdx.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/102', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-19 11:08:10');
INSERT INTO `sys_oper_log` VALUES (129, '部门管理', 3, 'com.dhdx.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/107', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-19 11:08:12');
INSERT INTO `sys_oper_log` VALUES (130, '部门管理', 3, 'com.dhdx.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/101', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-19 11:08:14');
INSERT INTO `sys_oper_log` VALUES (131, '部门管理', 1, 'com.dhdx.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"createBy\":\"admin\",\"deptName\":\"网络部\",\"orderNum\":0,\"params\":{},\"parentId\":100,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-19 11:08:41');
INSERT INTO `sys_oper_log` VALUES (132, '部门管理', 1, 'com.dhdx.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"createBy\":\"admin\",\"deptName\":\"云中台\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-19 11:08:51');
INSERT INTO `sys_oper_log` VALUES (133, '部门管理', 1, 'com.dhdx.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"createBy\":\"admin\",\"deptName\":\"办公室\",\"orderNum\":3,\"params\":{},\"parentId\":100,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-19 11:09:05');
INSERT INTO `sys_oper_log` VALUES (134, '部门管理', 2, 'com.dhdx.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":203,\"deptName\":\"办公室\",\"orderNum\":2,\"params\":{},\"parentId\":100,\"parentName\":\"中国电信德宏分公司\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-19 11:09:12');
INSERT INTO `sys_oper_log` VALUES (135, '用户管理', 6, 'com.dhdx.web.controller.system.SysUserController.importData()', 'POST', 1, 'admin', NULL, '/system/user/importData', '127.0.0.1', '内网IP', 'false', '{\"msg\":\"恭喜您，数据已全部导入成功！共 1 条，数据如下：<br/>1、账号 syx 导入成功\",\"code\":200}', 0, NULL, '2023-01-19 11:12:07');
INSERT INTO `sys_oper_log` VALUES (136, '部门管理', 1, 'com.dhdx.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"createBy\":\"admin\",\"deptName\":\"政企客户部\",\"orderNum\":4,\"params\":{},\"parentId\":100,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-19 11:13:34');
INSERT INTO `sys_oper_log` VALUES (137, '菜单管理', 3, 'com.dhdx.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/4', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', 0, NULL, '2023-01-19 11:14:24');
INSERT INTO `sys_oper_log` VALUES (138, '菜单管理', 3, 'com.dhdx.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/4', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', 0, NULL, '2023-01-19 12:18:21');
INSERT INTO `sys_oper_log` VALUES (139, '菜单管理', 2, 'com.dhdx.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2023-01-18 15:42:13\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":4,\"menuName\":\"若依官网\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"ss\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-19 12:19:29');
INSERT INTO `sys_oper_log` VALUES (140, '菜单管理', 2, 'com.dhdx.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2023-01-18 15:42:13\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":4,\"menuName\":\"别点我\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"ss\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-19 12:20:52');
INSERT INTO `sys_oper_log` VALUES (141, '菜单管理', 2, 'com.dhdx.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2023-01-18 15:42:13\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":4,\"menuName\":\"排班管理\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"ss\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-19 12:21:23');
INSERT INTO `sys_oper_log` VALUES (142, '菜单管理', 2, 'com.dhdx.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2023-01-18 15:42:13\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":4,\"menuName\":\"排班管理\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"system:user:list\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-19 12:22:24');
INSERT INTO `sys_oper_log` VALUES (143, '菜单管理', 2, 'com.dhdx.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"/system/user\",\"createTime\":\"2023-01-18 15:42:13\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":4,\"menuName\":\"排班管理\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"system:user:list\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-19 12:23:07');
INSERT INTO `sys_oper_log` VALUES (144, '菜单管理', 2, 'com.dhdx.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"system/user/index\",\"createTime\":\"2023-01-18 15:42:13\",\"icon\":\"build\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":4,\"menuName\":\"排班管理\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"system:user:list\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-19 12:24:51');
INSERT INTO `sys_oper_log` VALUES (145, '菜单管理', 1, 'com.dhdx.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"大大\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":4,\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-19 12:25:28');
INSERT INTO `sys_oper_log` VALUES (146, '用户管理', 4, 'com.dhdx.web.controller.system.SysUserController.insertAuthRole()', 'PUT', 1, 'admin', NULL, '/system/user/authRole', '127.0.0.1', '内网IP', '101 [2,100]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 09:07:37');
INSERT INTO `sys_oper_log` VALUES (147, '角色管理', 1, 'com.dhdx.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006],\"params\":{},\"roleId\":101,\"roleKey\":\"test\",\"roleName\":\"测试\",\"roleSort\":4,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 09:08:55');
INSERT INTO `sys_oper_log` VALUES (148, '用户管理', 4, 'com.dhdx.web.controller.system.SysUserController.insertAuthRole()', 'PUT', 1, 'admin', NULL, '/system/user/authRole', '127.0.0.1', '内网IP', '101 [2,100,101]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 09:09:10');
INSERT INTO `sys_oper_log` VALUES (149, '用户管理', 4, 'com.dhdx.web.controller.system.SysUserController.insertAuthRole()', 'PUT', 1, 'admin', NULL, '/system/user/authRole', '127.0.0.1', '内网IP', '101 [100]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 09:12:25');
INSERT INTO `sys_oper_log` VALUES (150, '代码生成', 6, 'com.dhdx.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '\"sys_duty_log,sys_duty\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 09:52:13');
INSERT INTO `sys_oper_log` VALUES (151, '代码生成', 3, 'com.dhdx.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/20,19,18', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 09:54:00');
INSERT INTO `sys_oper_log` VALUES (152, '代码生成', 6, 'com.dhdx.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '\"sys_duty,sys_duty_log\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 09:54:13');
INSERT INTO `sys_oper_log` VALUES (153, '代码生成', 3, 'com.dhdx.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/21,22', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 10:00:10');
INSERT INTO `sys_oper_log` VALUES (154, '代码生成', 6, 'com.dhdx.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '\"sys_duty,sys_duty_log\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 10:00:40');
INSERT INTO `sys_oper_log` VALUES (155, '代码生成', 2, 'com.dhdx.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/sys_duty', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 10:03:57');
INSERT INTO `sys_oper_log` VALUES (156, '代码生成', 2, 'com.dhdx.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/sys_duty_log', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 10:03:59');
INSERT INTO `sys_oper_log` VALUES (157, '代码生成', 2, 'com.dhdx.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/sys_duty', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 10:11:47');
INSERT INTO `sys_oper_log` VALUES (158, '代码生成', 2, 'com.dhdx.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"duty\",\"className\":\"SysDuty\",\"columns\":[{\"capJavaField\":\"DutyId\",\"columnComment\":\"del_flag\",\"columnId\":223,\"columnName\":\"duty_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 10:00:40\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"dutyId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":23,\"updateBy\":\"\",\"updateTime\":\"2023-01-28 10:11:47\",\"usableColumn\":false},{\"capJavaField\":\"DutyType\",\"columnComment\":\"值班类型\",\"columnId\":224,\"columnName\":\"duty_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 10:00:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"radio\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutyType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":23,\"updateBy\":\"\",\"updateTime\":\"2023-01-28 10:11:47\",\"usableColumn\":false},{\"capJavaField\":\"DutySort\",\"columnComment\":\"显示顺序\",\"columnId\":225,\"columnName\":\"duty_sort\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 10:00:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutySort\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":23,\"updateBy\":\"\",\"updateTime\":\"2023-01-28 10:11:47\",\"usableColumn\":false},{\"capJavaField\":\"Status\",\"columnComment\":\"值班状态（0正常 1停用）\",\"columnId\":228,\"columnName\":\"status\",\"columnType\":\"char(1)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 10:00:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"radio\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 10:12:19');
INSERT INTO `sys_oper_log` VALUES (159, '代码生成', 2, 'com.dhdx.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"log\",\"className\":\"SysDutyLog\",\"columns\":[{\"capJavaField\":\"LogId\",\"columnComment\":\"值班日志主键\",\"columnId\":237,\"columnName\":\"log_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 10:00:40\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"logId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":24,\"updateBy\":\"\",\"updateTime\":\"2023-01-28 10:03:59\",\"usableColumn\":false},{\"capJavaField\":\"DutyId\",\"columnComment\":\"值班类型id\",\"columnId\":238,\"columnName\":\"duty_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 10:00:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":24,\"updateBy\":\"\",\"updateTime\":\"2023-01-28 10:03:59\",\"usableColumn\":false},{\"capJavaField\":\"DutyName\",\"columnComment\":\"值班类型名称\",\"columnId\":239,\"columnName\":\"duty_name\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 10:00:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"dutyName\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":24,\"updateBy\":\"\",\"updateTime\":\"2023-01-28 10:03:59\",\"usableColumn\":false},{\"capJavaField\":\"UserId\",\"columnComment\":\"值班人员ID\",\"columnId\":240,\"columnName\":\"user_id\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 10:00:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 10:12:57');
INSERT INTO `sys_oper_log` VALUES (160, '代码生成', 8, 'com.dhdx.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_duty\"}', NULL, 0, NULL, '2023-01-28 10:13:01');
INSERT INTO `sys_oper_log` VALUES (161, '菜单管理', 3, 'com.dhdx.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2000', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 10:19:09');
INSERT INTO `sys_oper_log` VALUES (162, '菜单管理', 3, 'com.dhdx.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/4', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', 0, NULL, '2023-01-28 10:19:12');
INSERT INTO `sys_oper_log` VALUES (163, '菜单管理', 1, 'com.dhdx.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"table\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"值班管理\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"duty\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 10:22:42');
INSERT INTO `sys_oper_log` VALUES (164, '菜单管理', 3, 'com.dhdx.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2019', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 10:23:32');
INSERT INTO `sys_oper_log` VALUES (165, '菜单管理', 1, 'com.dhdx.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"duty\",\"createBy\":\"admin\",\"icon\":\"table\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"值班\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"dury\",\"perms\":\"system:duty:list\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 10:24:28');
INSERT INTO `sys_oper_log` VALUES (166, '菜单管理', 2, 'com.dhdx.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"duty\",\"createTime\":\"2023-01-28 10:24:28\",\"icon\":\"table\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2020,\"menuName\":\"值班\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":1,\"path\":\"dury\",\"perms\":\"system:duty:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 10:28:59');
INSERT INTO `sys_oper_log` VALUES (167, '菜单管理', 1, 'com.dhdx.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"值班类型查询\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2020,\"perms\":\"system:duty:query\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 10:31:18');
INSERT INTO `sys_oper_log` VALUES (168, '代码生成', 2, 'com.dhdx.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"log\",\"className\":\"SysDutyLog\",\"columns\":[{\"capJavaField\":\"LogId\",\"columnComment\":\"值班日志主键\",\"columnId\":237,\"columnName\":\"log_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 10:00:40\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"logId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":24,\"updateBy\":\"\",\"updateTime\":\"2023-01-28 10:12:57\",\"usableColumn\":false},{\"capJavaField\":\"DutyId\",\"columnComment\":\"值班类型id\",\"columnId\":238,\"columnName\":\"duty_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 10:00:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":24,\"updateBy\":\"\",\"updateTime\":\"2023-01-28 10:12:57\",\"usableColumn\":false},{\"capJavaField\":\"DutyName\",\"columnComment\":\"值班类型名称\",\"columnId\":239,\"columnName\":\"duty_name\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 10:00:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"dutyName\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":24,\"updateBy\":\"\",\"updateTime\":\"2023-01-28 10:12:57\",\"usableColumn\":false},{\"capJavaField\":\"UserId\",\"columnComment\":\"值班人员ID\",\"columnId\":240,\"columnName\":\"user_id\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 10:00:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 10:41:20');
INSERT INTO `sys_oper_log` VALUES (169, '菜单管理', 1, 'com.dhdx.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"icon\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"值班管理\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"dury\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 10:46:59');
INSERT INTO `sys_oper_log` VALUES (170, '菜单管理', 2, 'com.dhdx.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"duty\",\"createTime\":\"2023-01-28 10:24:28\",\"icon\":\"table\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2020,\"menuName\":\"值班\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":2022,\"path\":\"dury\",\"perms\":\"system:duty:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 10:47:10');
INSERT INTO `sys_oper_log` VALUES (171, '代码生成', 2, 'com.dhdx.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/sys_duty', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 10:48:21');
INSERT INTO `sys_oper_log` VALUES (172, '代码生成', 2, 'com.dhdx.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"duty\",\"className\":\"SysDuty\",\"columns\":[{\"capJavaField\":\"DutyId\",\"columnComment\":\"del_flag\",\"columnId\":223,\"columnName\":\"duty_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 10:00:40\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"dutyId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":23,\"updateBy\":\"\",\"updateTime\":\"2023-01-28 10:48:21\",\"usableColumn\":false},{\"capJavaField\":\"DutyType\",\"columnComment\":\"值班类型\",\"columnId\":224,\"columnName\":\"duty_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 10:00:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"radio\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutyType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":23,\"updateBy\":\"\",\"updateTime\":\"2023-01-28 10:48:21\",\"usableColumn\":false},{\"capJavaField\":\"DutySort\",\"columnComment\":\"显示顺序\",\"columnId\":225,\"columnName\":\"duty_sort\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 10:00:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutySort\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":23,\"updateBy\":\"\",\"updateTime\":\"2023-01-28 10:48:21\",\"usableColumn\":false},{\"capJavaField\":\"Status\",\"columnComment\":\"值班状态（0正常 1停用）\",\"columnId\":228,\"columnName\":\"status\",\"columnType\":\"char(1)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 10:00:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"radio\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 10:54:39');
INSERT INTO `sys_oper_log` VALUES (173, '代码生成', 8, 'com.dhdx.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_duty\"}', NULL, 0, NULL, '2023-01-28 10:55:03');
INSERT INTO `sys_oper_log` VALUES (174, '菜单管理', 3, 'com.dhdx.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2021', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 11:28:14');
INSERT INTO `sys_oper_log` VALUES (175, '菜单管理', 3, 'com.dhdx.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2023', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', 0, NULL, '2023-01-28 11:28:18');
INSERT INTO `sys_oper_log` VALUES (176, '菜单管理', 3, 'com.dhdx.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2024', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 11:28:26');
INSERT INTO `sys_oper_log` VALUES (177, '菜单管理', 3, 'com.dhdx.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2025', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 11:28:28');
INSERT INTO `sys_oper_log` VALUES (178, '菜单管理', 3, 'com.dhdx.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2027', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 11:28:30');
INSERT INTO `sys_oper_log` VALUES (179, '菜单管理', 3, 'com.dhdx.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2028', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 11:28:32');
INSERT INTO `sys_oper_log` VALUES (180, '菜单管理', 3, 'com.dhdx.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2026', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 11:28:34');
INSERT INTO `sys_oper_log` VALUES (181, '菜单管理', 3, 'com.dhdx.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2023', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 11:28:36');
INSERT INTO `sys_oper_log` VALUES (182, '代码生成', 2, 'com.dhdx.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"duty\",\"className\":\"SysDuty\",\"columns\":[{\"capJavaField\":\"DutyId\",\"columnComment\":\"del_flag\",\"columnId\":223,\"columnName\":\"duty_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 10:00:40\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"dutyId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":23,\"updateBy\":\"\",\"updateTime\":\"2023-01-28 10:54:39\",\"usableColumn\":false},{\"capJavaField\":\"DutyType\",\"columnComment\":\"值班类型\",\"columnId\":224,\"columnName\":\"duty_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 10:00:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"radio\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutyType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":23,\"updateBy\":\"\",\"updateTime\":\"2023-01-28 10:54:39\",\"usableColumn\":false},{\"capJavaField\":\"DutySort\",\"columnComment\":\"显示顺序\",\"columnId\":225,\"columnName\":\"duty_sort\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 10:00:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutySort\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":23,\"updateBy\":\"\",\"updateTime\":\"2023-01-28 10:54:39\",\"usableColumn\":false},{\"capJavaField\":\"Status\",\"columnComment\":\"值班状态（0正常 1停用）\",\"columnId\":228,\"columnName\":\"status\",\"columnType\":\"char(1)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 10:00:40\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"radio\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 11:31:39');
INSERT INTO `sys_oper_log` VALUES (183, '代码生成', 3, 'com.dhdx.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/23,24', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 11:31:50');
INSERT INTO `sys_oper_log` VALUES (184, '代码生成', 6, 'com.dhdx.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '\"sys_duty\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 11:31:55');
INSERT INTO `sys_oper_log` VALUES (185, '代码生成', 2, 'com.dhdx.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"duty\",\"className\":\"SysDuty\",\"columns\":[{\"capJavaField\":\"DutyId\",\"columnComment\":\"del_flag\",\"columnId\":247,\"columnName\":\"duty_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 11:31:55\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"dutyId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":25,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DutyType\",\"columnComment\":\"值班类型\",\"columnId\":248,\"columnName\":\"duty_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 11:31:55\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutyType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":25,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DutySort\",\"columnComment\":\"显示顺序\",\"columnId\":249,\"columnName\":\"duty_sort\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 11:31:55\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutySort\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":25,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Status\",\"columnComment\":\"值班状态（0正常 1停用）\",\"columnId\":250,\"columnName\":\"status\",\"columnType\":\"char(1)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 11:31:55\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"radio\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"sta', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 11:32:07');
INSERT INTO `sys_oper_log` VALUES (186, '代码生成', 8, 'com.dhdx.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_duty\"}', NULL, 0, NULL, '2023-01-28 11:32:11');
INSERT INTO `sys_oper_log` VALUES (187, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/25', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 11:40:54');
INSERT INTO `sys_oper_log` VALUES (188, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '\"sys_duty\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 11:40:59');
INSERT INTO `sys_oper_log` VALUES (189, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"duty\",\"className\":\"SysDuty\",\"columns\":[{\"capJavaField\":\"DutyId\",\"columnComment\":\"del_flag\",\"columnId\":259,\"columnName\":\"duty_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 11:40:59\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"dutyId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DutyType\",\"columnComment\":\"值班类型\",\"columnId\":260,\"columnName\":\"duty_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 11:40:59\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutyType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DutySort\",\"columnComment\":\"显示顺序\",\"columnId\":261,\"columnName\":\"duty_sort\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 11:40:59\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutySort\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":26,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Status\",\"columnComment\":\"值班状态（0正常 1停用）\",\"columnId\":262,\"columnName\":\"status\",\"columnType\":\"char(1)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 11:40:59\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"radio\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"sta', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 11:41:27');
INSERT INTO `sys_oper_log` VALUES (190, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_duty\"}', NULL, 0, NULL, '2023-01-28 11:41:37');
INSERT INTO `sys_oper_log` VALUES (191, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/26', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 11:56:44');
INSERT INTO `sys_oper_log` VALUES (192, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '\"sys_duty\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 11:56:54');
INSERT INTO `sys_oper_log` VALUES (193, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/27', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 11:57:29');
INSERT INTO `sys_oper_log` VALUES (194, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '\"sys_duty\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 11:57:34');
INSERT INTO `sys_oper_log` VALUES (195, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/28', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 11:59:25');
INSERT INTO `sys_oper_log` VALUES (196, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '\"sys_duty\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 11:59:36');
INSERT INTO `sys_oper_log` VALUES (197, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_duty\"}', NULL, 0, NULL, '2023-01-28 12:00:17');
INSERT INTO `sys_oper_log` VALUES (198, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"dupy\",\"className\":\"SysDuty\",\"columns\":[{\"capJavaField\":\"DutyId\",\"columnComment\":\"del_flag\",\"columnId\":295,\"columnName\":\"duty_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 11:59:36\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"dutyId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":29,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DutyType\",\"columnComment\":\"值班类型\",\"columnId\":296,\"columnName\":\"duty_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 11:59:36\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutyType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":29,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DutySort\",\"columnComment\":\"显示顺序\",\"columnId\":297,\"columnName\":\"duty_sort\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 11:59:36\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutySort\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":29,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Status\",\"columnComment\":\"值班状态（0正常 1停用）\",\"columnId\":298,\"columnName\":\"status\",\"columnType\":\"char(1)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 11:59:36\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"radio\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"sta', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 12:09:39');
INSERT INTO `sys_oper_log` VALUES (199, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_duty\"}', NULL, 0, NULL, '2023-01-28 12:09:44');
INSERT INTO `sys_oper_log` VALUES (200, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"dupy/dupy/index\",\"createTime\":\"2023-01-28 13:20:22\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2029,\"menuName\":\"值班类型\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2022,\"path\":\"dupy\",\"perms\":\"dupy:dupy:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 13:27:25');
INSERT INTO `sys_oper_log` VALUES (201, '值班类型', 1, 'com.ruoyi.duty.controller.SysDutyController.add()', 'POST', 1, 'admin', NULL, '/dupy/dupy', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-01-28 13:37:24\",\"dutySort\":2,\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'duty_type\' doesn\'t have a default value\r\n### The error may exist in file [D:\\syx_temp\\RuoYi-Vue\\royi-dupy\\target\\classes\\mapper\\dupy\\SysDutyMapper.xml]\r\n### The error may involve com.ruoyi.dupy.mapper.SysDutyMapper.insertSysDuty-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_duty          ( duty_sort,                                                                              create_time )           values ( ?,                                                                              ? )\r\n### Cause: java.sql.SQLException: Field \'duty_type\' doesn\'t have a default value\n; Field \'duty_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'duty_type\' doesn\'t have a default value', '2023-01-28 13:37:24');
INSERT INTO `sys_oper_log` VALUES (202, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2030', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 13:40:31');
INSERT INTO `sys_oper_log` VALUES (203, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2031', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 13:40:33');
INSERT INTO `sys_oper_log` VALUES (204, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2033', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 13:40:36');
INSERT INTO `sys_oper_log` VALUES (205, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2034', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 13:40:39');
INSERT INTO `sys_oper_log` VALUES (206, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2032', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 13:40:41');
INSERT INTO `sys_oper_log` VALUES (207, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2029', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 13:40:44');
INSERT INTO `sys_oper_log` VALUES (208, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2022', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 13:40:47');
INSERT INTO `sys_oper_log` VALUES (209, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/29', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 13:42:24');
INSERT INTO `sys_oper_log` VALUES (210, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"是否删除\",\"dictType\":\"sys_del_flag\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 13:45:22');
INSERT INTO `sys_oper_log` VALUES (211, '字典类型', 3, 'com.ruoyi.web.controller.system.SysDictTypeController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dict/type/100', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 13:45:48');
INSERT INTO `sys_oper_log` VALUES (212, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '\"sys_duty\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 13:46:13');
INSERT INTO `sys_oper_log` VALUES (213, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"值排班管理\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"dupy\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 13:48:03');
INSERT INTO `sys_oper_log` VALUES (214, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/sys_duty', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 13:50:44');
INSERT INTO `sys_oper_log` VALUES (215, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/30', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 13:51:12');
INSERT INTO `sys_oper_log` VALUES (216, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '\"sys_duty\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 13:51:15');
INSERT INTO `sys_oper_log` VALUES (217, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/31', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 13:52:14');
INSERT INTO `sys_oper_log` VALUES (218, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '\"sys_duty\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 13:52:19');
INSERT INTO `sys_oper_log` VALUES (219, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/sys_duty', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 13:52:38');
INSERT INTO `sys_oper_log` VALUES (220, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"duty\",\"className\":\"SysDuty\",\"columns\":[{\"capJavaField\":\"DutyId\",\"columnComment\":\"del_flag\",\"columnId\":327,\"columnName\":\"duty_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 13:52:18\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"dutyId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":32,\"updateBy\":\"\",\"updateTime\":\"2023-01-28 13:52:38\",\"usableColumn\":false},{\"capJavaField\":\"DutyType\",\"columnComment\":\"值班类型\",\"columnId\":328,\"columnName\":\"duty_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 13:52:18\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutyType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":32,\"updateBy\":\"\",\"updateTime\":\"2023-01-28 13:52:38\",\"usableColumn\":false},{\"capJavaField\":\"DutySort\",\"columnComment\":\"显示顺序\",\"columnId\":329,\"columnName\":\"duty_sort\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 13:52:18\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutySort\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":32,\"updateBy\":\"\",\"updateTime\":\"2023-01-28 13:52:38\",\"usableColumn\":false},{\"capJavaField\":\"CreateBy\",\"columnComment\":\"创建者\",\"columnId\":332,\"columnName\":\"create_by\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 13:52:18\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 13:54:44');
INSERT INTO `sys_oper_log` VALUES (221, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_duty\"}', NULL, 0, NULL, '2023-01-28 13:54:50');
INSERT INTO `sys_oper_log` VALUES (222, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_duty\"}', NULL, 0, NULL, '2023-01-28 13:55:27');
INSERT INTO `sys_oper_log` VALUES (223, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"duty\",\"className\":\"SysDuty\",\"columns\":[{\"capJavaField\":\"DutyId\",\"columnComment\":\"del_flag\",\"columnId\":327,\"columnName\":\"duty_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 13:52:18\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"dutyId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":32,\"updateBy\":\"\",\"updateTime\":\"2023-01-28 13:54:44\",\"usableColumn\":false},{\"capJavaField\":\"DutyType\",\"columnComment\":\"值班类型\",\"columnId\":328,\"columnName\":\"duty_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 13:52:18\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutyType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":32,\"updateBy\":\"\",\"updateTime\":\"2023-01-28 13:54:44\",\"usableColumn\":false},{\"capJavaField\":\"DutySort\",\"columnComment\":\"显示顺序\",\"columnId\":329,\"columnName\":\"duty_sort\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 13:52:18\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutySort\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":32,\"updateBy\":\"\",\"updateTime\":\"2023-01-28 13:54:44\",\"usableColumn\":false},{\"capJavaField\":\"CreateBy\",\"columnComment\":\"创建者\",\"columnId\":332,\"columnName\":\"create_by\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 13:52:18\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 13:57:39');
INSERT INTO `sys_oper_log` VALUES (224, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_duty\"}', NULL, 0, NULL, '2023-01-28 13:57:43');
INSERT INTO `sys_oper_log` VALUES (225, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_duty\"}', NULL, 0, NULL, '2023-01-28 13:58:30');
INSERT INTO `sys_oper_log` VALUES (226, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '\"sys_duty_log\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 13:59:37');
INSERT INTO `sys_oper_log` VALUES (227, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"duty\",\"className\":\"SysDutyLog\",\"columns\":[{\"capJavaField\":\"LogId\",\"columnComment\":\"值班日志主键\",\"columnId\":337,\"columnName\":\"log_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 13:59:37\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"logId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":33,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DutyId\",\"columnComment\":\"值班类型id\",\"columnId\":338,\"columnName\":\"duty_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 13:59:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":33,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DutyName\",\"columnComment\":\"值班类型名称\",\"columnId\":339,\"columnName\":\"duty_name\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 13:59:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"dutyName\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":33,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"UserId\",\"columnComment\":\"值班人员ID\",\"columnId\":340,\"columnName\":\"user_id\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 13:59:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"userId\",\"javaType\":\"String\",\"list', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 14:01:07');
INSERT INTO `sys_oper_log` VALUES (228, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_duty_log\"}', NULL, 0, NULL, '2023-01-28 14:01:10');
INSERT INTO `sys_oper_log` VALUES (229, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"duty-log\",\"className\":\"SysDutyLog\",\"columns\":[{\"capJavaField\":\"LogId\",\"columnComment\":\"值班日志主键\",\"columnId\":337,\"columnName\":\"log_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 13:59:37\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"logId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":33,\"updateBy\":\"\",\"updateTime\":\"2023-01-28 14:01:07\",\"usableColumn\":false},{\"capJavaField\":\"DutyId\",\"columnComment\":\"值班类型id\",\"columnId\":338,\"columnName\":\"duty_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 13:59:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":33,\"updateBy\":\"\",\"updateTime\":\"2023-01-28 14:01:07\",\"usableColumn\":false},{\"capJavaField\":\"DutyName\",\"columnComment\":\"值班类型名称\",\"columnId\":339,\"columnName\":\"duty_name\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 13:59:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"dutyName\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":33,\"updateBy\":\"\",\"updateTime\":\"2023-01-28 14:01:07\",\"usableColumn\":false},{\"capJavaField\":\"UserId\",\"columnComment\":\"值班人员ID\",\"columnId\":340,\"columnName\":\"user_id\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 13:59:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInse', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 14:04:06');
INSERT INTO `sys_oper_log` VALUES (230, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_duty_log\"}', NULL, 0, NULL, '2023-01-28 14:04:08');
INSERT INTO `sys_oper_log` VALUES (231, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_duty\"}', NULL, 0, NULL, '2023-01-28 14:04:19');
INSERT INTO `sys_oper_log` VALUES (232, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"chart\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"排班管理\",\"menuType\":\"M\",\"orderNum\":5,\"params\":{},\"parentId\":0,\"path\":\"duty\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 14:33:08');
INSERT INTO `sys_oper_log` VALUES (233, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-duty/duty/index\",\"createTime\":\"2023-01-28 14:09:12\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2054,\"menuName\":\"值班类型\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2060,\"path\":\"duty\",\"perms\":\"ruoyi-duty:duty:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 14:33:30');
INSERT INTO `sys_oper_log` VALUES (234, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-duty/duty-log/index\",\"createTime\":\"2023-01-28 14:09:05\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2048,\"menuName\":\"值班记录\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2060,\"path\":\"duty-log\",\"perms\":\"ruoyi-duty:duty-log:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 14:33:42');
INSERT INTO `sys_oper_log` VALUES (235, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2048', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', 0, NULL, '2023-01-28 14:35:35');
INSERT INTO `sys_oper_log` VALUES (236, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2049', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 14:35:45');
INSERT INTO `sys_oper_log` VALUES (237, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2050', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 14:35:46');
INSERT INTO `sys_oper_log` VALUES (238, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2052', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 14:35:48');
INSERT INTO `sys_oper_log` VALUES (239, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2053', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 14:35:50');
INSERT INTO `sys_oper_log` VALUES (240, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2054', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', 0, NULL, '2023-01-28 14:35:52');
INSERT INTO `sys_oper_log` VALUES (241, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2056', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 14:35:56');
INSERT INTO `sys_oper_log` VALUES (242, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2059', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 14:35:57');
INSERT INTO `sys_oper_log` VALUES (243, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2058', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 14:35:58');
INSERT INTO `sys_oper_log` VALUES (244, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2051', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 14:36:00');
INSERT INTO `sys_oper_log` VALUES (245, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2057', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 14:36:02');
INSERT INTO `sys_oper_log` VALUES (246, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2055', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 14:36:03');
INSERT INTO `sys_oper_log` VALUES (247, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2054', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 14:36:04');
INSERT INTO `sys_oper_log` VALUES (248, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2048', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 14:36:05');
INSERT INTO `sys_oper_log` VALUES (249, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"duty\",\"className\":\"SysDuty\",\"columns\":[{\"capJavaField\":\"DutyId\",\"columnComment\":\"del_flag\",\"columnId\":327,\"columnName\":\"duty_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 13:52:18\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"dutyId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":32,\"updateBy\":\"\",\"updateTime\":\"2023-01-28 13:57:39\",\"usableColumn\":false},{\"capJavaField\":\"DutyType\",\"columnComment\":\"值班类型\",\"columnId\":328,\"columnName\":\"duty_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 13:52:18\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutyType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":32,\"updateBy\":\"\",\"updateTime\":\"2023-01-28 13:57:39\",\"usableColumn\":false},{\"capJavaField\":\"DutySort\",\"columnComment\":\"显示顺序\",\"columnId\":329,\"columnName\":\"duty_sort\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 13:52:18\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutySort\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":32,\"updateBy\":\"\",\"updateTime\":\"2023-01-28 13:57:39\",\"usableColumn\":false},{\"capJavaField\":\"CreateBy\",\"columnComment\":\"创建者\",\"columnId\":332,\"columnName\":\"create_by\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 13:52:18\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 14:36:49');
INSERT INTO `sys_oper_log` VALUES (250, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"duty-log\",\"className\":\"SysDutyLog\",\"columns\":[{\"capJavaField\":\"LogId\",\"columnComment\":\"值班日志主键\",\"columnId\":337,\"columnName\":\"log_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 13:59:37\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"logId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":33,\"updateBy\":\"\",\"updateTime\":\"2023-01-28 14:04:05\",\"usableColumn\":false},{\"capJavaField\":\"DutyId\",\"columnComment\":\"值班类型id\",\"columnId\":338,\"columnName\":\"duty_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 13:59:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":33,\"updateBy\":\"\",\"updateTime\":\"2023-01-28 14:04:05\",\"usableColumn\":false},{\"capJavaField\":\"DutyName\",\"columnComment\":\"值班类型名称\",\"columnId\":339,\"columnName\":\"duty_name\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 13:59:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"dutyName\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":33,\"updateBy\":\"\",\"updateTime\":\"2023-01-28 14:04:05\",\"usableColumn\":false},{\"capJavaField\":\"UserId\",\"columnComment\":\"值班人员ID\",\"columnId\":340,\"columnName\":\"user_id\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 13:59:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInse', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 14:37:00');
INSERT INTO `sys_oper_log` VALUES (251, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_duty_log\"}', NULL, 0, NULL, '2023-01-28 14:37:04');
INSERT INTO `sys_oper_log` VALUES (252, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_duty\"}', NULL, 0, NULL, '2023-01-28 14:37:09');
INSERT INTO `sys_oper_log` VALUES (253, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"duty_log\",\"className\":\"SysDutyLog\",\"columns\":[{\"capJavaField\":\"LogId\",\"columnComment\":\"值班日志主键\",\"columnId\":337,\"columnName\":\"log_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 13:59:37\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"logId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":33,\"updateBy\":\"\",\"updateTime\":\"2023-01-28 14:37:00\",\"usableColumn\":false},{\"capJavaField\":\"DutyId\",\"columnComment\":\"值班类型id\",\"columnId\":338,\"columnName\":\"duty_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 13:59:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":33,\"updateBy\":\"\",\"updateTime\":\"2023-01-28 14:37:00\",\"usableColumn\":false},{\"capJavaField\":\"DutyName\",\"columnComment\":\"值班类型名称\",\"columnId\":339,\"columnName\":\"duty_name\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 13:59:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"dutyName\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":33,\"updateBy\":\"\",\"updateTime\":\"2023-01-28 14:37:00\",\"usableColumn\":false},{\"capJavaField\":\"UserId\",\"columnComment\":\"值班人员ID\",\"columnId\":340,\"columnName\":\"user_id\",\"columnType\":\"varchar(50)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 13:59:37\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInse', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 14:41:30');
INSERT INTO `sys_oper_log` VALUES (254, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_duty_log\"}', NULL, 0, NULL, '2023-01-28 14:41:32');
INSERT INTO `sys_oper_log` VALUES (255, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_duty\"}', NULL, 0, NULL, '2023-01-28 14:41:40');
INSERT INTO `sys_oper_log` VALUES (256, '字典类型', 5, 'com.ruoyi.web.controller.system.SysDictTypeController.export()', 'POST', 1, 'admin', NULL, '/system/dict/type/export', '127.0.0.1', '内网IP', '{\"params\":{}}', NULL, 0, NULL, '2023-01-28 15:34:30');
INSERT INTO `sys_oper_log` VALUES (257, '值班记录', 5, 'com.ruoyi.duty.controller.SysDutyLogController.export()', 'POST', 1, 'admin', NULL, '/duty/duty_log/export', '127.0.0.1', '内网IP', '{\"params\":{}}', NULL, 0, NULL, '2023-01-28 16:32:28');
INSERT INTO `sys_oper_log` VALUES (258, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-01-19 11:12:07\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":202,\"deptName\":\"云中台\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":202,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"邵曰信\",\"params\":{},\"phonenumber\":\"18088162921\",\"postIds\":[],\"roleIds\":[101],\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":100,\"roleKey\":\"dempBoss\",\"roleName\":\"主任\",\"roleSort\":3,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":101,\"userName\":\"syx\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 17:33:03');
INSERT INTO `sys_oper_log` VALUES (259, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-01-19 11:12:07\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":202,\"deptName\":\"云中台\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":202,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"邵曰信\",\"params\":{},\"phonenumber\":\"18088162921\",\"postIds\":[],\"roleIds\":[101],\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":100,\"roleKey\":\"dempBoss\",\"roleName\":\"主任\",\"roleSort\":3,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":101,\"userName\":\"syx\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 17:33:03');
INSERT INTO `sys_oper_log` VALUES (260, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":200,\"deptName\":\"打工人\",\"orderNum\":3,\"params\":{},\"parentId\":100,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-28 17:54:54');
INSERT INTO `sys_oper_log` VALUES (261, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"duty\",\"className\":\"SysDuty\",\"columns\":[{\"capJavaField\":\"DutyId\",\"columnComment\":\"id\",\"columnId\":327,\"columnName\":\"duty_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 13:52:18\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"dutyId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":32,\"updateBy\":\"\",\"updateTime\":\"2023-01-28 14:36:49\",\"usableColumn\":false},{\"capJavaField\":\"DutyType\",\"columnComment\":\"值班类型\",\"columnId\":328,\"columnName\":\"duty_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 13:52:18\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutyType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":32,\"updateBy\":\"\",\"updateTime\":\"2023-01-28 14:36:49\",\"usableColumn\":false},{\"capJavaField\":\"DutySort\",\"columnComment\":\"显示顺序\",\"columnId\":329,\"columnName\":\"duty_sort\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 13:52:18\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutySort\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":32,\"updateBy\":\"\",\"updateTime\":\"2023-01-28 14:36:49\",\"usableColumn\":false},{\"capJavaField\":\"CreateBy\",\"columnComment\":\"创建者\",\"columnId\":332,\"columnName\":\"create_by\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 13:52:18\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-29 23:05:57');
INSERT INTO `sys_oper_log` VALUES (262, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/sys_duty', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-29 23:06:01');
INSERT INTO `sys_oper_log` VALUES (263, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/sys_duty', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-29 23:07:07');
INSERT INTO `sys_oper_log` VALUES (264, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/sys_duty', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-29 23:07:28');
INSERT INTO `sys_oper_log` VALUES (265, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"duty\",\"className\":\"SysDuty\",\"columns\":[{\"capJavaField\":\"DutyId\",\"columnComment\":\"del_flag\",\"columnId\":327,\"columnName\":\"duty_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 13:52:18\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"dutyId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":32,\"updateBy\":\"\",\"updateTime\":\"2023-01-29 23:07:28\",\"usableColumn\":false},{\"capJavaField\":\"DutyType\",\"columnComment\":\"值班类型\",\"columnId\":328,\"columnName\":\"duty_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 13:52:18\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutyType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":32,\"updateBy\":\"\",\"updateTime\":\"2023-01-29 23:07:28\",\"usableColumn\":false},{\"capJavaField\":\"DutySort\",\"columnComment\":\"显示顺序\",\"columnId\":329,\"columnName\":\"duty_sort\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 13:52:18\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutySort\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":32,\"updateBy\":\"\",\"updateTime\":\"2023-01-29 23:07:28\",\"usableColumn\":false},{\"capJavaField\":\"CreateBy\",\"columnComment\":\"创建者\",\"columnId\":332,\"columnName\":\"create_by\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-28 13:52:18\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"radio\",\"increment\":false,\"insert\":false,\"isIncremen', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-29 23:08:59');
INSERT INTO `sys_oper_log` VALUES (266, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"值班类型\",\"dictType\":\"duty_type\",\"params\":{},\"remark\":\"值班类型:行政班，普通值班\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-29 23:11:40');
INSERT INTO `sys_oper_log` VALUES (267, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"行政班\",\"dictSort\":0,\"dictType\":\"duty_type\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-29 23:12:09');
INSERT INTO `sys_oper_log` VALUES (268, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-01-18 15:42:13\",\"dataScope\":\"5\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-29 23:14:38');
INSERT INTO `sys_oper_log` VALUES (269, '字典类型', 3, 'com.ruoyi.web.controller.system.SysDictTypeController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dict/type/101', '127.0.0.1', '内网IP', '{}', NULL, 1, '值班类型已分配,不能删除', '2023-01-29 23:15:02');
INSERT INTO `sys_oper_log` VALUES (270, '字典类型', 3, 'com.ruoyi.web.controller.system.SysDictDataController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dict/data/100', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-29 23:15:13');
INSERT INTO `sys_oper_log` VALUES (271, '字典类型', 3, 'com.ruoyi.web.controller.system.SysDictTypeController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dict/type/101', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-29 23:15:18');
INSERT INTO `sys_oper_log` VALUES (272, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/sys_duty_log', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-29 23:22:29');
INSERT INTO `sys_oper_log` VALUES (273, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/33', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-29 23:26:30');
INSERT INTO `sys_oper_log` VALUES (274, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/32', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-29 23:26:32');
INSERT INTO `sys_oper_log` VALUES (275, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', '\"sys_duty_log,sys_duty\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-29 23:26:35');
INSERT INTO `sys_oper_log` VALUES (276, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"duty\",\"className\":\"SysDuty\",\"columns\":[{\"capJavaField\":\"DutyId\",\"columnComment\":\"del_flag\",\"columnId\":347,\"columnName\":\"duty_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"javaField\":\"dutyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":34,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DutyType\",\"columnComment\":\"值班类型\",\"columnId\":348,\"columnName\":\"duty_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutyType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":34,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DutySort\",\"columnComment\":\"显示顺序\",\"columnId\":349,\"columnName\":\"duty_sort\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"dutySort\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":34,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"CreateBy\",\"columnComment\":\"创建者\",\"columnId\":350,\"columnName\":\"create_by\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isIncrement\":\"0\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"0\",\"javaField\":\"createBy\",\"javaType\":\"Long\",\"list\":true', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-29 23:28:08');
INSERT INTO `sys_oper_log` VALUES (277, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"duty_log\",\"className\":\"SysDutyLog\",\"columns\":[{\"capJavaField\":\"LogId\",\"columnComment\":\"值班日志主键\",\"columnId\":355,\"columnName\":\"log_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"logId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":35,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DutyId\",\"columnComment\":\"值班类型id\",\"columnId\":356,\"columnName\":\"duty_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":35,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DutyName\",\"columnComment\":\"值班类型名称\",\"columnId\":357,\"columnName\":\"duty_name\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"dutyName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":35,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"UserId\",\"columnComment\":\"值班人员ID\",\"columnId\":358,\"columnName\":\"user_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"userId\",\"javaType\":\"Long\",\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-29 23:28:24');
INSERT INTO `sys_oper_log` VALUES (278, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"duty\",\"className\":\"SysDuty\",\"columns\":[{\"capJavaField\":\"DutyId\",\"columnComment\":\"del_flag\",\"columnId\":347,\"columnName\":\"duty_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"javaField\":\"dutyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":34,\"updateBy\":\"\",\"updateTime\":\"2023-01-29 23:28:08\",\"usableColumn\":false},{\"capJavaField\":\"DutyType\",\"columnComment\":\"值班类型\",\"columnId\":348,\"columnName\":\"duty_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutyType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":34,\"updateBy\":\"\",\"updateTime\":\"2023-01-29 23:28:08\",\"usableColumn\":false},{\"capJavaField\":\"DutySort\",\"columnComment\":\"显示顺序\",\"columnId\":349,\"columnName\":\"duty_sort\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"dutySort\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":34,\"updateBy\":\"\",\"updateTime\":\"2023-01-29 23:28:08\",\"usableColumn\":false},{\"capJavaField\":\"CreateBy\",\"columnComment\":\"创建者\",\"columnId\":350,\"columnName\":\"create_by\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isI', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-29 23:28:37');
INSERT INTO `sys_oper_log` VALUES (279, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"duty\",\"className\":\"SysDuty\",\"columns\":[{\"capJavaField\":\"DutyId\",\"columnComment\":\"del_flag\",\"columnId\":347,\"columnName\":\"duty_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"javaField\":\"dutyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":34,\"updateBy\":\"\",\"updateTime\":\"2023-01-29 23:28:37\",\"usableColumn\":false},{\"capJavaField\":\"DutyType\",\"columnComment\":\"值班类型\",\"columnId\":348,\"columnName\":\"duty_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutyType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":34,\"updateBy\":\"\",\"updateTime\":\"2023-01-29 23:28:37\",\"usableColumn\":false},{\"capJavaField\":\"DutySort\",\"columnComment\":\"显示顺序\",\"columnId\":349,\"columnName\":\"duty_sort\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"0\",\"isRequired\":\"1\",\"javaField\":\"dutySort\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":false,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":34,\"updateBy\":\"\",\"updateTime\":\"2023-01-29 23:28:37\",\"usableColumn\":false},{\"capJavaField\":\"CreateBy\",\"columnComment\":\"创建者\",\"columnId\":350,\"columnName\":\"create_by\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isI', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-29 23:28:44');
INSERT INTO `sys_oper_log` VALUES (280, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"duty_log\",\"className\":\"SysDutyLog\",\"columns\":[{\"capJavaField\":\"LogId\",\"columnComment\":\"值班日志主键\",\"columnId\":355,\"columnName\":\"log_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isPk\":\"1\",\"isQuery\":\"1\",\"javaField\":\"logId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":35,\"updateBy\":\"\",\"updateTime\":\"2023-01-29 23:28:24\",\"usableColumn\":false},{\"capJavaField\":\"DutyId\",\"columnComment\":\"值班类型id\",\"columnId\":356,\"columnName\":\"duty_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"radio\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":35,\"updateBy\":\"\",\"updateTime\":\"2023-01-29 23:28:24\",\"usableColumn\":false},{\"capJavaField\":\"DutyName\",\"columnComment\":\"值班类型名称\",\"columnId\":357,\"columnName\":\"duty_name\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"radio\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"dutyName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":35,\"updateBy\":\"\",\"updateTime\":\"2023-01-29 23:28:24\",\"usableColumn\":false},{\"capJavaField\":\"UserId\",\"columnComment\":\"值班人员ID\",\"columnId\":358,\"columnName\":\"user_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"radio\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrem', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-29 23:38:59');
INSERT INTO `sys_oper_log` VALUES (281, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_duty_log,sys_duty\"}', NULL, 0, NULL, '2023-01-29 23:39:05');
INSERT INTO `sys_oper_log` VALUES (282, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_duty_log,sys_duty\"}', NULL, 0, NULL, '2023-01-29 23:39:16');
INSERT INTO `sys_oper_log` VALUES (283, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_duty_log\"}', NULL, 0, NULL, '2023-01-29 23:39:39');
INSERT INTO `sys_oper_log` VALUES (284, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_duty_log,sys_duty\"}', NULL, 0, NULL, '2023-01-29 23:39:50');
INSERT INTO `sys_oper_log` VALUES (285, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_duty_log,sys_duty\"}', NULL, 0, NULL, '2023-01-29 23:39:55');
INSERT INTO `sys_oper_log` VALUES (286, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_duty_log,sys_duty\"}', NULL, 0, NULL, '2023-01-29 23:42:18');
INSERT INTO `sys_oper_log` VALUES (287, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"duty\",\"className\":\"SysDuty\",\"columns\":[{\"capJavaField\":\"DutyId\",\"columnComment\":\"del_flag\",\"columnId\":347,\"columnName\":\"duty_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"javaField\":\"dutyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":34,\"updateBy\":\"\",\"updateTime\":\"2023-01-29 23:28:44\",\"usableColumn\":false},{\"capJavaField\":\"DutyType\",\"columnComment\":\"值班类型\",\"columnId\":348,\"columnName\":\"duty_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutyType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":34,\"updateBy\":\"\",\"updateTime\":\"2023-01-29 23:28:44\",\"usableColumn\":false},{\"capJavaField\":\"DutySort\",\"columnComment\":\"显示顺序\",\"columnId\":349,\"columnName\":\"duty_sort\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutySort\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":34,\"updateBy\":\"\",\"updateTime\":\"2023-01-29 23:28:44\",\"usableColumn\":false},{\"capJavaField\":\"CreateBy\",\"columnComment\":\"创建者\",\"columnId\":350,\"columnName\":\"create_by\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isIn', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-29 23:58:19');
INSERT INTO `sys_oper_log` VALUES (288, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_duty\"}', NULL, 0, NULL, '2023-01-29 23:58:28');
INSERT INTO `sys_oper_log` VALUES (289, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_duty\"}', NULL, 0, NULL, '2023-01-29 23:58:55');
INSERT INTO `sys_oper_log` VALUES (290, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"duty\",\"className\":\"SysDuty\",\"columns\":[{\"capJavaField\":\"DutyId\",\"columnComment\":\"id\",\"columnId\":347,\"columnName\":\"duty_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":false,\"isIncrement\":\"1\",\"isInsert\":\"0\",\"isList\":\"1\",\"isPk\":\"1\",\"javaField\":\"dutyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":34,\"updateBy\":\"\",\"updateTime\":\"2023-01-29 23:58:19\",\"usableColumn\":false},{\"capJavaField\":\"DutyType\",\"columnComment\":\"值班类型\",\"columnId\":348,\"columnName\":\"duty_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutyType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":34,\"updateBy\":\"\",\"updateTime\":\"2023-01-29 23:58:19\",\"usableColumn\":false},{\"capJavaField\":\"DutySort\",\"columnComment\":\"显示顺序\",\"columnId\":349,\"columnName\":\"duty_sort\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutySort\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":34,\"updateBy\":\"\",\"updateTime\":\"2023-01-29 23:58:19\",\"usableColumn\":false},{\"capJavaField\":\"CreateBy\",\"columnComment\":\"创建者\",\"columnId\":350,\"columnName\":\"create_by\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":false,\"isIncremen', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 00:01:53');
INSERT INTO `sys_oper_log` VALUES (291, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"duty\",\"className\":\"SysDuty\",\"columns\":[{\"capJavaField\":\"DutyId\",\"columnComment\":\"id\",\"columnId\":347,\"columnName\":\"duty_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"javaField\":\"dutyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":34,\"updateBy\":\"\",\"updateTime\":\"2023-01-30 00:01:53\",\"usableColumn\":false},{\"capJavaField\":\"DutyType\",\"columnComment\":\"值班类型\",\"columnId\":348,\"columnName\":\"duty_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutyType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":34,\"updateBy\":\"\",\"updateTime\":\"2023-01-30 00:01:53\",\"usableColumn\":false},{\"capJavaField\":\"DutySort\",\"columnComment\":\"显示顺序\",\"columnId\":349,\"columnName\":\"duty_sort\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutySort\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":34,\"updateBy\":\"\",\"updateTime\":\"2023-01-30 00:01:53\",\"usableColumn\":false},{\"capJavaField\":\"CreateBy\",\"columnComment\":\"创建者\",\"columnId\":350,\"columnName\":\"create_by\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"in', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 00:02:34');
INSERT INTO `sys_oper_log` VALUES (292, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"duty\",\"className\":\"SysDuty\",\"columns\":[{\"capJavaField\":\"DutyId\",\"columnComment\":\"id\",\"columnId\":347,\"columnName\":\"duty_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"javaField\":\"dutyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":34,\"updateBy\":\"\",\"updateTime\":\"2023-01-30 00:02:34\",\"usableColumn\":false},{\"capJavaField\":\"DutyType\",\"columnComment\":\"值班类型\",\"columnId\":348,\"columnName\":\"duty_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutyType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":34,\"updateBy\":\"\",\"updateTime\":\"2023-01-30 00:02:34\",\"usableColumn\":false},{\"capJavaField\":\"DutySort\",\"columnComment\":\"显示顺序\",\"columnId\":349,\"columnName\":\"duty_sort\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutySort\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":34,\"updateBy\":\"\",\"updateTime\":\"2023-01-30 00:02:34\",\"usableColumn\":false},{\"capJavaField\":\"CreateBy\",\"columnComment\":\"创建者\",\"columnId\":350,\"columnName\":\"create_by\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"in', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 00:02:53');
INSERT INTO `sys_oper_log` VALUES (293, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"duty\",\"className\":\"SysDuty\",\"columns\":[{\"capJavaField\":\"DutyId\",\"columnComment\":\"id\",\"columnId\":347,\"columnName\":\"duty_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"javaField\":\"dutyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":34,\"updateBy\":\"\",\"updateTime\":\"2023-01-30 00:02:53\",\"usableColumn\":false},{\"capJavaField\":\"DutyType\",\"columnComment\":\"值班类型\",\"columnId\":348,\"columnName\":\"duty_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutyType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":34,\"updateBy\":\"\",\"updateTime\":\"2023-01-30 00:02:53\",\"usableColumn\":false},{\"capJavaField\":\"DutySort\",\"columnComment\":\"显示顺序\",\"columnId\":349,\"columnName\":\"duty_sort\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutySort\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":34,\"updateBy\":\"\",\"updateTime\":\"2023-01-30 00:02:53\",\"usableColumn\":false},{\"capJavaField\":\"CreateBy\",\"columnComment\":\"创建者\",\"columnId\":350,\"columnName\":\"create_by\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"in', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 00:03:15');
INSERT INTO `sys_oper_log` VALUES (294, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"duty\",\"className\":\"SysDuty\",\"columns\":[{\"capJavaField\":\"DutyId\",\"columnComment\":\"id\",\"columnId\":347,\"columnName\":\"duty_id\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"1\",\"isQuery\":\"1\",\"javaField\":\"dutyId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":true,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":34,\"updateBy\":\"\",\"updateTime\":\"2023-01-30 00:03:15\",\"usableColumn\":false},{\"capJavaField\":\"DutyType\",\"columnComment\":\"值班类型\",\"columnId\":348,\"columnName\":\"duty_type\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutyType\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":34,\"updateBy\":\"\",\"updateTime\":\"2023-01-30 00:03:15\",\"usableColumn\":false},{\"capJavaField\":\"DutySort\",\"columnComment\":\"显示顺序\",\"columnId\":349,\"columnName\":\"duty_sort\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"dutySort\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":34,\"updateBy\":\"\",\"updateTime\":\"2023-01-30 00:03:15\",\"usableColumn\":false},{\"capJavaField\":\"CreateBy\",\"columnComment\":\"创建者\",\"columnId\":350,\"columnName\":\"create_by\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-01-29 23:26:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"in', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 00:03:29');
INSERT INTO `sys_oper_log` VALUES (295, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_duty,sys_duty_log\"}', NULL, 0, NULL, '2023-01-30 00:03:35');
INSERT INTO `sys_oper_log` VALUES (296, '值班类型', 1, 'com.ruoyi.duty.controller.SysDutyController.add()', 'POST', 1, 'admin', NULL, '/duty/duty', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-01-30 00:18:55\",\"dutyId\":12,\"dutySort\":1,\"dutyType\":\"123\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 00:18:55');
INSERT INTO `sys_oper_log` VALUES (297, '值班类型', 1, 'com.ruoyi.duty.controller.SysDutyController.add()', 'POST', 1, 'admin', NULL, '/duty/duty', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-01-30 00:26:15\",\"dutyId\":13,\"dutySort\":21321,\"dutyType\":\"1111\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 00:26:15');
INSERT INTO `sys_oper_log` VALUES (298, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-01-28 09:08:55\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006],\"params\":{},\"roleId\":101,\"roleKey\":\"test\",\"roleName\":\"测试\",\"roleSort\":4,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 00:28:03');
INSERT INTO `sys_oper_log` VALUES (299, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[],\"params\":{},\"roleId\":102,\"roleKey\":\"ssss\",\"roleName\":\"测试啊\",\"roleSort\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 00:29:16');
INSERT INTO `sys_oper_log` VALUES (300, '值班类型', 1, 'com.ruoyi.duty.controller.SysDutyController.add()', 'POST', 1, 'admin', NULL, '/duty/duty', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-01-30 00:39:32\",\"dutyId\":14,\"dutySort\":2323232,\"dutyType\":\"11133333\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 00:39:32');
INSERT INTO `sys_oper_log` VALUES (301, '值班类型', 1, 'com.ruoyi.duty.controller.SysDutyController.add()', 'POST', 1, 'admin', NULL, '/duty/duty', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-01-30 00:46:40\",\"dutyId\":15,\"dutySort\":2332323,\"dutyType\":\"11333\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 00:46:40');
INSERT INTO `sys_oper_log` VALUES (302, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[],\"params\":{},\"roleId\":103,\"roleKey\":\"123213\",\"roleName\":\"rewrqe\",\"roleSort\":10,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 00:49:17');
INSERT INTO `sys_oper_log` VALUES (303, '值班类型', 1, 'com.ruoyi.duty.controller.SysDutyController.add()', 'POST', 1, 'admin', NULL, '/duty/duty', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-01-30 00:58:05\",\"dutyId\":16,\"dutySort\":23,\"dutyType\":\"4d\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 00:58:05');
INSERT INTO `sys_oper_log` VALUES (304, '值班类型', 1, 'com.ruoyi.duty.controller.SysDutyController.add()', 'POST', 1, 'admin', NULL, '/duty/duty', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-01-30 01:01:53\",\"dutyId\":17,\"dutySort\":32,\"dutyType\":\"值班\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 01:01:53');
INSERT INTO `sys_oper_log` VALUES (305, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[],\"params\":{},\"roleId\":104,\"roleKey\":\"xins\",\"roleName\":\"新增角色\",\"roleSort\":0,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 01:02:33');
INSERT INTO `sys_oper_log` VALUES (306, '值班类型', 1, 'com.ruoyi.duty.controller.SysDutyController.add()', 'POST', 1, 'admin', NULL, '/duty/duty', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-01-30 01:49:54\",\"dutySort\":123,\"dutyType\":\"测试类型\",\"params\":{}}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect integer value: \'admin\' for column \'create_by\' at row 1\r\n### The error may exist in file [D:\\project-code-packge\\dhdx-scheduling\\ruoyi-duty\\target\\classes\\mapper\\duty\\SysDutyMapper.xml]\r\n### The error may involve com.ruoyi.duty.mapper.SysDutyMapper.insertSysDuty-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_duty          ( duty_type,                                           duty_sort,                                           create_by,                                           create_time )           values ( ?,                                           ?,                                           ?,                                           ? )\r\n### Cause: java.sql.SQLException: Incorrect integer value: \'admin\' for column \'create_by\' at row 1\n; uncategorized SQLException; SQL state [HY000]; error code [1366]; Incorrect integer value: \'admin\' for column \'create_by\' at row 1; nested exception is java.sql.SQLException: Incorrect integer value: \'admin\' for column \'create_by\' at row 1', '2023-01-30 01:49:54');
INSERT INTO `sys_oper_log` VALUES (307, '值班类型', 1, 'com.ruoyi.duty.controller.SysDutyController.add()', 'POST', 1, 'admin', NULL, '/duty/duty', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-01-30 01:56:45\",\"dutyId\":1,\"dutySort\":123,\"dutyType\":\"测试类型\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 01:56:45');
INSERT INTO `sys_oper_log` VALUES (308, '值班类型', 2, 'com.ruoyi.duty.controller.SysDutyController.edit()', 'PUT', 1, 'admin', NULL, '/duty/duty', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-01-30 01:56:45\",\"dutyId\":1,\"dutySort\":123,\"dutyType\":\"测试类型\",\"params\":{},\"remark\":\"aaa\",\"updateBy\":\"admin\",\"updateTime\":\"2023-01-30 01:56:56\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Incorrect integer value: \'admin\' for column \'update_by\' at row 1\r\n### The error may exist in file [D:\\project-code-packge\\dhdx-scheduling\\ruoyi-duty\\target\\classes\\mapper\\duty\\SysDutyMapper.xml]\r\n### The error may involve com.ruoyi.duty.mapper.SysDutyMapper.updateSysDuty-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update sys_duty          SET duty_type = ?,                                           duty_sort = ?,                                           create_by = ?,                                           create_time = ?,                                           update_by = ?,                                           update_time = ?,                                           remark = ?          where duty_id = ?\r\n### Cause: java.sql.SQLException: Incorrect integer value: \'admin\' for column \'update_by\' at row 1\n; uncategorized SQLException; SQL state [HY000]; error code [1366]; Incorrect integer value: \'admin\' for column \'update_by\' at row 1; nested exception is java.sql.SQLException: Incorrect integer value: \'admin\' for column \'update_by\' at row 1', '2023-01-30 01:56:56');
INSERT INTO `sys_oper_log` VALUES (309, '值班类型', 2, 'com.ruoyi.duty.controller.SysDutyController.edit()', 'PUT', 1, 'admin', NULL, '/duty/duty', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-01-30 01:56:45\",\"dutyId\":1,\"dutySort\":123,\"dutyType\":\"测试类型\",\"params\":{},\"remark\":\"aaa\",\"updateBy\":\"admin\",\"updateTime\":\"2023-01-30 01:58:13\"}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2023-01-30 01:58:13');
INSERT INTO `sys_oper_log` VALUES (310, '值班类型', 1, 'com.ruoyi.duty.controller.SysDutyController.add()', 'POST', 1, 'admin', NULL, '/duty/duty', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-01-30 01:58:19\",\"dutyId\":1,\"dutySort\":123,\"dutyType\":\"112\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 01:58:19');
INSERT INTO `sys_oper_log` VALUES (311, '值班类型', 2, 'com.ruoyi.duty.controller.SysDutyController.edit()', 'PUT', 1, 'admin', NULL, '/duty/duty', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-01-30 01:58:20\",\"dutyId\":1,\"dutySort\":12322,\"dutyType\":\"112\",\"params\":{},\"remark\":\"asdasa\",\"updateBy\":\"admin\",\"updateTime\":\"2023-01-30 01:58:27\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 01:58:27');
INSERT INTO `sys_oper_log` VALUES (312, '值班记录', 1, 'com.ruoyi.duty.controller.SysDutyLogController.add()', 'POST', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"deptId\":1,\"deptName\":\"223\",\"endTime\":\"2023-01-12\",\"params\":{},\"startTime\":\"2023-01-01\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')\' at line 33\r\n### The error may exist in file [D:\\project-code-packge\\dhdx-scheduling\\ruoyi-duty\\target\\classes\\mapper\\duty\\SysDutyLogMapper.xml]\r\n### The error may involve com.ruoyi.duty.mapper.SysDutyLogMapper.insertSysDutyLog-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_duty_log          ( dept_id,                                           dept_name,                                           start_time,                                           end_time,                                                        create_by,                          create_time )           values ( ?,                                           ?,                                           ?,                                           ?,                                                        ?,                          sysdate()) )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')\' at line 33\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')\' at line 33', '2023-01-30 01:59:06');
INSERT INTO `sys_oper_log` VALUES (313, '值班记录', 1, 'com.ruoyi.duty.controller.SysDutyLogController.add()', 'POST', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"deptId\":1,\"deptName\":\"223\",\"endTime\":\"2023-01-12\",\"params\":{},\"startTime\":\"2023-01-01\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')\' at line 33\r\n### The error may exist in file [D:\\project-code-packge\\dhdx-scheduling\\ruoyi-duty\\target\\classes\\mapper\\duty\\SysDutyLogMapper.xml]\r\n### The error may involve com.ruoyi.duty.mapper.SysDutyLogMapper.insertSysDutyLog-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_duty_log          ( dept_id,                                           dept_name,                                           start_time,                                           end_time,                                                        create_by,                          create_time )           values ( ?,                                           ?,                                           ?,                                           ?,                                                        ?,                          sysdate()) )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')\' at line 33\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \')\' at line 33', '2023-01-30 01:59:14');
INSERT INTO `sys_oper_log` VALUES (314, '值班记录', 1, 'com.ruoyi.duty.controller.SysDutyLogController.add()', 'POST', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"deptId\":1,\"deptName\":\"223\",\"endTime\":\"2023-01-12\",\"params\":{},\"startTime\":\"2023-01-01\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'user_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\project-code-packge\\dhdx-scheduling\\ruoyi-duty\\target\\classes\\mapper\\duty\\SysDutyLogMapper.xml]\r\n### The error may involve com.ruoyi.duty.mapper.SysDutyLogMapper.insertSysDutyLog-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_duty_log          ( dept_id,                                           dept_name,                                           start_time,                                           end_time,                                                        create_by,                          create_time )           values ( ?,                                           ?,                                           ?,                                           ?,                                                        ?,                          sysdate() )\r\n### Cause: java.sql.SQLException: Field \'user_id\' doesn\'t have a default value\n; Field \'user_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'user_id\' doesn\'t have a default value', '2023-01-30 02:01:45');
INSERT INTO `sys_oper_log` VALUES (315, '值班记录', 1, 'com.ruoyi.duty.controller.SysDutyLogController.add()', 'POST', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"deptId\":1,\"deptName\":\"223\",\"endTime\":\"2023-01-12\",\"params\":{},\"startTime\":\"2023-01-01\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'user_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\project-code-packge\\dhdx-scheduling\\ruoyi-duty\\target\\classes\\mapper\\duty\\SysDutyLogMapper.xml]\r\n### The error may involve com.ruoyi.duty.mapper.SysDutyLogMapper.insertSysDutyLog-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_duty_log          ( dept_id,                                           dept_name,                                           start_time,                                           end_time,                                                        create_by,                          create_time )           values ( ?,                                           ?,                                           ?,                                           ?,                                                        ?,                          sysdate() )\r\n### Cause: java.sql.SQLException: Field \'user_id\' doesn\'t have a default value\n; Field \'user_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'user_id\' doesn\'t have a default value', '2023-01-30 02:01:47');
INSERT INTO `sys_oper_log` VALUES (316, '值班记录', 1, 'com.ruoyi.duty.controller.SysDutyLogController.add()', 'POST', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"deptId\":1,\"deptName\":\"223\",\"endTime\":\"2023-01-12\",\"params\":{},\"startTime\":\"2023-01-01\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'user_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\project-code-packge\\dhdx-scheduling\\ruoyi-duty\\target\\classes\\mapper\\duty\\SysDutyLogMapper.xml]\r\n### The error may involve com.ruoyi.duty.mapper.SysDutyLogMapper.insertSysDutyLog-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_duty_log          ( dept_id,                                           dept_name,                                           start_time,                                           end_time,                                                        create_by,                          create_time )           values ( ?,                                           ?,                                           ?,                                           ?,                                                        ?,                          sysdate() )\r\n### Cause: java.sql.SQLException: Field \'user_id\' doesn\'t have a default value\n; Field \'user_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'user_id\' doesn\'t have a default value', '2023-01-30 02:01:52');
INSERT INTO `sys_oper_log` VALUES (317, '值班类型', 3, 'com.ruoyi.duty.controller.SysDutyController.remove()', 'DELETE', 1, 'admin', NULL, '/duty/duty/1', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 02:05:28');
INSERT INTO `sys_oper_log` VALUES (318, '值班类型', 1, 'com.ruoyi.duty.controller.SysDutyController.add()', 'POST', 1, 'admin', NULL, '/duty/duty', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-01-30 02:09:32\",\"dutyId\":12,\"dutySort\":1,\"dutyType\":\"白班\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 02:09:32');
INSERT INTO `sys_oper_log` VALUES (319, '值班类型', 3, 'com.ruoyi.duty.controller.SysDutyController.remove()', 'DELETE', 1, 'admin', NULL, '/duty/duty/11', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 02:14:13');
INSERT INTO `sys_oper_log` VALUES (320, '值班类型', 2, 'com.ruoyi.duty.controller.SysDutyController.edit()', 'PUT', 1, 'admin', NULL, '/duty/duty', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-01-30 02:09:32\",\"dutyId\":12,\"dutySort\":1,\"dutyType\":\"白班\",\"params\":{},\"updateBy\":\"admin\",\"updateTime\":\"2023-01-30 02:14:17\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 02:14:17');
INSERT INTO `sys_oper_log` VALUES (321, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,200\",\"children\":[],\"createBy\":\"admin\",\"deptName\":\"打工啊\",\"orderNum\":0,\"params\":{},\"parentId\":200,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 02:27:07');
INSERT INTO `sys_oper_log` VALUES (322, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"N5BYFofn7Z\",\"createBy\":\"yUZP4Dsg27\",\"createTime\":\"2017-01-03 12:28:15\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":200,\"deptName\":\"打工人\",\"orderNum\":3,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":205,\"email\":\"taoxiaoming@outlook.com\",\"loginDate\":\"2016-03-13 13:51:59\",\"loginIp\":\"14.156.250.62\",\"nickName\":\"陶晓明\",\"params\":{},\"phonenumber\":\"13345674124\",\"postIds\":[],\"remark\":\"hshi2K1PSN\",\"roleIds\":[],\"roles\":[],\"sex\":\"1\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":111,\"userName\":\"tao90\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 02:27:41');
INSERT INTO `sys_oper_log` VALUES (323, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-01-28 09:08:55\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006],\"params\":{},\"roleId\":101,\"roleKey\":\"test\",\"roleName\":\"测试\",\"roleSort\":4,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 02:29:41');
INSERT INTO `sys_oper_log` VALUES (324, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-01-28 09:08:55\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":101,\"roleKey\":\"test\",\"roleName\":\"测试\",\"roleSort\":4,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 02:30:04');
INSERT INTO `sys_oper_log` VALUES (325, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.resetPwd()', 'PUT', 1, 'admin', NULL, '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"admin\":false,\"params\":{},\"updateBy\":\"admin\",\"userId\":101}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 02:30:56');
INSERT INTO `sys_oper_log` VALUES (326, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-01-28 09:08:55\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,3,115,116,1055,1056,1057,1058,1059,1060,117,2060,2097,2098,2099,2100,2101,2102,2103,2104,2105,2106,2107,2108],\"params\":{},\"roleId\":101,\"roleKey\":\"test\",\"roleName\":\"测试\",\"roleSort\":4,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 02:31:57');
INSERT INTO `sys_oper_log` VALUES (327, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-01-28 09:08:55\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":101,\"roleKey\":\"test\",\"roleName\":\"测试\",\"roleSort\":4,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 02:35:16');
INSERT INTO `sys_oper_log` VALUES (328, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-01-28 09:08:55\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,3,115,116,1055,1056,1057,1058,1059,1060,117,2060,2097,2098,2099,2100,2101,2102,2103,2104,2105,2106,2107,2108],\"params\":{},\"roleId\":101,\"roleKey\":\"test\",\"roleName\":\"测试\",\"roleSort\":4,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 02:35:21');
INSERT INTO `sys_oper_log` VALUES (329, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-01-28 09:08:55\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[100,201,202,203,200,205,204],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":101,\"roleKey\":\"test\",\"roleName\":\"测试\",\"roleSort\":4,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 02:35:50');
INSERT INTO `sys_oper_log` VALUES (330, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'syx', NULL, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2023/01/30/blob_20230130023822A001.png\",\"code\":200}', 0, NULL, '2023-01-30 02:38:22');
INSERT INTO `sys_oper_log` VALUES (331, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'syx', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"createTime\":\"2023-01-19 11:12:07\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":202,\"deptName\":\"云中台\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"email\":\"1@q.com\",\"loginIp\":\"\",\"nickName\":\"邵曰信\",\"params\":{},\"phonenumber\":\"18088162921\",\"roles\":[{\"admin\":false,\"dataScope\":\"4\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":101,\"roleKey\":\"test\",\"roleName\":\"测试\",\"roleSort\":4,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"userId\":101,\"userName\":\"syx\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 02:38:40');
INSERT INTO `sys_oper_log` VALUES (332, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.selectAuthUserAll()', 'PUT', 1, 'admin', NULL, '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '100 [101]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 02:39:48');
INSERT INTO `sys_oper_log` VALUES (333, '角色管理', 3, 'com.ruoyi.web.controller.system.SysRoleController.remove()', 'DELETE', 1, 'admin', NULL, '/system/role/102', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 02:40:29');
INSERT INTO `sys_oper_log` VALUES (334, '角色管理', 3, 'com.ruoyi.web.controller.system.SysRoleController.remove()', 'DELETE', 1, 'admin', NULL, '/system/role/101', '127.0.0.1', '内网IP', '{}', NULL, 1, '测试已分配,不能删除', '2023-01-30 02:40:33');
INSERT INTO `sys_oper_log` VALUES (335, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.cancelAuthUserAll()', 'PUT', 1, 'admin', NULL, '/system/role/authUser/cancelAll', '127.0.0.1', '内网IP', '101 [101]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 02:40:42');
INSERT INTO `sys_oper_log` VALUES (336, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.selectAuthUserAll()', 'PUT', 1, 'admin', NULL, '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '101 [101]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 02:43:49');
INSERT INTO `sys_oper_log` VALUES (337, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"/profile/avatar/2023/01/30/blob_20230130023822A001.png\",\"createBy\":\"admin\",\"createTime\":\"2023-01-19 11:12:07\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":202,\"deptName\":\"云中台\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":202,\"email\":\"1@q.com\",\"loginDate\":\"2023-01-30 02:31:26\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"邵曰信\",\"params\":{},\"phonenumber\":\"18088162921\",\"postIds\":[],\"roleIds\":[101],\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":100,\"roleKey\":\"dempBoss\",\"roleName\":\"主任\",\"roleSort\":3,\"status\":\"0\"},{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":101,\"roleKey\":\"test\",\"roleName\":\"测试\",\"roleSort\":4,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":101,\"userName\":\"syx\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 02:43:58');
INSERT INTO `sys_oper_log` VALUES (338, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-01-28 09:08:55\",\"dataScope\":\"5\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":101,\"roleKey\":\"test\",\"roleName\":\"测试\",\"roleSort\":4,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 02:44:21');
INSERT INTO `sys_oper_log` VALUES (339, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'syx', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"9ilrTtvugz\",\"createBy\":\"d2PilUEQMM\",\"createTime\":\"2007-07-14 13:59:34\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":202,\"deptName\":\"云中台\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":202,\"email\":\"xiuyingshao@outlook.com\",\"loginDate\":\"2022-06-06 04:45:35\",\"loginIp\":\"150.15.159.251\",\"nickName\":\"邵秀英\",\"params\":{},\"phonenumber\":\"18652361636\",\"postIds\":[],\"remark\":\"h4jX8Rl55q\",\"roleIds\":[],\"roles\":[],\"sex\":\"1\",\"status\":\"0\",\"updateBy\":\"syx\",\"userId\":106,\"userName\":\"shaoxi48\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 02:44:34');
INSERT INTO `sys_oper_log` VALUES (340, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-01-28 09:08:55\",\"dataScope\":\"5\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":101,\"roleKey\":\"test\",\"roleName\":\"测试\",\"roleSort\":4,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 02:44:58');
INSERT INTO `sys_oper_log` VALUES (341, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-01-19 10:08:17\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2060,2097,2098,2099,2100,2101,2102,2103,2104,2105,2106,2107,2108],\"params\":{},\"roleId\":100,\"roleKey\":\"dempBoss\",\"roleName\":\"主任\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 03:14:12');
INSERT INTO `sys_oper_log` VALUES (342, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.selectAuthUserAll()', 'PUT', 1, 'admin', NULL, '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '100 [101]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 03:14:19');
INSERT INTO `sys_oper_log` VALUES (343, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-01-19 10:08:17\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":100,\"roleKey\":\"dempBoss\",\"roleName\":\"主任\",\"roleSort\":3,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 03:14:30');
INSERT INTO `sys_oper_log` VALUES (344, '用户管理', 4, 'com.ruoyi.web.controller.system.SysUserController.insertAuthRole()', 'PUT', 1, 'admin', NULL, '/system/user/authRole', '127.0.0.1', '内网IP', '101 [100]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 03:17:27');
INSERT INTO `sys_oper_log` VALUES (345, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-01-28 09:08:55\",\"dataScope\":\"5\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2060,2097,2098,2099,2100,2101,2102,2103,2104,2105,2106,2107,2108],\"params\":{},\"roleId\":101,\"roleKey\":\"test\",\"roleName\":\"测试\",\"roleSort\":4,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 03:18:06');
INSERT INTO `sys_oper_log` VALUES (346, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-01-19 10:08:17\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":100,\"roleKey\":\"dempBoss\",\"roleName\":\"主任\",\"roleSort\":3,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 03:18:43');
INSERT INTO `sys_oper_log` VALUES (347, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-01-19 10:08:17\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":100,\"roleKey\":\"dempBoss\",\"roleName\":\"主任\",\"roleSort\":3,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 03:20:10');
INSERT INTO `sys_oper_log` VALUES (348, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-01-18 15:42:13\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 03:20:36');
INSERT INTO `sys_oper_log` VALUES (349, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-01-18 15:42:13\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2060,2097,2103,2098,2102,2104,2108],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 03:21:25');
INSERT INTO `sys_oper_log` VALUES (350, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"/profile/avatar/2023/01/30/blob_20230130023822A001.png\",\"createBy\":\"admin\",\"createTime\":\"2023-01-19 11:12:07\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":202,\"deptName\":\"云中台\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":202,\"email\":\"1@q.com\",\"loginDate\":\"2023-01-30 03:16:18\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"邵曰信\",\"params\":{},\"phonenumber\":\"18088162921\",\"postIds\":[],\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"4\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":100,\"roleKey\":\"dempBoss\",\"roleName\":\"主任\",\"roleSort\":3,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":101,\"userName\":\"syx\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 03:21:39');
INSERT INTO `sys_oper_log` VALUES (351, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"/profile/avatar/2023/01/30/blob_20230130023822A001.png\",\"createBy\":\"admin\",\"createTime\":\"2023-01-19 11:12:07\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":202,\"deptName\":\"云中台\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":202,\"email\":\"1@q.com\",\"loginDate\":\"2023-01-30 03:16:18\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"邵曰信\",\"params\":{},\"phonenumber\":\"18088162921\",\"postIds\":[],\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":101,\"userName\":\"syx\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 03:22:15');
INSERT INTO `sys_oper_log` VALUES (352, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"/profile/avatar/2023/01/30/blob_20230130023822A001.png\",\"createBy\":\"admin\",\"createTime\":\"2023-01-19 11:12:07\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":202,\"deptName\":\"云中台\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":202,\"email\":\"1@q.com\",\"loginDate\":\"2023-01-30 03:22:27\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"邵曰信\",\"params\":{},\"phonenumber\":\"18088162921\",\"postIds\":[],\"roleIds\":[100],\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":101,\"userName\":\"syx\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 03:43:21');
INSERT INTO `sys_oper_log` VALUES (353, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-01-19 10:08:17\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,103,1016,1017,1018,1019,2060,2097,2098,2099,2100,2101,2102,2103,2104,2105,2106,2107,2108],\"params\":{},\"roleId\":100,\"roleKey\":\"dempBoss\",\"roleName\":\"主任\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 03:43:39');
INSERT INTO `sys_oper_log` VALUES (354, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-01-19 10:08:17\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":100,\"roleKey\":\"dempBoss\",\"roleName\":\"主任\",\"roleSort\":3,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 03:43:46');
INSERT INTO `sys_oper_log` VALUES (355, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-01-19 10:08:17\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,103,1016,1017,1018,1019,2060,2097,2098,2099,2100,2101,2102,2103,2104,2105,2106,2107,2108],\"params\":{},\"roleId\":100,\"roleKey\":\"dempBoss\",\"roleName\":\"主任\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 03:44:13');
INSERT INTO `sys_oper_log` VALUES (356, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'syx', NULL, '/system/dept/202', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":601}', 0, NULL, '2023-01-30 03:44:42');
INSERT INTO `sys_oper_log` VALUES (357, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'syx', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,202\",\"children\":[],\"createBy\":\"syx\",\"deptName\":\"解决方案中心\",\"orderNum\":0,\"params\":{},\"parentId\":202,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 03:46:02');
INSERT INTO `sys_oper_log` VALUES (358, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'syx', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,202\",\"children\":[],\"createBy\":\"syx\",\"deptName\":\"装维团队\",\"orderNum\":1,\"params\":{},\"parentId\":202,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 03:46:35');
INSERT INTO `sys_oper_log` VALUES (359, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'syx', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,202,207\",\"children\":[],\"createBy\":\"syx\",\"deptName\":\"111\",\"orderNum\":1,\"params\":{},\"parentId\":207,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 04:05:55');
INSERT INTO `sys_oper_log` VALUES (360, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-01-19 10:08:17\",\"dataScope\":\"3\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":100,\"roleKey\":\"dempBoss\",\"roleName\":\"主任\",\"roleSort\":3,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 04:07:36');
INSERT INTO `sys_oper_log` VALUES (361, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.selectAuthUserAll()', 'PUT', 1, 'admin', NULL, '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '2 [1,101,102,103,104,105,106,107,108,109]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 04:08:52');
INSERT INTO `sys_oper_log` VALUES (362, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.selectAuthUserAll()', 'PUT', 1, 'admin', NULL, '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '2 [110,111,112,113,114,115,116,117,118,119]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 04:08:55');
INSERT INTO `sys_oper_log` VALUES (363, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.selectAuthUserAll()', 'PUT', 1, 'admin', NULL, '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '2 [120,121]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 04:08:59');
INSERT INTO `sys_oper_log` VALUES (364, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'syx', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"9ilrTtvugz\",\"createBy\":\"d2PilUEQMM\",\"createTime\":\"2007-07-14 13:59:34\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":202,\"deptName\":\"云中台\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":202,\"email\":\"xiuyingshao@outlook.com\",\"loginDate\":\"2022-06-06 04:45:35\",\"loginIp\":\"150.15.159.251\",\"nickName\":\"邵秀英\",\"params\":{},\"phonenumber\":\"18652361636\",\"postIds\":[],\"remark\":\"h4jX8Rl55q\",\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"updateBy\":\"syx\",\"userId\":106,\"userName\":\"shaoxi48\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 04:09:10');
INSERT INTO `sys_oper_log` VALUES (365, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,202\",\"children\":[],\"deptId\":200,\"deptName\":\"打工人\",\"orderNum\":3,\"params\":{},\"parentId\":202,\"parentName\":\"中国电信德宏分公司\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 04:09:39');
INSERT INTO `sys_oper_log` VALUES (366, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-01-19 10:08:17\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":100,\"roleKey\":\"dempBoss\",\"roleName\":\"主任\",\"roleSort\":3,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 04:10:20');
INSERT INTO `sys_oper_log` VALUES (367, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-01-18 15:42:13\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2060,2097,2103,2098,2102,2104,2108],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 04:12:42');
INSERT INTO `sys_oper_log` VALUES (368, '角色管理', 5, 'com.ruoyi.web.controller.system.SysRoleController.export()', 'POST', 1, 'admin', NULL, '/system/role/export', '127.0.0.1', '内网IP', '{\"admin\":false,\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{\"dataScope\":\"\"}}', NULL, 0, NULL, '2023-01-30 04:12:46');
INSERT INTO `sys_oper_log` VALUES (369, '值班类型', 3, 'com.ruoyi.duty.controller.SysDutyController.remove()', 'DELETE', 1, 'admin', NULL, '/duty/duty/2,3,4,5,6,7,8,9,10', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 09:09:39');
INSERT INTO `sys_oper_log` VALUES (370, '值班类型', 1, 'com.ruoyi.duty.controller.SysDutyController.add()', 'POST', 1, 'admin', NULL, '/duty/duty', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-01-30 09:09:51\",\"dutyId\":13,\"dutyType\":\"行政值班\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 09:09:51');
INSERT INTO `sys_oper_log` VALUES (371, '值班类型', 1, 'com.ruoyi.duty.controller.SysDutyController.add()', 'POST', 1, 'admin', NULL, '/duty/duty', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-01-30 09:10:53\",\"dutyId\":14,\"dutyType\":\"夜班\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 09:10:53');
INSERT INTO `sys_oper_log` VALUES (372, '值班记录', 1, 'com.ruoyi.duty.controller.SysDutyLogController.add()', 'POST', 1, 'syx', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"syx\",\"deptId\":205,\"endTime\":\"2023-01-13\",\"params\":{},\"startTime\":\"2023-01-11\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'user_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\syx_temp\\RuoYi-Vue\\ruoyi-duty\\target\\classes\\mapper\\duty\\SysDutyLogMapper.xml]\r\n### The error may involve com.ruoyi.duty.mapper.SysDutyLogMapper.insertSysDutyLog-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_duty_log          ( dept_id,                                                        start_time,                                           end_time,                                                        create_by,                          create_time )           values ( ?,                                                        ?,                                           ?,                                                        ?,                          sysdate() )\r\n### Cause: java.sql.SQLException: Field \'user_id\' doesn\'t have a default value\n; Field \'user_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'user_id\' doesn\'t have a default value', '2023-01-30 10:19:13');
INSERT INTO `sys_oper_log` VALUES (373, '值班记录', 3, 'com.ruoyi.duty.controller.SysDutyLogController.remove()', 'DELETE', 1, 'admin', NULL, '/duty/duty_log/152,153,154,155,156,157,158,159,160,161', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 11:25:24');
INSERT INTO `sys_oper_log` VALUES (374, '值班记录', 3, 'com.ruoyi.duty.controller.SysDutyLogController.remove()', 'DELETE', 1, 'admin', NULL, '/duty/duty_log/162,163,164,165,166,167,168,169,170,171', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 11:25:26');
INSERT INTO `sys_oper_log` VALUES (375, '值班记录', 1, 'com.ruoyi.duty.controller.SysDutyLogController.add()', 'POST', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"deptId\":100,\"endTime\":\"2023-01-06\",\"params\":{},\"startTime\":\"2023-01-01\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'user_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\syx_temp\\RuoYi-Vue\\ruoyi-duty\\target\\classes\\mapper\\duty\\SysDutyLogMapper.xml]\r\n### The error may involve com.ruoyi.duty.mapper.SysDutyLogMapper.insertSysDutyLog-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_duty_log          ( dept_id,                                                        start_time,                                           end_time,                                                        create_by,                          create_time )           values ( ?,                                                        ?,                                           ?,                                                        ?,                          sysdate() )\r\n### Cause: java.sql.SQLException: Field \'user_id\' doesn\'t have a default value\n; Field \'user_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'user_id\' doesn\'t have a default value', '2023-01-30 12:52:46');
INSERT INTO `sys_oper_log` VALUES (376, '值班记录', 1, 'com.ruoyi.duty.controller.SysDutyLogController.add()', 'POST', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"deptId\":100,\"endTime\":\"2023-01-06\",\"params\":{},\"startTime\":\"2023-01-01\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'user_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\syx_temp\\RuoYi-Vue\\ruoyi-duty\\target\\classes\\mapper\\duty\\SysDutyLogMapper.xml]\r\n### The error may involve com.ruoyi.duty.mapper.SysDutyLogMapper.insertSysDutyLog-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_duty_log          ( dept_id,                                                        start_time,                                           end_time,                                                        create_by,                          create_time )           values ( ?,                                                        ?,                                           ?,                                                        ?,                          sysdate() )\r\n### Cause: java.sql.SQLException: Field \'user_id\' doesn\'t have a default value\n; Field \'user_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'user_id\' doesn\'t have a default value', '2023-01-30 12:53:46');
INSERT INTO `sys_oper_log` VALUES (377, '值班记录', 1, 'com.ruoyi.duty.controller.SysDutyLogController.add()', 'POST', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"deptId\":100,\"endTime\":\"2023-01-06\",\"params\":{},\"startTime\":\"2023-01-01\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'user_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\syx_temp\\RuoYi-Vue\\ruoyi-duty\\target\\classes\\mapper\\duty\\SysDutyLogMapper.xml]\r\n### The error may involve com.ruoyi.duty.mapper.SysDutyLogMapper.insertSysDutyLog-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_duty_log          ( dept_id,                                                        start_time,                                           end_time,                                                        create_by,                          create_time )           values ( ?,                                                        ?,                                           ?,                                                        ?,                          sysdate() )\r\n### Cause: java.sql.SQLException: Field \'user_id\' doesn\'t have a default value\n; Field \'user_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'user_id\' doesn\'t have a default value', '2023-01-30 12:53:51');
INSERT INTO `sys_oper_log` VALUES (378, '值班记录', 1, 'com.ruoyi.duty.controller.SysDutyLogController.add()', 'POST', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"deptId\":201,\"endTime\":\"2023-01-06\",\"logId\":41,\"params\":{},\"startTime\":\"2023-01-08\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 12:57:37');
INSERT INTO `sys_oper_log` VALUES (379, '值班记录', 3, 'com.ruoyi.duty.controller.SysDutyLogController.remove()', 'DELETE', 1, 'admin', NULL, '/duty/duty_log/1,2,3,4,5,6,7,8,9,10', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 12:57:50');
INSERT INTO `sys_oper_log` VALUES (380, '值班记录', 3, 'com.ruoyi.duty.controller.SysDutyLogController.remove()', 'DELETE', 1, 'admin', NULL, '/duty/duty_log/11,12,13,14,15,16,17,18,19,20', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 12:57:54');
INSERT INTO `sys_oper_log` VALUES (381, '值班记录', 3, 'com.ruoyi.duty.controller.SysDutyLogController.remove()', 'DELETE', 1, 'admin', NULL, '/duty/duty_log/21,22,23,24,25,26,27,28,29,30', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 12:58:01');
INSERT INTO `sys_oper_log` VALUES (382, '值班记录', 3, 'com.ruoyi.duty.controller.SysDutyLogController.remove()', 'DELETE', 1, 'admin', NULL, '/duty/duty_log/31,32,33,34,35,36,37,38,39,40', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 12:58:08');
INSERT INTO `sys_oper_log` VALUES (383, '值班记录', 1, 'com.ruoyi.duty.controller.SysDutyLogController.add()', 'POST', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"deptId\":201,\"endTime\":\"2023-01-06\",\"logId\":42,\"params\":{},\"startTime\":\"2023-01-03\",\"userId\":114}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 16:09:30');
INSERT INTO `sys_oper_log` VALUES (384, '值班记录', 1, 'com.ruoyi.duty.controller.SysDutyLogController.add()', 'POST', 1, 'syx', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"syx\",\"deptId\":200,\"endTime\":\"2022-12-29\",\"logId\":43,\"params\":{},\"startTime\":\"2023-01-02\",\"userId\":109}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 16:12:28');
INSERT INTO `sys_oper_log` VALUES (385, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-01-19 10:08:17\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,103,1016,1017,1018,1019,2060,2097,2098,2099,2100,2101,2102,2103,2104,2105,2106,2107,2108],\"params\":{},\"roleId\":100,\"roleKey\":\"dempBoss\",\"roleName\":\"主任\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 17:11:18');
INSERT INTO `sys_oper_log` VALUES (386, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-01-19 10:08:17\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":100,\"roleKey\":\"dempBoss\",\"roleName\":\"主任\",\"roleSort\":3,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 17:11:41');
INSERT INTO `sys_oper_log` VALUES (387, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"\",\"createTime\":\"2023-01-30 00:05:45\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2098,\"menuName\":\"值班记录查询\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2097,\"path\":\"#\",\"perms\":\"duty:duty_log:query\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 18:10:37');
INSERT INTO `sys_oper_log` VALUES (388, '用户管理', 4, 'com.ruoyi.web.controller.system.SysUserController.insertAuthRole()', 'PUT', 1, 'admin', NULL, '/system/user/authRole', '127.0.0.1', '内网IP', '101 [100]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 18:10:57');
INSERT INTO `sys_oper_log` VALUES (389, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-01-18 15:42:13\",\"dataScope\":\"5\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 18:39:33');
INSERT INTO `sys_oper_log` VALUES (390, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-01-19 10:08:17\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":100,\"roleKey\":\"dempBoss\",\"roleName\":\"主任\",\"roleSort\":3,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-30 18:39:38');
INSERT INTO `sys_oper_log` VALUES (391, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/system/user/profile/avatar', '10.1.2.181', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2023/01/31/blob_20230131160142A001.png\",\"code\":200}', 0, NULL, '2023-01-31 16:01:42');
INSERT INTO `sys_oper_log` VALUES (392, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '10.1.2.181', '内网IP', '{\"admin\":true,\"createBy\":\"admin\",\"createTime\":\"2023-01-18 15:42:12\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"中国电信德宏分公司\",\"leader\":\"\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"email\":\"ry@163.com\",\"loginDate\":\"2023-01-31 15:24:33\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"超级管理员\",\"params\":{},\"phonenumber\":\"15888888888\",\"remark\":\"管理员\",\"roles\":[{\"admin\":true,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":1,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"roleSort\":1,\"status\":\"0\"},{\"admin\":false,\"dataScope\":\"5\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"userId\":1,\"userName\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 16:01:44');
INSERT INTO `sys_oper_log` VALUES (393, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"1\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":122,\"userName\":\"123123\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 16:13:02');
INSERT INTO `sys_oper_log` VALUES (394, '值班记录', 1, 'com.ruoyi.duty.controller.SysDutyLogController.add()', 'POST', 1, 'syx', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"syx\",\"deptId\":207,\"dutyId\":12,\"endTime\":\"2023-01-27\",\"logId\":44,\"params\":{},\"startTime\":\"2022-12-27\",\"userId\":102}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 16:23:31');
INSERT INTO `sys_oper_log` VALUES (395, '值班记录', 1, 'com.ruoyi.duty.controller.SysDutyLogController.add()', 'POST', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"deptId\":100,\"dutyId\":12,\"endTime\":\"2023-01-20\",\"logId\":45,\"params\":{},\"startTime\":\"2023-01-05\",\"userId\":102}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 16:39:37');
INSERT INTO `sys_oper_log` VALUES (396, '值班记录', 3, 'com.ruoyi.duty.controller.SysDutyLogController.remove()', 'DELETE', 1, 'admin', NULL, '/duty/duty_log/45', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 16:51:29');
INSERT INTO `sys_oper_log` VALUES (397, '值班记录', 5, 'com.ruoyi.duty.controller.SysDutyLogController.export()', 'POST', 1, 'admin', NULL, '/duty/duty_log/export', '127.0.0.1', '内网IP', '{\"params\":{\"dataScope\":\"\"}}', NULL, 0, NULL, '2023-01-31 17:17:54');
INSERT INTO `sys_oper_log` VALUES (398, '值班记录', 5, 'com.ruoyi.duty.controller.SysDutyLogController.export()', 'POST', 1, 'admin', NULL, '/duty/duty_log/export', '127.0.0.1', '内网IP', '{\"params\":{\"dataScope\":\"\"}}', NULL, 0, NULL, '2023-01-31 17:20:06');
INSERT INTO `sys_oper_log` VALUES (399, '值班记录', 5, 'com.ruoyi.duty.controller.SysDutyLogController.export()', 'POST', 1, 'admin', NULL, '/duty/duty_log/export', '127.0.0.1', '内网IP', '{\"params\":{\"dataScope\":\"\"}}', NULL, 0, NULL, '2023-01-31 17:22:24');
INSERT INTO `sys_oper_log` VALUES (400, '值班记录', 5, 'com.ruoyi.duty.controller.SysDutyLogController.export()', 'POST', 1, 'admin', NULL, '/duty/duty_log/export', '127.0.0.1', '内网IP', '{\"params\":{\"dataScope\":\"\"}}', NULL, 0, NULL, '2023-01-31 17:24:15');
INSERT INTO `sys_oper_log` VALUES (401, '值班记录', 5, 'com.ruoyi.duty.controller.SysDutyLogController.export()', 'POST', 1, 'admin', NULL, '/duty/duty_log/export', '127.0.0.1', '内网IP', '{\"params\":{\"dataScope\":\"\"}}', NULL, 0, NULL, '2023-01-31 17:25:17');
INSERT INTO `sys_oper_log` VALUES (402, '值班记录', 2, 'com.ruoyi.duty.controller.SysDutyLogController.edit()', 'PUT', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-01-30 12:57:37\",\"dept\":{\"children\":[],\"deptId\":201,\"deptName\":\"网络部\",\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":201,\"duty\":{\"dutyId\":12,\"dutyType\":\"白班\",\"params\":{}},\"dutyId\":12,\"endTime\":\"2023-01-06\",\"logId\":41,\"params\":{},\"startTime\":\"2023-01-08\",\"updateBy\":\"admin\",\"user\":{\"admin\":false,\"avatar\":\"IqPpP5hdud\",\"delFlag\":\"0\",\"deptId\":201,\"email\":\"zding9@icloud.com\",\"nickName\":\"丁子韬\",\"params\":{},\"phonenumber\":\"15795296293\",\"sex\":\"0\",\"status\":\"0\",\"userId\":108,\"userName\":\"dingzitao202\"},\"userId\":108}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'userName\' in \'class com.ruoyi.duty.domain.SysDutyLog\'', '2023-01-31 18:42:07');
INSERT INTO `sys_oper_log` VALUES (403, '值班记录', 2, 'com.ruoyi.duty.controller.SysDutyLogController.edit()', 'PUT', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-01-30 12:57:37\",\"dept\":{\"children\":[],\"deptId\":201,\"deptName\":\"网络部\",\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":201,\"duty\":{\"dutyId\":12,\"dutyType\":\"白班\",\"params\":{}},\"dutyId\":12,\"endTime\":\"2023-01-06\",\"logId\":41,\"params\":{},\"startTime\":\"2023-01-08\",\"updateBy\":\"admin\",\"user\":{\"admin\":false,\"avatar\":\"IqPpP5hdud\",\"delFlag\":\"0\",\"deptId\":201,\"email\":\"zding9@icloud.com\",\"nickName\":\"丁子韬\",\"params\":{},\"phonenumber\":\"15795296293\",\"sex\":\"0\",\"status\":\"0\",\"userId\":108,\"userName\":\"dingzitao202\"},\"userId\":108}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'userName\' in \'class com.ruoyi.duty.domain.SysDutyLog\'', '2023-01-31 18:42:21');
INSERT INTO `sys_oper_log` VALUES (404, '值班记录', 2, 'com.ruoyi.duty.controller.SysDutyLogController.edit()', 'PUT', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-01-30 12:57:37\",\"dept\":{\"children\":[],\"deptId\":201,\"deptName\":\"网络部\",\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":201,\"duty\":{\"dutyId\":12,\"dutyType\":\"白班\",\"params\":{}},\"dutyId\":12,\"endTime\":\"2023-01-06\",\"logId\":41,\"params\":{},\"startTime\":\"2023-01-08\",\"updateBy\":\"admin\",\"user\":{\"admin\":false,\"avatar\":\"IqPpP5hdud\",\"delFlag\":\"0\",\"deptId\":201,\"email\":\"zding9@icloud.com\",\"nickName\":\"丁子韬\",\"params\":{},\"phonenumber\":\"15795296293\",\"sex\":\"0\",\"status\":\"0\",\"userId\":108,\"userName\":\"dingzitao202\"},\"userId\":108}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'userName\' in \'class com.ruoyi.duty.domain.SysDutyLog\'', '2023-01-31 18:42:33');
INSERT INTO `sys_oper_log` VALUES (405, '值班记录', 2, 'com.ruoyi.duty.controller.SysDutyLogController.edit()', 'PUT', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-01-30 12:57:37\",\"dept\":{\"children\":[],\"deptId\":201,\"deptName\":\"网络部\",\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":201,\"duty\":{\"dutyId\":12,\"dutyType\":\"白班\",\"params\":{}},\"dutyId\":12,\"endTime\":\"2023-01-06\",\"logId\":41,\"params\":{},\"startTime\":\"2023-01-08\",\"updateBy\":\"admin\",\"user\":{\"admin\":false,\"avatar\":\"IqPpP5hdud\",\"delFlag\":\"0\",\"deptId\":201,\"email\":\"zding9@icloud.com\",\"nickName\":\"丁子韬\",\"params\":{},\"phonenumber\":\"15795296293\",\"sex\":\"0\",\"status\":\"0\",\"userId\":108,\"userName\":\"dingzitao202\"},\"userId\":108}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'userName\' in \'class com.ruoyi.duty.domain.SysDutyLog\'', '2023-01-31 18:42:55');
INSERT INTO `sys_oper_log` VALUES (406, '值班记录', 2, 'com.ruoyi.duty.controller.SysDutyLogController.edit()', 'PUT', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-01-30 12:57:37\",\"dept\":{\"children\":[],\"deptId\":201,\"deptName\":\"网络部\",\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":201,\"duty\":{\"dutyId\":12,\"dutyType\":\"白班\",\"params\":{}},\"dutyId\":12,\"endTime\":\"2023-01-06\",\"logId\":41,\"params\":{},\"startTime\":\"2023-01-08\",\"updateBy\":\"admin\",\"user\":{\"admin\":false,\"avatar\":\"IqPpP5hdud\",\"delFlag\":\"0\",\"deptId\":201,\"email\":\"zding9@icloud.com\",\"nickName\":\"丁子韬\",\"params\":{},\"phonenumber\":\"15795296293\",\"sex\":\"0\",\"status\":\"0\",\"userId\":108,\"userName\":\"dingzitao202\"},\"userId\":108}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'userName\' in \'class com.ruoyi.duty.domain.SysDutyLog\'', '2023-01-31 18:43:43');
INSERT INTO `sys_oper_log` VALUES (407, '值班记录', 2, 'com.ruoyi.duty.controller.SysDutyLogController.edit()', 'PUT', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-01-30 12:57:37\",\"dept\":{\"children\":[],\"deptId\":201,\"deptName\":\"网络部\",\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":201,\"duty\":{\"dutyId\":12,\"dutyType\":\"白班\",\"params\":{}},\"dutyId\":12,\"endTime\":\"2023-01-06\",\"logId\":41,\"params\":{},\"startTime\":\"2023-01-08\",\"updateBy\":\"admin\",\"user\":{\"admin\":false,\"avatar\":\"IqPpP5hdud\",\"delFlag\":\"0\",\"deptId\":201,\"email\":\"zding9@icloud.com\",\"nickName\":\"丁子韬\",\"params\":{},\"phonenumber\":\"15795296293\",\"sex\":\"0\",\"status\":\"0\",\"userId\":108,\"userName\":\"dingzitao202\"},\"userId\":108}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'userName\' in \'class com.ruoyi.duty.domain.SysDutyLog\'', '2023-01-31 18:44:51');
INSERT INTO `sys_oper_log` VALUES (408, '值班记录', 2, 'com.ruoyi.duty.controller.SysDutyLogController.edit()', 'PUT', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-01-30 16:09:30\",\"dept\":{\"children\":[],\"deptId\":201,\"deptName\":\"网络部\",\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":201,\"duty\":{\"dutyId\":13,\"dutyType\":\"行政值班\",\"params\":{}},\"dutyId\":13,\"endTime\":\"2023-01-06\",\"logId\":42,\"params\":{},\"startTime\":\"2023-01-03\",\"updateBy\":\"admin\",\"user\":{\"admin\":false,\"avatar\":\"9yuGzb5hIf\",\"delFlag\":\"0\",\"deptId\":201,\"email\":\"shihan17@gmail.com\",\"nickName\":\"高詩涵\",\"params\":{},\"phonenumber\":\"19013341728\",\"sex\":\"1\",\"status\":\"0\",\"userId\":114,\"userName\":\"gaoshih\"},\"userId\":114}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'userName\' in \'class com.ruoyi.duty.domain.SysDutyLog\'', '2023-01-31 18:45:13');
INSERT INTO `sys_oper_log` VALUES (409, '值班记录', 1, 'com.ruoyi.duty.controller.SysDutyLogController.add()', 'POST', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"deptId\":201,\"dutyId\":12,\"endTime\":\"2023-01-06\",\"logId\":46,\"params\":{},\"startTime\":\"2023-01-08\",\"userId\":103}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 19:10:00');
INSERT INTO `sys_oper_log` VALUES (410, '值班记录', 1, 'com.ruoyi.duty.controller.SysDutyLogController.add()', 'POST', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"deptId\":201,\"dutyId\":12,\"endTime\":\"2023-01-06\",\"logId\":47,\"params\":{},\"startTime\":\"2023-01-08\",\"userId\":105}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 19:10:09');
INSERT INTO `sys_oper_log` VALUES (411, '值班记录', 3, 'com.ruoyi.duty.controller.SysDutyLogController.remove()', 'DELETE', 1, 'admin', NULL, '/duty/duty_log/47', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 19:10:13');
INSERT INTO `sys_oper_log` VALUES (412, '值班记录', 3, 'com.ruoyi.duty.controller.SysDutyLogController.remove()', 'DELETE', 1, 'admin', NULL, '/duty/duty_log/46', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 19:10:16');
INSERT INTO `sys_oper_log` VALUES (413, '值班记录', 1, 'com.ruoyi.duty.controller.SysDutyLogController.add()', 'POST', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"deptId\":207,\"dutyId\":12,\"endTime\":\"2023-01-27\",\"params\":{},\"startTime\":\"2022-12-27\"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'user_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\syx_temp\\RuoYi-Vue\\ruoyi-duty\\target\\classes\\mapper\\duty\\SysDutyLogMapper.xml]\r\n### The error may involve com.ruoyi.duty.mapper.SysDutyLogMapper.insertSysDutyLog-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_duty_log    ( duty_id,                                         dept_id,                         start_time,             end_time,                 create_by,     create_time )     values ( ?,                                         ?,                         ?,             ?,                 ?,     sysdate() )\r\n### Cause: java.sql.SQLException: Field \'user_id\' doesn\'t have a default value\n; Field \'user_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'user_id\' doesn\'t have a default value', '2023-01-31 19:10:25');
INSERT INTO `sys_oper_log` VALUES (414, '值班记录', 1, 'com.ruoyi.duty.controller.SysDutyLogController.add()', 'POST', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"deptId\":207,\"dutyId\":12,\"endTime\":\"2023-01-27\",\"logId\":48,\"params\":{},\"startTime\":\"2022-12-27\",\"userId\":102}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 19:10:32');
INSERT INTO `sys_oper_log` VALUES (415, '值班记录', 1, 'com.ruoyi.duty.controller.SysDutyLogController.add()', 'POST', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"deptId\":207,\"dutyId\":12,\"endTime\":\"2023-01-27\",\"logId\":49,\"params\":{},\"startTime\":\"2022-12-27\",\"userId\":102}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 19:10:40');
INSERT INTO `sys_oper_log` VALUES (416, '值班记录', 1, 'com.ruoyi.duty.controller.SysDutyLogController.add()', 'POST', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"deptId\":201,\"dutyId\":12,\"endTime\":\"2023-01-06\",\"logId\":50,\"params\":{},\"startTime\":\"2023-01-08\",\"userId\":103}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 19:13:12');
INSERT INTO `sys_oper_log` VALUES (417, '值班记录', 2, 'com.ruoyi.duty.controller.SysDutyLogController.edit()', 'PUT', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"deptId\":201,\"dutyId\":12,\"endTime\":\"2023-01-06\",\"logId\":41,\"params\":{},\"startTime\":\"2023-01-08\",\"updateBy\":\"admin\",\"userId\":105}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'userName\' in \'class com.ruoyi.duty.domain.SysDutyLog\'', '2023-01-31 19:13:42');
INSERT INTO `sys_oper_log` VALUES (418, '值班记录', 2, 'com.ruoyi.duty.controller.SysDutyLogController.edit()', 'PUT', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"deptId\":201,\"dutyId\":12,\"endTime\":\"2023-01-06\",\"logId\":41,\"params\":{},\"startTime\":\"2023-01-08\",\"updateBy\":\"admin\",\"userId\":105}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'userName\' in \'class com.ruoyi.duty.domain.SysDutyLog\'', '2023-01-31 19:13:47');
INSERT INTO `sys_oper_log` VALUES (419, '值班记录', 2, 'com.ruoyi.duty.controller.SysDutyLogController.edit()', 'PUT', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"deptId\":201,\"dutyId\":12,\"endTime\":\"2023-01-06\",\"logId\":41,\"params\":{},\"startTime\":\"2023-01-08\",\"updateBy\":\"admin\",\"userId\":105}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'userName\' in \'class com.ruoyi.duty.domain.SysDutyLog\'', '2023-01-31 19:13:53');
INSERT INTO `sys_oper_log` VALUES (420, '值班记录', 2, 'com.ruoyi.duty.controller.SysDutyLogController.edit()', 'PUT', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"deptId\":201,\"dutyId\":12,\"endTime\":\"2023-01-06\",\"logId\":41,\"params\":{},\"startTime\":\"2023-01-08\",\"updateBy\":\"admin\",\"userId\":101}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'userName\' in \'class com.ruoyi.duty.domain.SysDutyLog\'', '2023-01-31 19:13:59');
INSERT INTO `sys_oper_log` VALUES (421, '值班记录', 2, 'com.ruoyi.duty.controller.SysDutyLogController.edit()', 'PUT', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"deptId\":201,\"dutyId\":12,\"endTime\":\"2023-01-06\",\"logId\":41,\"params\":{},\"startTime\":\"2023-01-08\",\"updateBy\":\"admin\",\"userId\":103}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'userName\' in \'class com.ruoyi.duty.domain.SysDutyLog\'', '2023-01-31 19:15:55');
INSERT INTO `sys_oper_log` VALUES (422, '值班记录', 2, 'com.ruoyi.duty.controller.SysDutyLogController.edit()', 'PUT', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"deptId\":201,\"dutyId\":12,\"endTime\":\"2023-01-06\",\"logId\":41,\"params\":{},\"startTime\":\"2023-01-08\",\"updateBy\":\"admin\",\"userId\":102}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'userName\' in \'class com.ruoyi.duty.domain.SysDutyLog\'', '2023-01-31 19:16:48');
INSERT INTO `sys_oper_log` VALUES (423, '值班记录', 2, 'com.ruoyi.duty.controller.SysDutyLogController.edit()', 'PUT', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"deptId\":201,\"dutyId\":12,\"endTime\":\"2023-01-06\",\"logId\":41,\"params\":{},\"startTime\":\"2023-01-08\",\"updateBy\":\"admin\",\"userId\":103}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'userName\' in \'class com.ruoyi.duty.domain.SysDutyLog\'', '2023-01-31 19:17:07');
INSERT INTO `sys_oper_log` VALUES (424, '值班记录', 2, 'com.ruoyi.duty.controller.SysDutyLogController.edit()', 'PUT', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"deptId\":201,\"dutyId\":12,\"endTime\":\"2023-01-06\",\"logId\":41,\"params\":{},\"startTime\":\"2023-01-08\",\"updateBy\":\"admin\",\"userId\":108}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'userName\' in \'class com.ruoyi.duty.domain.SysDutyLog\'', '2023-01-31 19:21:19');
INSERT INTO `sys_oper_log` VALUES (425, '值班记录', 1, 'com.ruoyi.duty.controller.SysDutyLogController.add()', 'POST', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"deptId\":100,\"dutyId\":12,\"endTime\":\"2023-01-27\",\"logId\":51,\"params\":{},\"startTime\":\"2023-01-11\",\"userId\":102}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 19:21:40');
INSERT INTO `sys_oper_log` VALUES (426, '值班记录', 2, 'com.ruoyi.duty.controller.SysDutyLogController.edit()', 'PUT', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"deptId\":201,\"dutyId\":12,\"endTime\":\"2023-01-06\",\"logId\":41,\"params\":{},\"startTime\":\"2023-01-08\",\"updateBy\":\"admin\",\"userId\":101}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'userName\' in \'class com.ruoyi.duty.domain.SysDutyLog\'', '2023-01-31 19:22:04');
INSERT INTO `sys_oper_log` VALUES (427, '值班记录', 2, 'com.ruoyi.duty.controller.SysDutyLogController.edit()', 'PUT', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"deptId\":201,\"dutyId\":12,\"endTime\":\"2023-01-06\",\"logId\":41,\"params\":{},\"startTime\":\"2023-01-08\",\"updateBy\":\"admin\",\"userId\":108}', NULL, 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'userName\' in \'class com.ruoyi.duty.domain.SysDutyLog\'', '2023-01-31 19:24:35');
INSERT INTO `sys_oper_log` VALUES (428, '值班记录', 2, 'com.ruoyi.duty.controller.SysDutyLogController.edit()', 'PUT', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"deptId\":201,\"dutyId\":12,\"endTime\":\"2023-01-06\",\"logId\":41,\"params\":{},\"startTime\":\"2023-01-08\",\"updateBy\":\"admin\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 19:31:21');
INSERT INTO `sys_oper_log` VALUES (429, '值班记录', 2, 'com.ruoyi.duty.controller.SysDutyLogController.edit()', 'PUT', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"deptId\":204,\"dutyId\":12,\"endTime\":\"2023-01-06\",\"logId\":41,\"params\":{},\"startTime\":\"2023-01-08\",\"updateBy\":\"admin\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 19:31:28');
INSERT INTO `sys_oper_log` VALUES (430, '值班记录', 2, 'com.ruoyi.duty.controller.SysDutyLogController.edit()', 'PUT', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"deptId\":201,\"dutyId\":12,\"endTime\":\"2023-01-06\",\"logId\":41,\"params\":{},\"startTime\":\"2023-01-08\",\"updateBy\":\"admin\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 19:31:39');
INSERT INTO `sys_oper_log` VALUES (431, '值班记录', 2, 'com.ruoyi.duty.controller.SysDutyLogController.edit()', 'PUT', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"deptId\":201,\"dutyId\":12,\"endTime\":\"2023-01-06\",\"logId\":41,\"params\":{},\"startTime\":\"2023-01-02\",\"updateBy\":\"admin\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 19:31:49');
INSERT INTO `sys_oper_log` VALUES (432, '值班记录', 2, 'com.ruoyi.duty.controller.SysDutyLogController.edit()', 'PUT', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"deptId\":202,\"dutyId\":13,\"endTime\":\"2023-01-06\",\"logId\":42,\"params\":{},\"startTime\":\"2023-01-03\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 19:51:20');
INSERT INTO `sys_oper_log` VALUES (433, '值班记录', 3, 'com.ruoyi.duty.controller.SysDutyLogController.remove()', 'DELETE', 1, 'admin', NULL, '/duty/duty_log/51', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 19:51:23');
INSERT INTO `sys_oper_log` VALUES (434, '值班记录', 3, 'com.ruoyi.duty.controller.SysDutyLogController.remove()', 'DELETE', 1, 'admin', NULL, '/duty/duty_log/50', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 19:51:26');
INSERT INTO `sys_oper_log` VALUES (435, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/101,102,103,104,105,106,107,108,109,110', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 19:51:48');
INSERT INTO `sys_oper_log` VALUES (436, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/111,112,113,114,115,116,117,118,119,120', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 19:51:51');
INSERT INTO `sys_oper_log` VALUES (437, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/121,122', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 19:51:54');
INSERT INTO `sys_oper_log` VALUES (438, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/204', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 19:59:06');
INSERT INTO `sys_oper_log` VALUES (439, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/208', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 19:59:09');
INSERT INTO `sys_oper_log` VALUES (440, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/206', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 19:59:11');
INSERT INTO `sys_oper_log` VALUES (441, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/202', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在下级部门,不允许删除\",\"code\":601}', 0, NULL, '2023-01-31 19:59:13');
INSERT INTO `sys_oper_log` VALUES (442, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/207', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 19:59:16');
INSERT INTO `sys_oper_log` VALUES (443, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/205', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 19:59:18');
INSERT INTO `sys_oper_log` VALUES (444, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/200', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 19:59:20');
INSERT INTO `sys_oper_log` VALUES (445, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/203', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 19:59:22');
INSERT INTO `sys_oper_log` VALUES (446, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/202', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 19:59:24');
INSERT INTO `sys_oper_log` VALUES (447, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/201', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 19:59:25');
INSERT INTO `sys_oper_log` VALUES (448, '值班记录', 3, 'com.ruoyi.duty.controller.SysDutyLogController.remove()', 'DELETE', 1, 'admin', NULL, '/duty/duty_log/43,44', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 20:04:30');
INSERT INTO `sys_oper_log` VALUES (449, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":100,\"nickName\":\"123\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":123,\"userName\":\"1234\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 20:07:24');
INSERT INTO `sys_oper_log` VALUES (450, '值班记录', 1, 'com.ruoyi.duty.controller.SysDutyLogController.add()', 'POST', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"deptId\":100,\"dutyId\":12,\"endTime\":\"2023-01-20\",\"logId\":52,\"params\":{},\"startTime\":\"2023-01-11\",\"userId\":123}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 20:15:56');
INSERT INTO `sys_oper_log` VALUES (451, '值班记录', 3, 'com.ruoyi.duty.controller.SysDutyLogController.remove()', 'DELETE', 1, 'admin', NULL, '/duty/duty_log/52', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 20:17:02');
INSERT INTO `sys_oper_log` VALUES (452, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/123', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 20:35:22');
INSERT INTO `sys_oper_log` VALUES (453, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"212222\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":124,\"userName\":\"22222\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 20:37:53');
INSERT INTO `sys_oper_log` VALUES (454, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-01-31 20:37:53\",\"delFlag\":\"0\",\"deptId\":100,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"212222\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":124,\"userName\":\"22222\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 20:38:10');
INSERT INTO `sys_oper_log` VALUES (455, '值班记录', 1, 'com.ruoyi.duty.controller.SysDutyLogController.add()', 'POST', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"deptId\":100,\"dutyId\":12,\"endTime\":\"2023-01-25\",\"logId\":53,\"params\":{},\"startTime\":\"2023-01-02\",\"userId\":124}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 20:38:23');
INSERT INTO `sys_oper_log` VALUES (456, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/124', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 20:38:39');
INSERT INTO `sys_oper_log` VALUES (457, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"1\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":125,\"userName\":\"12345\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 21:14:16');
INSERT INTO `sys_oper_log` VALUES (458, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-01-31 21:14:16\",\"delFlag\":\"0\",\"deptId\":100,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"1\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":125,\"userName\":\"12345\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 21:14:24');
INSERT INTO `sys_oper_log` VALUES (459, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"1111\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":126,\"userName\":\"11111\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 21:14:36');
INSERT INTO `sys_oper_log` VALUES (460, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"2222\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":127,\"userName\":\"2222\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 21:14:43');
INSERT INTO `sys_oper_log` VALUES (461, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":100,\"nickName\":\"3333\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":128,\"userName\":\"3333\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 21:14:50');
INSERT INTO `sys_oper_log` VALUES (462, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-01-31 21:14:36\",\"delFlag\":\"0\",\"deptId\":100,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"1111\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":126,\"userName\":\"11111\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 21:14:53');
INSERT INTO `sys_oper_log` VALUES (463, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-01-31 21:14:43\",\"delFlag\":\"0\",\"deptId\":100,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"2222\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":127,\"userName\":\"2222\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 21:14:57');
INSERT INTO `sys_oper_log` VALUES (464, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"createBy\":\"admin\",\"deptName\":\"测试部门\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 21:15:31');
INSERT INTO `sys_oper_log` VALUES (465, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-01-31 21:14:16\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"中国电信德宏分公司\",\"leader\":\"\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"deptId\":209,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"1\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":125,\"userName\":\"12345\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 21:16:16');
INSERT INTO `sys_oper_log` VALUES (466, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-01-31 21:14:36\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"中国电信德宏分公司\",\"leader\":\"\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"deptId\":209,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"1111\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":126,\"userName\":\"11111\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 21:16:20');
INSERT INTO `sys_oper_log` VALUES (467, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-01-31 21:14:43\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"中国电信德宏分公司\",\"leader\":\"\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"deptId\":209,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"2222\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":127,\"userName\":\"2222\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 21:16:24');
INSERT INTO `sys_oper_log` VALUES (468, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-01-31 21:14:50\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"中国电信德宏分公司\",\"leader\":\"\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"deptId\":209,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"3333\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":128,\"userName\":\"3333\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 21:16:29');
INSERT INTO `sys_oper_log` VALUES (469, '值班记录', 1, 'com.ruoyi.duty.controller.SysDutyLogController.add()', 'POST', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"deptId\":100,\"dutyId\":13,\"endTime\":\"2023-01-20\",\"logId\":54,\"params\":{},\"startTime\":\"2023-01-02\",\"userId\":127}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 21:16:58');
INSERT INTO `sys_oper_log` VALUES (470, '值班记录', 1, 'com.ruoyi.duty.controller.SysDutyLogController.add()', 'POST', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"deptId\":209,\"dutyId\":13,\"endTime\":\"2023-01-28\",\"logId\":55,\"params\":{},\"startTime\":\"2022-12-28\",\"userId\":126}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 21:17:09');
INSERT INTO `sys_oper_log` VALUES (471, '值班记录', 1, 'com.ruoyi.duty.controller.SysDutyLogController.add()', 'POST', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"deptId\":209,\"dutyId\":13,\"endTime\":\"2023-01-28\",\"logId\":56,\"params\":{},\"startTime\":\"2023-01-11\",\"userId\":128}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 21:17:23');
INSERT INTO `sys_oper_log` VALUES (472, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/125', '127.0.0.1', '内网IP', '{}', NULL, 1, 'Invalid bound statement (not found): com.ruoyi.system.mapper.SysUserDutyLogMapper.deleteUserDutyLog', '2023-01-31 21:17:33');
INSERT INTO `sys_oper_log` VALUES (473, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/125', '127.0.0.1', '内网IP', '{}', NULL, 1, 'Invalid bound statement (not found): com.ruoyi.system.mapper.SysUserDutyLogMapper.deleteUserDutyLog', '2023-01-31 21:17:38');
INSERT INTO `sys_oper_log` VALUES (474, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/125', '127.0.0.1', '内网IP', '{}', NULL, 1, 'Invalid bound statement (not found): com.ruoyi.system.mapper.SysUserDutyLogMapper.deleteUserDutyLog', '2023-01-31 21:24:59');
INSERT INTO `sys_oper_log` VALUES (475, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/125', '127.0.0.1', '内网IP', '{}', NULL, 1, 'Invalid bound statement (not found): com.ruoyi.system.mapper.SysUserDutyLogMapper.deleteUserDutyLog', '2023-01-31 21:26:41');
INSERT INTO `sys_oper_log` VALUES (476, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/125', '127.0.0.1', '内网IP', '{}', NULL, 1, 'Invalid bound statement (not found): com.ruoyi.system.mapper.SysUserDutyLogMapper.deleteUserDutyLog', '2023-01-31 21:28:52');
INSERT INTO `sys_oper_log` VALUES (477, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/125', '127.0.0.1', '内网IP', '{}', NULL, 1, 'Invalid bound statement (not found): com.ruoyi.system.mapper.SysUserDutyLogMapper.deleteUserDutyLog', '2023-01-31 21:30:33');
INSERT INTO `sys_oper_log` VALUES (478, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/125', '127.0.0.1', '内网IP', '{}', NULL, 1, 'Invalid bound statement (not found): com.ruoyi.system.mapper.SysUserDutyLogMapper.deleteUserDutyLog', '2023-01-31 21:37:01');
INSERT INTO `sys_oper_log` VALUES (479, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/125', '127.0.0.1', '内网IP', '{}', NULL, 1, 'Invalid bound statement (not found): com.ruoyi.system.mapper.SysUserDutyLogMapper.deleteUserDutyLog', '2023-01-31 21:40:08');
INSERT INTO `sys_oper_log` VALUES (480, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/125', '127.0.0.1', '内网IP', '{}', NULL, 1, 'Invalid bound statement (not found): com.ruoyi.system.mapper.SysUserDutyLogMapper.deleteUserDutyLog', '2023-01-31 21:40:26');
INSERT INTO `sys_oper_log` VALUES (481, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/125', '127.0.0.1', '内网IP', '{}', NULL, 1, 'Invalid bound statement (not found): com.ruoyi.system.mapper.SysUserDutyLogMapper.deleteUserDutyLog', '2023-01-31 21:48:14');
INSERT INTO `sys_oper_log` VALUES (482, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/125', '127.0.0.1', '内网IP', '{}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'del_flag\' in field list is ambiguous\r\n### The error may exist in file [D:\\syx_temp\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\SysUserMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.SysUserMapper.deleteUserByIds-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update sys_user,sys_duty set del_flag = \'2\' where user_id in    (      ?    )\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Column \'del_flag\' in field list is ambiguous\n; Column \'del_flag\' in field list is ambiguous; nested exception is java.sql.SQLIntegrityConstraintViolationException: Column \'del_flag\' in field list is ambiguous', '2023-01-31 21:52:14');
INSERT INTO `sys_oper_log` VALUES (483, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/126', '127.0.0.1', '内网IP', '{}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'update sys_user u,sys_duty_log log\n		set u.del_flag = \'2\',\n		log.del_flag = \'2\'\n\' at line 7\r\n### The error may exist in file [D:\\syx_temp\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\SysUserMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.SysUserMapper.deleteUserByIds-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update sys_user,sys_duty set del_flag = \'2\'   where user_id in    (      ?    )       update sys_user u,sys_duty_log log   set u.del_flag = \'2\',   log.del_flag = \'2\'   where u.user_id =in    (      ?    )    and log.user_id in    (      ?    ) ;\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'update sys_user u,sys_duty_log log\n		set u.del_flag = \'2\',\n		log.del_flag = \'2\'\n\' at line 7\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'update sys_user u,sys_duty_log log\n		set u.del_flag = \'2\',\n		log.del_flag = \'2\'\n\' at line 7', '2023-01-31 22:00:29');
INSERT INTO `sys_oper_log` VALUES (484, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/126', '127.0.0.1', '内网IP', '{}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'update sys_user u,sys_duty_log log\n		set u.del_flag = \'2\',\n		log.del_flag = \'2\'\n\' at line 7\r\n### The error may exist in file [D:\\syx_temp\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\SysUserMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.SysUserMapper.deleteUserByIds-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update sys_user,sys_duty set del_flag = \'2\'   where user_id in    (      ?    )       update sys_user u,sys_duty_log log   set u.del_flag = \'2\',   log.del_flag = \'2\'   where u.user_id in    (      ?    )    and log.user_id in    (      ?    ) ;\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'update sys_user u,sys_duty_log log\n		set u.del_flag = \'2\',\n		log.del_flag = \'2\'\n\' at line 7\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'update sys_user u,sys_duty_log log\n		set u.del_flag = \'2\',\n		log.del_flag = \'2\'\n\' at line 7', '2023-01-31 22:01:21');
INSERT INTO `sys_oper_log` VALUES (485, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/126', '127.0.0.1', '内网IP', '{}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'update sys_user u,sys_duty_log log\n		set u.del_flag = \'2\',\n		log.del_flag = \'2\'\n\' at line 7\r\n### The error may exist in file [D:\\syx_temp\\RuoYi-Vue\\ruoyi-system\\target\\classes\\mapper\\system\\SysUserMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.SysUserMapper.deleteUserByIds-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update sys_user,sys_duty set del_flag = \'2\'   where user_id in    (      ?    )       update sys_user u,sys_duty_log log   set u.del_flag = \'2\',   log.del_flag = \'2\'   where u.user_id in    (      ?    )    and log.user_id in    (      ?    ) ;\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'update sys_user u,sys_duty_log log\n		set u.del_flag = \'2\',\n		log.del_flag = \'2\'\n\' at line 7\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'update sys_user u,sys_duty_log log\n		set u.del_flag = \'2\',\n		log.del_flag = \'2\'\n\' at line 7', '2023-01-31 22:01:35');
INSERT INTO `sys_oper_log` VALUES (486, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/126', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 22:02:24');
INSERT INTO `sys_oper_log` VALUES (487, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/127,128', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 22:02:36');
INSERT INTO `sys_oper_log` VALUES (488, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":100,\"nickName\":\"ssss\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":129,\"userName\":\"ccccc\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 22:10:42');
INSERT INTO `sys_oper_log` VALUES (489, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updatePwd()', 'PUT', 1, 'admin', NULL, '/system/user/profile/updatePwd', '127.0.0.1', '内网IP', '\"SYXsyx@9527\" \"1q2w#E$R\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-01-31 22:24:01');
INSERT INTO `sys_oper_log` VALUES (490, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"test\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":100,\"userName\":\"test\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 11:01:58');
INSERT INTO `sys_oper_log` VALUES (491, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updatePwd()', 'PUT', 1, 'admin', NULL, '/system/user/profile/updatePwd', '127.0.0.1', '内网IP', '\"123456\" \"1q2w#E$R\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 11:10:26');
INSERT INTO `sys_oper_log` VALUES (492, '值班类型', 1, 'com.ruoyi.duty.controller.SysDutyController.add()', 'POST', 1, 'admin', NULL, '/duty/duty', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-02-01 11:54:53\",\"dutyId\":15,\"dutyType\":\"sss\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 11:54:53');
INSERT INTO `sys_oper_log` VALUES (493, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/100', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 12:00:26');
INSERT INTO `sys_oper_log` VALUES (494, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-02-01 09:33:06\",\"delFlag\":\"0\",\"dept\":{\"children\":[],\"deptId\":105,\"params\":{}},\"deptId\":100,\"email\":\"ry@qq.com\",\"loginDate\":\"2023-02-01 09:33:06\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"若依\",\"params\":{},\"phonenumber\":\"15666666666\",\"postIds\":[],\"remark\":\"测试员\",\"roleIds\":[],\"roles\":[],\"sex\":\"1\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":2,\"userName\":\"ry\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 12:01:26');
INSERT INTO `sys_oper_log` VALUES (495, '值班类型', 3, 'com.ruoyi.duty.controller.SysDutyController.remove()', 'DELETE', 1, 'admin', NULL, '/duty/duty/15', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 12:01:48');
INSERT INTO `sys_oper_log` VALUES (496, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/2', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:38:17');
INSERT INTO `sys_oper_log` VALUES (497, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', NULL, '/system/notice/1', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:39:34');
INSERT INTO `sys_oper_log` VALUES (498, '通知公告', 3, 'com.ruoyi.web.controller.system.SysNoticeController.remove()', 'DELETE', 1, 'admin', NULL, '/system/notice/2', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:39:36');
INSERT INTO `sys_oper_log` VALUES (499, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"tes\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":101,\"userName\":\"tes\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:41:50');
INSERT INTO `sys_oper_log` VALUES (500, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/101', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:41:55');
INSERT INTO `sys_oper_log` VALUES (501, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":100,\"nickName\":\"test\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":102,\"userName\":\"test\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:42:03');
INSERT INTO `sys_oper_log` VALUES (502, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"1111\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":103,\"userName\":\"1111\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:43:04');
INSERT INTO `sys_oper_log` VALUES (503, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"nickName\":\"1111\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userName\":\"1111\"}', '{\"msg\":\"新增用户\'1111\'失败，登录账号已存在\",\"code\":500}', 0, NULL, '2023-02-01 13:43:10');
INSERT INTO `sys_oper_log` VALUES (504, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"nickName\":\"11111\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userName\":\"1111\"}', '{\"msg\":\"新增用户\'1111\'失败，登录账号已存在\",\"code\":500}', 0, NULL, '2023-02-01 13:43:12');
INSERT INTO `sys_oper_log` VALUES (505, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":100,\"nickName\":\"2222\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":104,\"userName\":\"2222\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:43:25');
INSERT INTO `sys_oper_log` VALUES (506, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/103', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:43:28');
INSERT INTO `sys_oper_log` VALUES (507, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":100,\"nickName\":\"1111\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":105,\"userName\":\"1111\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:43:34');
INSERT INTO `sys_oper_log` VALUES (508, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":true,\"createBy\":\"admin\",\"createTime\":\"2023-01-18 15:42:12\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"中国电信德宏分公司\",\"leader\":\"\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"email\":\"ry@163.com\",\"loginDate\":\"2023-02-01 12:50:35\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"超级管理员\",\"params\":{},\"phonenumber\":\"15888888888\",\"remark\":\"管理员\",\"roles\":[{\"admin\":true,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":1,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"roleSort\":1,\"status\":\"0\"},{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"userId\":1,\"userName\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:45:04');
INSERT INTO `sys_oper_log` VALUES (509, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2023/02/01/blob_20230201134524A001.png\",\"code\":200}', 0, NULL, '2023-02-01 13:45:24');
INSERT INTO `sys_oper_log` VALUES (510, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":true,\"createBy\":\"admin\",\"createTime\":\"2023-01-18 15:42:12\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"中国电信德宏分公司\",\"leader\":\"\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"email\":\"ry@163.com\",\"loginDate\":\"2023-02-01 12:50:35\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"超级管理员\",\"params\":{},\"phonenumber\":\"15888888888\",\"remark\":\"管理员\",\"roles\":[{\"admin\":true,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":1,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"roleSort\":1,\"status\":\"0\"},{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"userId\":1,\"userName\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:45:27');
INSERT INTO `sys_oper_log` VALUES (511, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-02-01 13:42:03\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"中国电信德宏分公司\",\"leader\":\"\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"deptId\":100,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"测试账号-主任\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":102,\"userName\":\"test\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:48:07');
INSERT INTO `sys_oper_log` VALUES (512, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/104', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:48:23');
INSERT INTO `sys_oper_log` VALUES (513, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/105', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:48:25');
INSERT INTO `sys_oper_log` VALUES (514, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'admin', NULL, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2023/02/01/blob_20230201134852A002.png\",\"code\":200}', 0, NULL, '2023-02-01 13:48:52');
INSERT INTO `sys_oper_log` VALUES (515, '个人信息', 2, 'com.ruoyi.web.controller.system.SysProfileController.updateProfile()', 'PUT', 1, 'admin', NULL, '/system/user/profile', '127.0.0.1', '内网IP', '{\"admin\":true,\"createBy\":\"admin\",\"createTime\":\"2023-02-01 09:33:05\",\"delFlag\":\"0\",\"dept\":{\"children\":[],\"deptId\":103,\"params\":{}},\"email\":\"ry@163.com\",\"loginDate\":\"2023-02-01 12:23:56\",\"loginIp\":\"106.61.172.98\",\"nickName\":\"若依\",\"params\":{},\"phonenumber\":\"15888888888\",\"remark\":\"管理员\",\"roles\":[{\"admin\":true,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":1,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"roleSort\":1,\"status\":\"0\"},{\"admin\":false,\"dataScope\":\"5\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"userId\":1,\"userName\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:48:54');
INSERT INTO `sys_oper_log` VALUES (516, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"createBy\":\"admin\",\"deptName\":\"网络部\",\"orderNum\":0,\"params\":{},\"parentId\":100,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:49:16');
INSERT INTO `sys_oper_log` VALUES (517, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/209', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:49:19');
INSERT INTO `sys_oper_log` VALUES (518, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"createBy\":\"admin\",\"deptName\":\"云中台\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:49:33');
INSERT INTO `sys_oper_log` VALUES (519, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"createBy\":\"admin\",\"deptName\":\"政企客户部\",\"orderNum\":3,\"params\":{},\"parentId\":100,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:49:48');
INSERT INTO `sys_oper_log` VALUES (520, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-02-01 13:42:03\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"中国电信德宏分公司\",\"leader\":\"\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"deptId\":100,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"测试账号-云中台主任\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":102,\"userName\":\"test\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:51:30');
INSERT INTO `sys_oper_log` VALUES (521, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/102', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:51:59');
INSERT INTO `sys_oper_log` VALUES (522, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":211,\"nickName\":\"测试账号云中台主任\",\"params\":{},\"postIds\":[],\"roleIds\":[100],\"status\":\"0\",\"userId\":106,\"userName\":\"yzt1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:52:40');
INSERT INTO `sys_oper_log` VALUES (523, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":211,\"nickName\":\"测试账号-云中台普通员工2\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":107,\"userName\":\"yzt2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:53:25');
INSERT INTO `sys_oper_log` VALUES (524, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":211,\"nickName\":\"测试账号-云中台普通员工3\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":108,\"userName\":\"yzt3\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:53:39');
INSERT INTO `sys_oper_log` VALUES (525, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":210,\"nickName\":\"测试账号-网络部主任\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":109,\"userName\":\"wlb1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:55:04');
INSERT INTO `sys_oper_log` VALUES (526, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":210,\"nickName\":\"测试账号-云中台普通员工2\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":110,\"userName\":\"wlb2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:55:16');
INSERT INTO `sys_oper_log` VALUES (527, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":210,\"nickName\":\"测试账号-网络部普通员工3\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":111,\"userName\":\"wlb3\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:55:37');
INSERT INTO `sys_oper_log` VALUES (528, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-02-01 13:55:16\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":210,\"deptName\":\"网络部\",\"orderNum\":0,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":210,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"测试账号-网络部普通员工2\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":110,\"userName\":\"wlb2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:55:47');
INSERT INTO `sys_oper_log` VALUES (529, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-02-01 13:53:25\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":211,\"deptName\":\"云中台\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":211,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"云中台普通员工2\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":107,\"userName\":\"yzt2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:56:03');
INSERT INTO `sys_oper_log` VALUES (530, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-02-01 13:52:40\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":211,\"deptName\":\"云中台\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":211,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"云中台主任\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[100],\"roles\":[{\"admin\":false,\"dataScope\":\"4\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":100,\"roleKey\":\"dempBoss\",\"roleName\":\"主任\",\"roleSort\":3,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":106,\"userName\":\"yzt1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:56:07');
INSERT INTO `sys_oper_log` VALUES (531, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-02-01 13:53:39\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":211,\"deptName\":\"云中台\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":211,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"云中台普通员工3\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":108,\"userName\":\"yzt3\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:56:11');
INSERT INTO `sys_oper_log` VALUES (532, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-02-01 13:55:04\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":210,\"deptName\":\"网络部\",\"orderNum\":0,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":210,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"网络部主任\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":109,\"userName\":\"wlb1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:56:15');
INSERT INTO `sys_oper_log` VALUES (533, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-02-01 13:55:16\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":210,\"deptName\":\"网络部\",\"orderNum\":0,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":210,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"网络部普通员工2\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"1\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":110,\"userName\":\"wlb2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:56:21');
INSERT INTO `sys_oper_log` VALUES (534, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-02-01 13:55:37\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":210,\"deptName\":\"网络部\",\"orderNum\":0,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":210,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"网络部普通员工3\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":111,\"userName\":\"wlb3\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:56:26');
INSERT INTO `sys_oper_log` VALUES (535, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"createBy\":\"admin\",\"deptName\":\"梁河分公司\",\"orderNum\":3,\"params\":{},\"parentId\":100,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:57:07');
INSERT INTO `sys_oper_log` VALUES (536, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,213\",\"children\":[],\"createBy\":\"admin\",\"deptName\":\"网络部\",\"orderNum\":1,\"params\":{},\"parentId\":213,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:57:25');
INSERT INTO `sys_oper_log` VALUES (537, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":100,\"nickName\":\"领导1\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":112,\"userName\":\"boos1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:58:41');
INSERT INTO `sys_oper_log` VALUES (538, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"领导2\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":113,\"userName\":\"boss2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:58:55');
INSERT INTO `sys_oper_log` VALUES (539, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/112', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:58:58');
INSERT INTO `sys_oper_log` VALUES (540, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":100,\"nickName\":\"领导1\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":114,\"userName\":\"boss1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:59:21');
INSERT INTO `sys_oper_log` VALUES (541, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-02-01 13:58:55\",\"delFlag\":\"0\",\"deptId\":100,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"领导2\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":113,\"userName\":\"boss2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 13:59:51');
INSERT INTO `sys_oper_log` VALUES (542, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"梁河领导1\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":115,\"userName\":\"lhboss1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 14:00:23');
INSERT INTO `sys_oper_log` VALUES (543, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"nickName\":\"梁河普通员工\",\"params\":{},\"postIds\":[],\"roleIds\":[],\"status\":\"0\",\"userId\":116,\"userName\":\"lh2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 14:00:39');
INSERT INTO `sys_oper_log` VALUES (544, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-02-01 14:00:23\",\"delFlag\":\"0\",\"deptId\":213,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"梁河领导1\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":115,\"userName\":\"lhboss1\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 14:00:45');
INSERT INTO `sys_oper_log` VALUES (545, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-02-01 14:00:39\",\"delFlag\":\"0\",\"deptId\":214,\"email\":\"\",\"loginIp\":\"\",\"nickName\":\"梁河普通员工\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":116,\"userName\":\"lh2\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 14:00:52');
INSERT INTO `sys_oper_log` VALUES (546, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100,213\",\"children\":[],\"deptId\":214,\"deptName\":\"梁河县-网络部\",\"orderNum\":1,\"params\":{},\"parentId\":213,\"parentName\":\"梁河分公司\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 14:01:14');
INSERT INTO `sys_oper_log` VALUES (547, '值班类型', 2, 'com.ruoyi.duty.controller.SysDutyController.edit()', 'PUT', 1, 'admin', NULL, '/duty/duty', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-01-30 02:09:32\",\"dutyId\":12,\"dutySort\":1,\"dutyType\":\"日常值班\",\"params\":{},\"updateBy\":\"admin\",\"updateTime\":\"2023-02-01 14:02:02\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 14:02:02');
INSERT INTO `sys_oper_log` VALUES (548, '值班类型', 2, 'com.ruoyi.duty.controller.SysDutyController.edit()', 'PUT', 1, 'admin', NULL, '/duty/duty', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-01-30 09:10:54\",\"dutyId\":14,\"dutyType\":\"巡查\",\"params\":{},\"updateBy\":\"admin\",\"updateTime\":\"2023-02-01 14:02:24\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 14:02:24');
INSERT INTO `sys_oper_log` VALUES (549, '值班类型', 2, 'com.ruoyi.duty.controller.SysDutyController.edit()', 'PUT', 1, 'admin', NULL, '/duty/duty', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-01-30 09:10:54\",\"dutyId\":14,\"dutyType\":\"巡查\",\"params\":{},\"updateBy\":\"admin\",\"updateTime\":\"2023-02-01 14:02:27\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 14:02:27');
INSERT INTO `sys_oper_log` VALUES (550, '值班记录', 1, 'com.ruoyi.duty.controller.SysDutyLogController.add()', 'POST', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"deptId\":100,\"dutyId\":13,\"endTime\":\"2023-02-17\",\"logId\":57,\"params\":{},\"startTime\":\"2023-02-06\",\"userId\":114}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 14:02:54');
INSERT INTO `sys_oper_log` VALUES (551, '值班记录', 1, 'com.ruoyi.duty.controller.SysDutyLogController.add()', 'POST', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"deptId\":211,\"dutyId\":12,\"endTime\":\"2023-02-25\",\"logId\":58,\"params\":{},\"startTime\":\"2023-02-05\",\"userId\":108}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 14:03:29');
INSERT INTO `sys_oper_log` VALUES (552, '值班记录', 1, 'com.ruoyi.duty.controller.SysDutyLogController.add()', 'POST', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"deptId\":210,\"dutyId\":13,\"endTime\":\"2023-02-11\",\"logId\":59,\"params\":{},\"startTime\":\"2023-02-01\",\"userId\":109}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 14:03:41');
INSERT INTO `sys_oper_log` VALUES (553, '值班记录', 1, 'com.ruoyi.duty.controller.SysDutyLogController.add()', 'POST', 1, 'admin', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"deptId\":214,\"dutyId\":12,\"endTime\":\"2023-02-10\",\"logId\":60,\"params\":{},\"startTime\":\"2023-02-06\",\"userId\":116}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 14:04:01');
INSERT INTO `sys_oper_log` VALUES (554, '角色管理', 3, 'com.ruoyi.web.controller.system.SysRoleController.remove()', 'DELETE', 1, 'admin', NULL, '/system/role/101', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 14:05:07');
INSERT INTO `sys_oper_log` VALUES (555, '角色管理', 3, 'com.ruoyi.web.controller.system.SysRoleController.remove()', 'DELETE', 1, 'admin', NULL, '/system/role/103', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 14:05:09');
INSERT INTO `sys_oper_log` VALUES (556, '角色管理', 3, 'com.ruoyi.web.controller.system.SysRoleController.remove()', 'DELETE', 1, 'admin', NULL, '/system/role/104', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 14:05:13');
INSERT INTO `sys_oper_log` VALUES (557, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-01-18 15:42:13\",\"dataScope\":\"5\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,101,104,105,107,108,500,501,2060,2097,2103,1000,1004,1007,1011,1020,1025,1029,1035,1039,1041,1042,1044,2098,2102,2104,2108],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 14:07:01');
INSERT INTO `sys_oper_log` VALUES (558, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.selectAuthUserAll()', 'PUT', 1, 'admin', NULL, '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '2 [106,107,108,109,110,111,113,114,115,116]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 14:07:09');
INSERT INTO `sys_oper_log` VALUES (559, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-01-18 15:42:13\",\"dataScope\":\"3\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 14:08:24');
INSERT INTO `sys_oper_log` VALUES (560, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-01-19 10:08:17\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":100,\"roleKey\":\"dempBoss\",\"roleName\":\"主任\",\"roleSort\":3,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 14:08:31');
INSERT INTO `sys_oper_log` VALUES (561, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.selectAuthUserAll()', 'PUT', 1, 'admin', NULL, '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '100 [109,113,114,115]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 14:08:53');
INSERT INTO `sys_oper_log` VALUES (562, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-01-19 10:08:17\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,104,105,107,108,500,501,2,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,103,1016,1017,1018,1019,1020,1024,1025,1029,1035,1039,1041,1042,1044,1045,109,1046,1047,1048,2060,2097,2098,2099,2100,2101,2102,2103,2104,2105,2106,2107,2108],\"params\":{},\"roleId\":100,\"roleKey\":\"dempBoss\",\"roleName\":\"主任\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 14:10:12');
INSERT INTO `sys_oper_log` VALUES (563, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,101,108,500,501,2,100,1000,1001,1002,1003,1004,1005,1006,1007,1011,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,107,1035,1036,1037,1038,1039,1041,1042,1044,1045,109,1046,1047,1048,2060,2097,2098,2099,2100,2101,2102,2103,2104,2105,2106,2107,2108],\"params\":{},\"roleId\":105,\"roleKey\":\"boss\",\"roleName\":\"公司领导\",\"roleSort\":1,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 14:12:09');
INSERT INTO `sys_oper_log` VALUES (564, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-02-01 14:12:09\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,101,108,500,501,2,100,1000,1001,1002,1003,1004,1005,1006,1007,1011,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,107,1035,1036,1037,1038,1039,1041,1042,1044,1045,109,1046,1047,1048,2060,2097,2098,2099,2100,2101,2102,2103,2104,2105,2106,2107,2108],\"params\":{},\"roleId\":105,\"roleKey\":\"boss\",\"roleName\":\"公司领导\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 14:12:24');
INSERT INTO `sys_oper_log` VALUES (565, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-01-18 15:42:13\",\"dataScope\":\"3\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,101,104,105,107,108,500,501,2060,2097,2103,1000,1004,1007,1011,1020,1025,1029,1035,1039,1041,1042,1044,2098,2102,2104,2108],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":4,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 14:12:30');
INSERT INTO `sys_oper_log` VALUES (566, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'boss1', NULL, '/system/user/114', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"当前用户不能删除\",\"code\":500}', 0, NULL, '2023-02-01 14:13:52');
INSERT INTO `sys_oper_log` VALUES (567, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-02-01 14:12:09\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,101,108,500,501,2,100,1000,1001,1002,1003,1004,1005,1006,1007,1011,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,107,1035,1036,1037,1038,1039,1041,1042,1044,1045,109,1046,1047,1048,2060,2097,2098,2099,2100,2101,2102,2103,2104,2105,2106,2107,2108],\"params\":{},\"roleId\":105,\"roleKey\":\"boss\",\"roleName\":\"公司领导\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 14:14:26');
INSERT INTO `sys_oper_log` VALUES (568, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-01-19 10:08:17\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,104,107,108,500,501,2,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,103,1016,1017,1018,1019,1020,1024,1035,1039,1041,1042,1044,1045,109,1046,1047,1048,2060,2097,2098,2099,2100,2101,2102,2103,2104,2105,2106,2107,2108],\"params\":{},\"roleId\":100,\"roleKey\":\"dempBoss\",\"roleName\":\"主任\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 14:15:36');
INSERT INTO `sys_oper_log` VALUES (569, '角色管理', 4, 'com.ruoyi.web.controller.system.SysRoleController.selectAuthUserAll()', 'PUT', 1, 'admin', NULL, '/system/role/authUser/selectAll', '127.0.0.1', '内网IP', '105 [113,114]', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 14:16:17');
INSERT INTO `sys_oper_log` VALUES (570, '角色管理', 3, 'com.ruoyi.web.controller.system.SysRoleController.remove()', 'DELETE', 1, 'boss1', NULL, '/system/role/2', '127.0.0.1', '内网IP', '{}', NULL, 1, '普通角色已分配,不能删除', '2023-02-01 14:17:24');
INSERT INTO `sys_oper_log` VALUES (571, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-01-19 10:08:17\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,104,107,108,500,501,2,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,103,1016,1017,1018,1019,1020,1024,1035,1039,1041,1042,1044,1045,109,1046,1047,1048,2060,2097,2098,2099,2100,2101,2102,2103,2104,2105,2106,2107,2108],\"params\":{},\"roleId\":100,\"roleKey\":\"dempBoss\",\"roleName\":\"主任\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 14:17:55');
INSERT INTO `sys_oper_log` VALUES (572, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-01-18 15:42:13\",\"dataScope\":\"3\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,101,104,107,108,500,501,2060,2097,2103,1000,1004,1007,1011,1020,1035,1039,1041,1042,1044,2098,2102,2104,2108],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":4,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 14:18:03');
INSERT INTO `sys_oper_log` VALUES (573, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-02-01 14:12:09\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,101,108,500,501,2,100,1000,1001,1002,1003,1004,1005,1006,1007,1011,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,107,1035,1036,1037,1038,1039,1041,1042,1044,1045,109,1046,1047,1048,2060,2097,2098,2099,2100,2101,2102,2103,2104,2105,2106,2107,2108],\"params\":{},\"roleId\":105,\"roleKey\":\"boss\",\"roleName\":\"公司领导\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 14:18:09');
INSERT INTO `sys_oper_log` VALUES (574, '用户头像', 2, 'com.ruoyi.web.controller.system.SysProfileController.avatar()', 'POST', 1, 'boss1', NULL, '/system/user/profile/avatar', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2023/02/01/blob_20230201141836A003.png\",\"code\":200}', 0, NULL, '2023-02-01 14:18:36');
INSERT INTO `sys_oper_log` VALUES (575, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"duty/duty_log/index\",\"createTime\":\"2023-01-30 00:05:45\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2097,\"menuName\":\"值班记录\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2060,\"path\":\"duty_log\",\"perms\":\"duty:duty_log:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 14:19:53');
INSERT INTO `sys_oper_log` VALUES (576, '值班记录', 1, 'com.ruoyi.duty.controller.SysDutyLogController.add()', 'POST', 1, 'boss1', NULL, '/duty/duty_log', '127.0.0.1', '内网IP', '{\"createBy\":\"boss1\",\"deptId\":210,\"dutyId\":12,\"endTime\":\"2023-03-10\",\"logId\":61,\"params\":{},\"startTime\":\"2022-12-01\",\"userId\":110}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2023-02-01 14:20:36');
INSERT INTO `sys_oper_log` VALUES (577, '值班记录', 5, 'com.ruoyi.duty.controller.SysDutyLogController.export()', 'POST', 1, 'boss1', NULL, '/duty/duty_log/export', '127.0.0.1', '内网IP', '{\"params\":{\"dataScope\":\"\"}}', NULL, 0, NULL, '2023-02-01 14:24:25');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '岗位信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2023-01-18 15:42:12', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2023-01-18 15:42:12', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2023-01-18 15:42:12', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2023-01-18 15:42:12', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2023-01-18 15:42:13', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 4, '3', 1, 1, '0', '0', 'admin', '2023-01-18 15:42:13', 'admin', '2023-02-01 14:18:03', '普通角色');
INSERT INTO `sys_role` VALUES (100, '主任', 'dempBoss', 3, '4', 1, 1, '0', '0', 'admin', '2023-01-19 10:08:17', 'admin', '2023-02-01 14:17:55', NULL);
INSERT INTO `sys_role` VALUES (101, '测试', 'test', 4, '5', 1, 1, '0', '2', 'admin', '2023-01-28 09:08:55', 'admin', '2023-01-30 03:18:06', NULL);
INSERT INTO `sys_role` VALUES (102, '测试啊', 'ssss', 0, '1', 1, 1, '0', '2', 'admin', '2023-01-30 00:29:16', '', NULL, NULL);
INSERT INTO `sys_role` VALUES (103, 'rewrqe', '123213', 10, '1', 1, 1, '0', '2', 'admin', '2023-01-30 00:49:17', '', NULL, NULL);
INSERT INTO `sys_role` VALUES (104, '新增角色', 'xins', 0, '1', 1, 1, '0', '2', 'admin', '2023-01-30 01:02:33', '', NULL, NULL);
INSERT INTO `sys_role` VALUES (105, '公司领导', 'boss', 2, '1', 1, 1, '0', '0', 'admin', '2023-02-01 14:12:09', 'admin', '2023-02-01 14:18:09', NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和部门关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 2060);
INSERT INTO `sys_role_menu` VALUES (2, 2097);
INSERT INTO `sys_role_menu` VALUES (2, 2098);
INSERT INTO `sys_role_menu` VALUES (2, 2102);
INSERT INTO `sys_role_menu` VALUES (2, 2103);
INSERT INTO `sys_role_menu` VALUES (2, 2104);
INSERT INTO `sys_role_menu` VALUES (2, 2108);
INSERT INTO `sys_role_menu` VALUES (100, 1);
INSERT INTO `sys_role_menu` VALUES (100, 2);
INSERT INTO `sys_role_menu` VALUES (100, 100);
INSERT INTO `sys_role_menu` VALUES (100, 101);
INSERT INTO `sys_role_menu` VALUES (100, 103);
INSERT INTO `sys_role_menu` VALUES (100, 104);
INSERT INTO `sys_role_menu` VALUES (100, 107);
INSERT INTO `sys_role_menu` VALUES (100, 108);
INSERT INTO `sys_role_menu` VALUES (100, 109);
INSERT INTO `sys_role_menu` VALUES (100, 500);
INSERT INTO `sys_role_menu` VALUES (100, 501);
INSERT INTO `sys_role_menu` VALUES (100, 1000);
INSERT INTO `sys_role_menu` VALUES (100, 1001);
INSERT INTO `sys_role_menu` VALUES (100, 1002);
INSERT INTO `sys_role_menu` VALUES (100, 1003);
INSERT INTO `sys_role_menu` VALUES (100, 1004);
INSERT INTO `sys_role_menu` VALUES (100, 1005);
INSERT INTO `sys_role_menu` VALUES (100, 1006);
INSERT INTO `sys_role_menu` VALUES (100, 1007);
INSERT INTO `sys_role_menu` VALUES (100, 1008);
INSERT INTO `sys_role_menu` VALUES (100, 1009);
INSERT INTO `sys_role_menu` VALUES (100, 1010);
INSERT INTO `sys_role_menu` VALUES (100, 1011);
INSERT INTO `sys_role_menu` VALUES (100, 1016);
INSERT INTO `sys_role_menu` VALUES (100, 1017);
INSERT INTO `sys_role_menu` VALUES (100, 1018);
INSERT INTO `sys_role_menu` VALUES (100, 1019);
INSERT INTO `sys_role_menu` VALUES (100, 1020);
INSERT INTO `sys_role_menu` VALUES (100, 1024);
INSERT INTO `sys_role_menu` VALUES (100, 1035);
INSERT INTO `sys_role_menu` VALUES (100, 1039);
INSERT INTO `sys_role_menu` VALUES (100, 1041);
INSERT INTO `sys_role_menu` VALUES (100, 1042);
INSERT INTO `sys_role_menu` VALUES (100, 1044);
INSERT INTO `sys_role_menu` VALUES (100, 1045);
INSERT INTO `sys_role_menu` VALUES (100, 1046);
INSERT INTO `sys_role_menu` VALUES (100, 1047);
INSERT INTO `sys_role_menu` VALUES (100, 1048);
INSERT INTO `sys_role_menu` VALUES (100, 2060);
INSERT INTO `sys_role_menu` VALUES (100, 2097);
INSERT INTO `sys_role_menu` VALUES (100, 2098);
INSERT INTO `sys_role_menu` VALUES (100, 2099);
INSERT INTO `sys_role_menu` VALUES (100, 2100);
INSERT INTO `sys_role_menu` VALUES (100, 2101);
INSERT INTO `sys_role_menu` VALUES (100, 2102);
INSERT INTO `sys_role_menu` VALUES (100, 2103);
INSERT INTO `sys_role_menu` VALUES (100, 2104);
INSERT INTO `sys_role_menu` VALUES (100, 2105);
INSERT INTO `sys_role_menu` VALUES (100, 2106);
INSERT INTO `sys_role_menu` VALUES (100, 2107);
INSERT INTO `sys_role_menu` VALUES (100, 2108);
INSERT INTO `sys_role_menu` VALUES (105, 1);
INSERT INTO `sys_role_menu` VALUES (105, 2);
INSERT INTO `sys_role_menu` VALUES (105, 100);
INSERT INTO `sys_role_menu` VALUES (105, 101);
INSERT INTO `sys_role_menu` VALUES (105, 103);
INSERT INTO `sys_role_menu` VALUES (105, 104);
INSERT INTO `sys_role_menu` VALUES (105, 107);
INSERT INTO `sys_role_menu` VALUES (105, 108);
INSERT INTO `sys_role_menu` VALUES (105, 109);
INSERT INTO `sys_role_menu` VALUES (105, 500);
INSERT INTO `sys_role_menu` VALUES (105, 501);
INSERT INTO `sys_role_menu` VALUES (105, 1000);
INSERT INTO `sys_role_menu` VALUES (105, 1001);
INSERT INTO `sys_role_menu` VALUES (105, 1002);
INSERT INTO `sys_role_menu` VALUES (105, 1003);
INSERT INTO `sys_role_menu` VALUES (105, 1004);
INSERT INTO `sys_role_menu` VALUES (105, 1005);
INSERT INTO `sys_role_menu` VALUES (105, 1006);
INSERT INTO `sys_role_menu` VALUES (105, 1007);
INSERT INTO `sys_role_menu` VALUES (105, 1011);
INSERT INTO `sys_role_menu` VALUES (105, 1016);
INSERT INTO `sys_role_menu` VALUES (105, 1017);
INSERT INTO `sys_role_menu` VALUES (105, 1018);
INSERT INTO `sys_role_menu` VALUES (105, 1019);
INSERT INTO `sys_role_menu` VALUES (105, 1020);
INSERT INTO `sys_role_menu` VALUES (105, 1021);
INSERT INTO `sys_role_menu` VALUES (105, 1022);
INSERT INTO `sys_role_menu` VALUES (105, 1023);
INSERT INTO `sys_role_menu` VALUES (105, 1024);
INSERT INTO `sys_role_menu` VALUES (105, 1035);
INSERT INTO `sys_role_menu` VALUES (105, 1036);
INSERT INTO `sys_role_menu` VALUES (105, 1037);
INSERT INTO `sys_role_menu` VALUES (105, 1038);
INSERT INTO `sys_role_menu` VALUES (105, 1039);
INSERT INTO `sys_role_menu` VALUES (105, 1041);
INSERT INTO `sys_role_menu` VALUES (105, 1042);
INSERT INTO `sys_role_menu` VALUES (105, 1044);
INSERT INTO `sys_role_menu` VALUES (105, 1045);
INSERT INTO `sys_role_menu` VALUES (105, 1046);
INSERT INTO `sys_role_menu` VALUES (105, 1047);
INSERT INTO `sys_role_menu` VALUES (105, 1048);
INSERT INTO `sys_role_menu` VALUES (105, 2060);
INSERT INTO `sys_role_menu` VALUES (105, 2097);
INSERT INTO `sys_role_menu` VALUES (105, 2098);
INSERT INTO `sys_role_menu` VALUES (105, 2099);
INSERT INTO `sys_role_menu` VALUES (105, 2100);
INSERT INTO `sys_role_menu` VALUES (105, 2101);
INSERT INTO `sys_role_menu` VALUES (105, 2102);
INSERT INTO `sys_role_menu` VALUES (105, 2103);
INSERT INTO `sys_role_menu` VALUES (105, 2104);
INSERT INTO `sys_role_menu` VALUES (105, 2105);
INSERT INTO `sys_role_menu` VALUES (105, 2106);
INSERT INTO `sys_role_menu` VALUES (105, 2107);
INSERT INTO `sys_role_menu` VALUES (105, 2108);

-- ----------------------------
-- Table structure for sys_scheduling
-- ----------------------------
DROP TABLE IF EXISTS `sys_scheduling`;
CREATE TABLE `sys_scheduling`  (
  `id` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_scheduling
-- ----------------------------

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 117 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '/profile/avatar/2023/02/01/blob_20230201134852A002.png', '$2a$10$YEnCji3QWGG8OmE2mEb/6OgPcbGpFdsBewlXRqaFCwwe5w.fjdn0y', '0', '0', '127.0.0.1', '2023-02-01 14:27:37', 'admin', '2023-02-01 09:33:05', '', '2023-02-01 14:27:36', '管理员');
INSERT INTO `sys_user` VALUES (2, 100, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$ITBERKQW7h2/gFy8rUCLZu3BhZmUAU6cEIaVVH3TRrbQhXjagfLDK', '0', '2', '127.0.0.1', '2023-02-01 09:33:06', 'admin', '2023-02-01 09:33:06', 'admin', '2023-02-01 12:01:26', '测试员');
INSERT INTO `sys_user` VALUES (100, NULL, 'test', 'test', '00', '', '', '0', '', '$2a$10$yJHEY/dlQQV./9fyFP5JMOaMaK5DjcNkjwK8TxTJODm3FHCUeYNJW', '0', '2', '127.0.0.1', '2023-02-01 11:09:33', 'admin', '2023-02-01 11:01:58', '', '2023-02-01 11:09:33', NULL);
INSERT INTO `sys_user` VALUES (101, NULL, 'tes', 'tes', '00', '', '', '0', '', '$2a$10$qUklG6eoFOiWz0bZxjgPF.uurfiGC454UbtIZPKK.zflMX3WCBaEu', '0', '2', '', NULL, 'admin', '2023-02-01 13:41:50', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (102, 100, 'test', '测试账号-云中台主任', '00', '', '', '0', '', '$2a$10$GKh86Ib61f6l.VteAI8WleAL03k7ox./HuV2.9F7HKPmsFa73.r.G', '0', '2', '', NULL, 'admin', '2023-02-01 13:42:03', 'admin', '2023-02-01 13:51:30', NULL);
INSERT INTO `sys_user` VALUES (103, NULL, '1111', '1111', '00', '', '', '0', '', '$2a$10$dTaSGfsiIBIy.bCfPfcPyu3.wyPFXnUhrVJD0bEB1ZSoYdd/hf6L6', '0', '2', '', NULL, 'admin', '2023-02-01 13:43:04', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (104, 100, '2222', '2222', '00', '', '', '0', '', '$2a$10$TlMHH7WXoI3wNzUfksml6OzR4XAYGSGGMZrwBJXAS7Od2jH6L6xgq', '0', '2', '', NULL, 'admin', '2023-02-01 13:43:25', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (105, 100, '1111', '1111', '00', '', '', '0', '', '$2a$10$t2H3dGTA7HL5mc0p5vdiF.IcDXaadHXMOf3Oz5xTes3cZnHUCgezm', '0', '2', '', NULL, 'admin', '2023-02-01 13:43:34', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (106, 211, 'yzt1', '云中台主任', '00', '', '', '0', '', '$2a$10$jzGZ2UV8sKwy3v2EkNU53u1xNRyqo8pC8tG9UVn42ngpNJPwJMeOS', '0', '0', '', NULL, 'admin', '2023-02-01 13:52:40', 'admin', '2023-02-01 13:56:07', NULL);
INSERT INTO `sys_user` VALUES (107, 211, 'yzt2', '云中台普通员工2', '00', '', '', '0', '', '$2a$10$RGJ3i.NpJYiOa.7ksjp6xuA94kpBesvVOU0nXn.wjO95E9fQXG2ZG', '0', '0', '', NULL, 'admin', '2023-02-01 13:53:25', 'admin', '2023-02-01 13:56:03', NULL);
INSERT INTO `sys_user` VALUES (108, 211, 'yzt3', '云中台普通员工3', '00', '', '', '0', '', '$2a$10$3AgfulkgoI6w4VPAwh2X2uZSAy/IG2zzPn23r2tP1Krx0VKax1kcK', '0', '0', '', NULL, 'admin', '2023-02-01 13:53:39', 'admin', '2023-02-01 13:56:11', NULL);
INSERT INTO `sys_user` VALUES (109, 210, 'wlb1', '网络部主任', '00', '', '', '0', '', '$2a$10$JaaDjWnt5Ke5SgPzy2U4sOAP/..s1uErPj50B2lApkZZIzDLVTk46', '0', '0', '', NULL, 'admin', '2023-02-01 13:55:04', 'admin', '2023-02-01 13:56:15', NULL);
INSERT INTO `sys_user` VALUES (110, 210, 'wlb2', '网络部普通员工2', '00', '', '', '1', '', '$2a$10$X.1XDWdtlgPsK.4ucDWSTu0o6CWCyVSBgPl5nv.srEj7KMqkNBRhG', '0', '0', '', NULL, 'admin', '2023-02-01 13:55:16', 'admin', '2023-02-01 13:56:21', NULL);
INSERT INTO `sys_user` VALUES (111, 210, 'wlb3', '网络部普通员工3', '00', '', '', '0', '', '$2a$10$hQP.0V29Wah8xcD8dP3A2umi/MaYR8iVep8ofg2f8I98BW8H/hi6O', '0', '0', '', NULL, 'admin', '2023-02-01 13:55:37', 'admin', '2023-02-01 13:56:26', NULL);
INSERT INTO `sys_user` VALUES (112, 100, 'boos1', '领导1', '00', '', '', '0', '', '$2a$10$Nsjonb2YcGKVF.F9MRL2IuPTvKieLRNG5ZVSvtz51frQsCe.MQBWi', '0', '2', '', NULL, 'admin', '2023-02-01 13:58:41', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (113, 100, 'boss2', '领导2', '00', '', '', '0', '', '$2a$10$MfvbRzAACk7mu1oOXL6oFe9gakIHfKAq/SzK9pdtulp3mVPcb5Y8u', '0', '0', '', NULL, 'admin', '2023-02-01 13:58:55', 'admin', '2023-02-01 13:59:50', NULL);
INSERT INTO `sys_user` VALUES (114, 100, 'boss1', '领导1', '00', '', '', '0', '/profile/avatar/2023/02/01/blob_20230201141836A003.png', '$2a$10$0DbRnZSmFwgWbdcYG91lueN3Y4giRKYy5RcrP/rjr7SRIMyI3MZ5K', '0', '0', '127.0.0.1', '2023-02-01 14:18:17', 'admin', '2023-02-01 13:59:21', '', '2023-02-01 14:18:16', NULL);
INSERT INTO `sys_user` VALUES (115, 213, 'lhboss1', '梁河领导1', '00', '', '', '0', '', '$2a$10$5iNpOL1BFqaj7Lxz8g9nZeiTCAhwf6STR//uEtaR3WYnl8yGF3qj.', '0', '0', '', NULL, 'admin', '2023-02-01 14:00:23', 'admin', '2023-02-01 14:00:45', NULL);
INSERT INTO `sys_user` VALUES (116, 214, 'lh2', '梁河普通员工', '00', '', '', '0', '', '$2a$10$8Jqsq2IjxSE.bcECICD6YOBQRrKOE5AHaN5g2o1p6V/yMgZue.hpG', '0', '0', '127.0.0.1', '2023-02-01 14:04:51', 'admin', '2023-02-01 14:00:39', 'admin', '2023-02-01 14:04:51', NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户和角色关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (1, 2);
INSERT INTO `sys_user_role` VALUES (106, 2);
INSERT INTO `sys_user_role` VALUES (106, 100);
INSERT INTO `sys_user_role` VALUES (107, 2);
INSERT INTO `sys_user_role` VALUES (108, 2);
INSERT INTO `sys_user_role` VALUES (109, 2);
INSERT INTO `sys_user_role` VALUES (109, 100);
INSERT INTO `sys_user_role` VALUES (110, 2);
INSERT INTO `sys_user_role` VALUES (111, 2);
INSERT INTO `sys_user_role` VALUES (113, 2);
INSERT INTO `sys_user_role` VALUES (113, 100);
INSERT INTO `sys_user_role` VALUES (113, 105);
INSERT INTO `sys_user_role` VALUES (114, 2);
INSERT INTO `sys_user_role` VALUES (114, 100);
INSERT INTO `sys_user_role` VALUES (114, 105);
INSERT INTO `sys_user_role` VALUES (115, 2);
INSERT INTO `sys_user_role` VALUES (115, 100);
INSERT INTO `sys_user_role` VALUES (116, 2);

SET FOREIGN_KEY_CHECKS = 1;
