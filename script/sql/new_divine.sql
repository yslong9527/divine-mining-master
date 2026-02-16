/*
 Navicat Premium Dump SQL

 Source Server         : 47.239.3.188
 Source Server Type    : MySQL
 Source Server Version : 80043 (8.0.43)
 Source Host           : 47.239.3.188:3306
 Source Schema         : divine_wms

 Target Server Type    : MySQL
 Target Server Version : 80043 (8.0.43)
 File Encoding         : 65001

 Date: 16/02/2026 14:22:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint NOT NULL COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (2023368302190370818, 'sys_dept', '部门表', NULL, NULL, 'Dept', 'crud', 'com.divine.wms', 'wms', 'dept', '部门', 'zcc', '0', '/', NULL, 'admin', '2026-02-15 00:06:49', NULL, '2026-02-15 00:06:49', NULL);
INSERT INTO `gen_table` VALUES (2023368302320394242, 'sys_menu', '菜单权限表', NULL, NULL, 'Menu', 'crud', 'com.divine.wms', 'wms', 'menu', '菜单权限', 'zcc', '0', '/', NULL, 'admin', '2026-02-15 00:07:29', NULL, '2026-02-15 00:07:29', NULL);
INSERT INTO `gen_table` VALUES (2023368302458806273, 'wms_check_order', '库存盘点单据', NULL, NULL, 'CheckOrder', 'crud', 'com.divine.wms', 'wms', 'checkOrder', '库存盘点单据', 'zcc', '0', '/', NULL, 'admin', '2026-02-14 03:11:09', NULL, '2026-02-14 03:11:09', NULL);
INSERT INTO `gen_table` VALUES (2023368302580441090, 'wms_inventory', '库存表', NULL, NULL, 'Inventory', 'crud', 'com.divine.wms', 'wms', 'inventory', '库存', 'zcc', '0', '/', NULL, 'admin', '2026-02-14 03:16:51', NULL, '2026-02-14 03:16:51', NULL);
INSERT INTO `gen_table` VALUES (2023368302739824642, 'wms_movement_order', '移库单', NULL, NULL, 'MovementOrder', 'crud', 'com.divine.wms', 'wms', 'movementOrder', '移库单', 'zcc', '0', '/', NULL, 'admin', '2026-02-14 03:10:18', NULL, '2026-02-14 03:10:18', NULL);
INSERT INTO `gen_table` VALUES (2023368302861459458, 'wms_movement_order_detail', '库存移动详情', NULL, NULL, 'MovementOrderDetail', 'crud', 'com.divine.wms', 'wms', 'movementOrderDetail', '库存移动详情', 'zcc', '0', '/', NULL, 'admin', '2026-02-14 03:09:59', NULL, '2026-02-14 03:09:59', NULL);
INSERT INTO `gen_table` VALUES (2023368302974705666, 'wms_receipt_order', '入库单', NULL, NULL, 'ReceiptOrder', 'crud', 'com.divine.wms', 'wms', 'receiptOrder', '入库单', 'zcc', '0', '/', NULL, 'admin', '2026-02-14 03:09:33', NULL, '2026-02-14 03:09:33', NULL);
INSERT INTO `gen_table` VALUES (2023368303083757570, 'wms_receipt_order_detail', '入库单详情', NULL, NULL, 'ReceiptOrderDetail', 'crud', 'com.divine.wms', 'wms', 'receiptOrderDetail', '入库单详情', 'zcc', '0', '/', NULL, 'admin', '2026-02-14 03:09:12', NULL, '2026-02-14 03:09:12', NULL);
INSERT INTO `gen_table` VALUES (2023368303180226561, 'wms_shipment_order', '出库单', NULL, NULL, 'ShipmentOrder', 'crud', 'com.divine.wms', 'wms', 'shipmentOrder', '出库单', 'zcc', '0', '/', NULL, 'admin', '2026-02-14 03:08:39', NULL, '2026-02-14 03:08:39', NULL);
INSERT INTO `gen_table` VALUES (2023368303394136065, 'wms_warehouse', '仓库', NULL, NULL, 'Warehouse', 'crud', 'com.divine.wms', 'wms', 'warehouse', '仓库', 'zcc', '0', '/', NULL, 'admin', '2026-02-15 00:09:32', NULL, '2026-02-15 00:09:32', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint NOT NULL COMMENT '编号',
  `table_id` bigint NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (2023368302240702465, 2023368302190370818, 'dept_id', '部门id', 'bigint', 'Long', 'deptId', '1', '0', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302244896769, 2023368302190370818, 'parent_id', '父部门id', 'bigint', 'Long', 'parentId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302257479682, 2023368302190370818, 'ancestors', '祖级列表', 'varchar(500)', 'String', 'ancestors', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'textarea', '', 3, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302257479683, 2023368302190370818, 'dept_name', '部门名称', 'varchar(30)', 'String', 'deptName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302261673985, 2023368302190370818, 'sort', '显示顺序', 'int', 'Long', 'sort', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302261673986, 2023368302190370818, 'leader', '负责人', 'varchar(20)', 'String', 'leader', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302265868290, 2023368302190370818, 'phone', '联系电话', 'varchar(11)', 'String', 'phone', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302270062594, 2023368302190370818, 'email', '邮箱', 'varchar(50)', 'String', 'email', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302270062595, 2023368302190370818, 'status', '部门状态（0正常 1停用）', 'char(1)', 'String', 'status', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', '', 9, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302274256898, 2023368302190370818, 'del_flag', '删除标志（0代表存在 2代表删除）', 'char(1)', 'String', 'delFlag', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302278451202, 2023368302190370818, 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302278451203, 2023368302190370818, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302282645506, 2023368302190370818, 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302282645507, 2023368302190370818, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 14, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302349754370, 2023368302320394242, 'menu_id', '菜单ID', 'bigint', 'Long', 'menuId', '1', '0', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302349754371, 2023368302320394242, 'menu_name', '菜单名称', 'varchar(50)', 'String', 'menuName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302349754372, 2023368302320394242, 'parent_id', '父菜单ID', 'bigint', 'Long', 'parentId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302349754373, 2023368302320394242, 'sort', '显示顺序', 'int', 'Long', 'sort', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302349754374, 2023368302320394242, 'path', '路由地址', 'varchar(200)', 'String', 'path', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302349754375, 2023368302320394242, 'component', '组件路径', 'varchar(255)', 'String', 'component', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302379114497, 2023368302320394242, 'query_param', '路由参数', 'varchar(255)', 'String', 'queryParam', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302383308801, 2023368302320394242, 'is_frame', '是否为外链（0是 1否）', 'int', 'Long', 'isFrame', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302383308802, 2023368302320394242, 'is_cache', '是否缓存（0缓存 1不缓存）', 'int', 'Long', 'isCache', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302383308803, 2023368302320394242, 'menu_type', '菜单类型（M目录 C菜单 F按钮）', 'char(1)', 'String', 'menuType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', 10, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302383308804, 2023368302320394242, 'visible', '显示状态（0显示 1隐藏）', 'char(1)', 'String', 'visible', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302383308805, 2023368302320394242, 'status', '菜单状态（0正常 1停用）', 'char(1)', 'String', 'status', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', '', 12, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302383308806, 2023368302320394242, 'perms', '权限标识', 'varchar(100)', 'String', 'perms', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302383308807, 2023368302320394242, 'icon', '菜单图标', 'varchar(100)', 'String', 'icon', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302383308808, 2023368302320394242, 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 15, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302383308809, 2023368302320394242, 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 16, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302383308810, 2023368302320394242, 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 17, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302383308811, 2023368302320394242, 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 18, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302383308812, 2023368302320394242, 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'textarea', '', 19, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302488166402, 2023368302458806273, 'id', '', 'bigint', 'Long', 'id', '1', '1', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302488166403, 2023368302458806273, 'check_no', '盘点单号', 'varchar(22)', 'String', 'checkNo', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302488166404, 2023368302458806273, 'check_status', '库存盘点单状态 -1：作废 0：未盘库 1：已盘库', 'tinyint', 'Long', 'checkStatus', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', '', 3, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302488166405, 2023368302458806273, 'total_quantity', '盈亏数', 'bigint', 'Long', 'totalQuantity', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302488166406, 2023368302458806273, 'total_price', '总金额', 'decimal(10,2)', 'BigDecimal', 'totalPrice', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302488166407, 2023368302458806273, 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 6, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302488166408, 2023368302458806273, 'warehouse_id', '所属仓库', 'bigint', 'Long', 'warehouseId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302488166409, 2023368302458806273, 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302488166410, 2023368302458806273, 'create_time', '创建时间', 'datetime(3)', 'Date', 'createTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302488166411, 2023368302458806273, 'update_by', '修改人', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302488166412, 2023368302458806273, 'update_time', '修改时间', 'datetime(3)', 'Date', 'updateTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302584635394, 2023368302580441090, 'id', '', 'bigint', 'Long', 'id', '1', '1', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302584635395, 2023368302580441090, 'sku_id', '规格ID', 'bigint', 'Long', 'skuId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302584635396, 2023368302580441090, 'warehouse_id', '所属仓库', 'bigint', 'Long', 'warehouseId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302584635397, 2023368302580441090, 'storage_shelf', '货架', 'varchar(255)', 'String', 'storageShelf', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302584635398, 2023368302580441090, 'quantity', '库存', 'bigint', 'Long', 'quantity', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302584635399, 2023368302580441090, 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 6, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302584635400, 2023368302580441090, 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302584635401, 2023368302580441090, 'create_time', '创建时间', 'datetime(3)', 'Date', 'createTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302584635402, 2023368302580441090, 'update_by', '修改人', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302584635403, 2023368302580441090, 'update_time', '修改时间', 'datetime(3)', 'Date', 'updateTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302769184770, 2023368302739824642, 'id', '', 'bigint', 'Long', 'id', '1', '1', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302769184771, 2023368302739824642, 'move_no', '移库编号', 'varchar(30)', 'String', 'moveNo', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302769184772, 2023368302739824642, 'move_status', '状态', 'tinyint', 'Long', 'moveStatus', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', '', 3, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302769184773, 2023368302739824642, 'total_quantity', '总数量', 'bigint', 'Long', 'totalQuantity', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302769184774, 2023368302739824642, 'total_price', '总金额', 'decimal(10,2)', 'BigDecimal', 'totalPrice', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302769184775, 2023368302739824642, 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 6, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302769184776, 2023368302739824642, 'source_warehouse_id', '源仓库', 'bigint', 'Long', 'sourceWarehouseId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302769184777, 2023368302739824642, 'target_warehouse_id', '目标仓库', 'bigint', 'Long', 'targetWarehouseId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302769184778, 2023368302739824642, 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302769184779, 2023368302739824642, 'create_time', '创建时间', 'datetime(3)', 'Date', 'createTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302769184780, 2023368302739824642, 'update_by', '修改人', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302769184781, 2023368302739824642, 'update_time', '修改时间', 'datetime(3)', 'Date', 'updateTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302890819586, 2023368302861459458, 'id', '', 'bigint', 'Long', 'id', '1', '1', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302890819587, 2023368302861459458, 'order_id', '移库单Id', 'bigint', 'Long', 'orderId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302890819588, 2023368302861459458, 'sku_id', '规格id', 'bigint', 'Long', 'skuId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302890819589, 2023368302861459458, 'quantity', '数量', 'bigint', 'Long', 'quantity', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302890819590, 2023368302861459458, 'unit_price', '单价', 'decimal(10,2)', 'BigDecimal', 'unitPrice', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302890819591, 2023368302861459458, 'storage_shelf', '货架', 'varchar(255)', 'String', 'storageShelf', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302890819592, 2023368302861459458, 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 7, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302890819593, 2023368302861459458, 'source_warehouse_id', '源仓库', 'bigint', 'Long', 'sourceWarehouseId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302890819594, 2023368302861459458, 'target_warehouse_id', '目标仓库', 'bigint', 'Long', 'targetWarehouseId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302890819595, 2023368302861459458, 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302890819596, 2023368302861459458, 'create_time', '创建时间', 'datetime(3)', 'Date', 'createTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302890819597, 2023368302861459458, 'update_by', '修改人', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368302890819598, 2023368302861459458, 'update_time', '修改时间', 'datetime(3)', 'Date', 'updateTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368303004065794, 2023368302974705666, 'id', '', 'bigint', 'Long', 'id', '1', '1', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368303004065795, 2023368302974705666, 'receipt_no', '入库单号', 'varchar(32)', 'String', 'receiptNo', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368303004065796, 2023368302974705666, 'receipt_status', '入库状态', 'tinyint', 'Long', 'receiptStatus', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', '', 3, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368303004065797, 2023368302974705666, 'total_quantity', '商品总数', 'bigint', 'Long', 'totalQuantity', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368303004065798, 2023368302974705666, 'total_price', '订单金额', 'decimal(10,2)', 'BigDecimal', 'totalPrice', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368303004065799, 2023368302974705666, 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 6, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368303004065800, 2023368302974705666, 'opt_type', '入库类型', 'int', 'Long', 'optType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', 7, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368303004065801, 2023368302974705666, 'merchant_id', '供应商', 'bigint', 'Long', 'merchantId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368303004065802, 2023368302974705666, 'biz_order_no', '业务订单号', 'varchar(32)', 'String', 'bizOrderNo', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368303004065803, 2023368302974705666, 'warehouse_id', '仓库id', 'bigint', 'Long', 'warehouseId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368303004065804, 2023368302974705666, 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368303004065805, 2023368302974705666, 'create_time', '创建时间', 'datetime(3)', 'Date', 'createTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368303004065806, 2023368302974705666, 'update_by', '修改人', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368303004065807, 2023368302974705666, 'update_time', '修改时间', 'datetime(3)', 'Date', 'updateTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 14, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368303104729090, 2023368303083757570, 'id', '', 'bigint', 'Long', 'id', '1', '1', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368303104729091, 2023368303083757570, 'receipt_id', '入库单id', 'varchar(20)', 'String', 'receiptId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368303104729092, 2023368303083757570, 'sku_id', '规格id', 'bigint', 'Long', 'skuId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368303104729093, 2023368303083757570, 'quantity', '入库数量', 'bigint', 'Long', 'quantity', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368303104729094, 2023368303083757570, 'unit_price', '单价', 'decimal(10,2)', 'BigDecimal', 'unitPrice', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368303104729095, 2023368303083757570, 'warehouse_id', '所属仓库', 'bigint', 'Long', 'warehouseId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368303104729096, 2023368303083757570, 'storage_shelf', '货架', 'varchar(255)', 'String', 'storageShelf', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368303104729097, 2023368303083757570, 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 8, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368303104729098, 2023368303083757570, 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368303104729099, 2023368303083757570, 'create_time', '创建时间', 'datetime(3)', 'Date', 'createTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368303104729100, 2023368303083757570, 'update_by', '修改人', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368303104729101, 2023368303083757570, 'update_time', '修改时间', 'datetime(3)', 'Date', 'updateTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2026-02-16 14:06:10', NULL, '2026-02-16 14:06:10');
INSERT INTO `gen_table_column` VALUES (2023368303205392385, 2023368303180226561, 'id', '', 'bigint', 'Long', 'id', '1', '1', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2026-02-16 14:06:11', NULL, '2026-02-16 14:06:11');
INSERT INTO `gen_table_column` VALUES (2023368303205392386, 2023368303180226561, 'shipment_no', '出库单号，系统自动生成', 'varchar(22)', 'String', 'shipmentNo', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2026-02-16 14:06:11', NULL, '2026-02-16 14:06:11');
INSERT INTO `gen_table_column` VALUES (2023368303205392387, 2023368303180226561, 'shipment_status', '出库单状态', 'tinyint', 'Long', 'shipmentStatus', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', '', 3, 'admin', '2026-02-16 14:06:11', NULL, '2026-02-16 14:06:11');
INSERT INTO `gen_table_column` VALUES (2023368303205392388, 2023368303180226561, 'total_quantity', '总数量', 'bigint', 'Long', 'totalQuantity', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2026-02-16 14:06:11', NULL, '2026-02-16 14:06:11');
INSERT INTO `gen_table_column` VALUES (2023368303205392389, 2023368303180226561, 'total_price', '总金额', 'decimal(10,2)', 'BigDecimal', 'totalPrice', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2026-02-16 14:06:11', NULL, '2026-02-16 14:06:11');
INSERT INTO `gen_table_column` VALUES (2023368303205392390, 2023368303180226561, 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 6, 'admin', '2026-02-16 14:06:11', NULL, '2026-02-16 14:06:11');
INSERT INTO `gen_table_column` VALUES (2023368303205392391, 2023368303180226561, 'opt_type', '出库类型', 'int', 'Long', 'optType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', 7, 'admin', '2026-02-16 14:06:11', NULL, '2026-02-16 14:06:11');
INSERT INTO `gen_table_column` VALUES (2023368303230558209, 2023368303180226561, 'biz_order_no', '业务订单号', 'varchar(50)', 'String', 'bizOrderNo', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2026-02-16 14:06:11', NULL, '2026-02-16 14:06:11');
INSERT INTO `gen_table_column` VALUES (2023368303234752513, 2023368303180226561, 'recipient', '领用人', 'varchar(20)', 'String', 'recipient', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2026-02-16 14:06:11', NULL, '2026-02-16 14:06:11');
INSERT INTO `gen_table_column` VALUES (2023368303234752514, 2023368303180226561, 'warehouse_id', '仓库id', 'bigint', 'Long', 'warehouseId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2026-02-16 14:06:11', NULL, '2026-02-16 14:06:11');
INSERT INTO `gen_table_column` VALUES (2023368303234752515, 2023368303180226561, 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2026-02-16 14:06:11', NULL, '2026-02-16 14:06:11');
INSERT INTO `gen_table_column` VALUES (2023368303234752516, 2023368303180226561, 'create_time', '创建时间', 'datetime(3)', 'Date', 'createTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2026-02-16 14:06:11', NULL, '2026-02-16 14:06:11');
INSERT INTO `gen_table_column` VALUES (2023368303234752517, 2023368303180226561, 'update_by', '修改人', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2026-02-16 14:06:11', NULL, '2026-02-16 14:06:11');
INSERT INTO `gen_table_column` VALUES (2023368303234752518, 2023368303180226561, 'update_time', '修改时间', 'datetime(3)', 'Date', 'updateTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 14, 'admin', '2026-02-16 14:06:11', NULL, '2026-02-16 14:06:11');
INSERT INTO `gen_table_column` VALUES (2023368303624822785, 2023368303394136065, 'id', '', 'bigint', 'Long', 'id', '1', '1', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2026-02-16 14:06:11', NULL, '2026-02-16 14:06:11');
INSERT INTO `gen_table_column` VALUES (2023368303624822786, 2023368303394136065, 'warehouse_code', '编号', 'varchar(20)', 'String', 'warehouseCode', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2026-02-16 14:06:11', NULL, '2026-02-16 14:06:11');
INSERT INTO `gen_table_column` VALUES (2023368303624822787, 2023368303394136065, 'warehouse_name', '名称', 'varchar(50)', 'String', 'warehouseName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2026-02-16 14:06:11', NULL, '2026-02-16 14:06:11');
INSERT INTO `gen_table_column` VALUES (2023368303624822788, 2023368303394136065, 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 4, 'admin', '2026-02-16 14:06:11', NULL, '2026-02-16 14:06:11');
INSERT INTO `gen_table_column` VALUES (2023368303624822789, 2023368303394136065, 'sort', '排序', 'int', 'Long', 'sort', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2026-02-16 14:06:11', NULL, '2026-02-16 14:06:11');
INSERT INTO `gen_table_column` VALUES (2023368303624822790, 2023368303394136065, 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2026-02-16 14:06:11', NULL, '2026-02-16 14:06:11');
INSERT INTO `gen_table_column` VALUES (2023368303624822791, 2023368303394136065, 'create_time', '创建时间', 'datetime(3)', 'Date', 'createTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2026-02-16 14:06:11', NULL, '2026-02-16 14:06:11');
INSERT INTO `gen_table_column` VALUES (2023368303624822792, 2023368303394136065, 'update_by', '修改人', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2026-02-16 14:06:11', NULL, '2026-02-16 14:06:11');
INSERT INTO `gen_table_column` VALUES (2023368303624822793, 2023368303394136065, 'update_time', '修改时间', 'datetime(3)', 'Date', 'updateTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2026-02-16 14:06:11', NULL, '2026-02-16 14:06:11');

-- ----------------------------
-- Table structure for mineral_car
-- ----------------------------
DROP TABLE IF EXISTS `mineral_car`;
CREATE TABLE `mineral_car`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键id',
  `car_number` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '车牌号',
  `motorcade_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '所属车队id',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `update_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '更新人',
  `is_del` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除(0:未删除,1:已删除)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '车辆信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mineral_car
-- ----------------------------
INSERT INTO `mineral_car` VALUES ('0a8f79603cbdd548e07e1f52b14393e8', '5105Ab04', '56061f95c2a82e45285f6e54313abe8e', '', '2025-12-08 00:05:24', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:05:24', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('0f2e5ba2c428313e89661605cb0c28eb', '333', '51a3e5a791484c3b70ae18458eca7e11', '', '2026-01-21 21:12:04', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-21 21:12:04', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('10026fd9fe2a12598a120503f210a7d9', '3247AV05', '5c1624c5156d2259bbb5826f2cd12189', '', '2025-12-08 00:04:09', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:04:09', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('12964909bdcc39d36cf8d97237dfd4b2', '3641AB04', 'd8f2905326a107d20b320a02b35df596', '', '2025-12-08 00:04:48', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:04:48', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('142eb991be9124ea98b980d1cd58cbb6', '2280AW05', 'd8f2905326a107d20b320a02b35df596', '', '2025-12-08 00:04:48', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:04:48', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('2e1385b6405a548a2d77441a8f909c9e', '5100Ab04', '56061f95c2a82e45285f6e54313abe8e', '', '2025-12-08 00:05:24', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:05:24', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('3c36b4a1b205b43e1ef89369d0b56cdf', '5107Ab04', '56061f95c2a82e45285f6e54313abe8e', '', '2025-12-08 00:05:24', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:05:24', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('3ef380361cd58755e9d17891ac49c9d9', '3249AV05', '5c1624c5156d2259bbb5826f2cd12189', '', '2025-12-08 00:04:09', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:04:09', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('41765e3a1c210b1f845404d5bc018a77', '2994AX05', 'd8f2905326a107d20b320a02b35df596', '', '2025-12-08 00:04:48', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:04:48', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('48153bee8c876eb8ed122ce829578c26', '3252AV05', '5c1624c5156d2259bbb5826f2cd12189', '', '2025-12-08 00:04:09', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:04:09', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('59fe419ada8928994719509a97e6322a', '2279AW05', 'd8f2905326a107d20b320a02b35df596', '', '2025-12-08 00:04:48', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:04:48', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('6383275a4f3f965110d079f9d0d469ee', '2275AW05', 'd8f2905326a107d20b320a02b35df596', '', '2025-12-08 00:04:48', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:04:48', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('72b151c60f1c0193f8ea9a5f42056e5b', '5087Ab04', '56061f95c2a82e45285f6e54313abe8e', '', '2025-12-08 00:05:24', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:05:24', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('74c3342c380f07e19118dfdee55bf6d2', '2277AW05', 'd8f2905326a107d20b320a02b35df596', '', '2025-12-08 00:04:48', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:04:48', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('7c4db8864fedfc03fca7b3c7b9e354e7', '3253AV05', '5c1624c5156d2259bbb5826f2cd12189', '', '2025-12-08 00:04:09', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:04:09', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('7d0c48c81459697ae82ce20bbfdc1f09', '5075Ab04', '56061f95c2a82e45285f6e54313abe8e', '', '2025-12-08 00:05:24', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:05:24', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('83cf5ba567c98ea20c81191a3090cae3', '3244AV05', '5c1624c5156d2259bbb5826f2cd12189', '', '2025-12-08 00:04:09', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:04:09', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('8a19a5c078566fe2615c5ae4aac755ce', '3643AB04', 'd8f2905326a107d20b320a02b35df596', '', '2025-12-08 00:04:48', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:04:48', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('98f8aa54da2184a0f83b9578b0aee7b9', '3255AV05', '5c1624c5156d2259bbb5826f2cd12189', '', '2025-12-08 00:04:09', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:04:09', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('a1323611689eb4cff1a2da615396433a', '5085Ab04', '56061f95c2a82e45285f6e54313abe8e', '', '2025-12-08 00:05:24', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:05:24', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('a337c6af844146ed5301e036e46773cd', '3245AV05', '5c1624c5156d2259bbb5826f2cd12189', '', '2025-12-08 00:04:09', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:04:09', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('a3b160249a80534fc5edbbef6a4cf253', '5068Ab04', '56061f95c2a82e45285f6e54313abe8e', '', '2025-12-08 00:05:24', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:05:24', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('a436fcfaa53d1ff9db3ffbcbf0ac1c06', '3254AV05', '5c1624c5156d2259bbb5826f2cd12189', '', '2025-12-08 00:04:09', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:04:09', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('a5b5757917e2930c9e67b52b85b7fce6', '3250AV05', '5c1624c5156d2259bbb5826f2cd12189', '', '2025-12-08 00:04:09', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:04:09', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('acf6354170249faff56155f835605d35', '5079Ab04', '56061f95c2a82e45285f6e54313abe8e', '', '2025-12-08 00:05:24', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:05:24', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('af8af535e12b252ce741c8a92bd42821', '5066Ab04', '56061f95c2a82e45285f6e54313abe8e', '', '2025-12-08 00:05:24', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:05:24', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('baf96b136dd0ad7337112c920b528c37', '2281AW05', 'd8f2905326a107d20b320a02b35df596', '', '2025-12-08 00:04:48', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:04:48', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('bc0d80b7d1206bec6246c17dd925d4ad', '5081Ab04', '56061f95c2a82e45285f6e54313abe8e', '', '2025-12-08 00:05:24', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:05:24', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('c4144557281dc5d64935a2533e37d069', '5102Ab04', '56061f95c2a82e45285f6e54313abe8e', '', '2025-12-08 00:05:24', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:05:24', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('c92f0c6d830cfdb7fd237cb7f4939dcc', '2276AW05', 'd8f2905326a107d20b320a02b35df596', '', '2025-12-08 00:04:48', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:04:48', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('c953541d40c21f354adf3485855f7848', '5109Ab04', '56061f95c2a82e45285f6e54313abe8e', '', '2025-12-08 00:05:24', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:05:24', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('c9d951e7bfb8ff0c837c5f4ca421293b', '0868AW05', 'd8f2905326a107d20b320a02b35df596', '', '2025-12-08 00:04:48', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:04:48', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('cb776c58bf3820afff255d67e32c68e7', '0912AV05', 'd8f2905326a107d20b320a02b35df596', '', '2025-12-08 00:04:48', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:04:48', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('ce8087d558d66f6b5eb85e797c3707a4', '1528AT05', 'd8f2905326a107d20b320a02b35df596', '', '2025-12-08 00:04:48', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:04:48', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('cfcb916a59ae06cbe55b297dcf861441', '2995AX05', 'd8f2905326a107d20b320a02b35df596', '', '2025-12-08 00:04:48', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:04:48', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('db231a7516cc575f9cbd7aa34e8585ba', '5072Ab04', '56061f95c2a82e45285f6e54313abe8e', '', '2025-12-08 00:05:24', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:05:24', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('de4737e3ea2fb0c81a3155237edf7f43', '3246AV05', '5c1624c5156d2259bbb5826f2cd12189', '', '2025-12-08 00:04:09', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:04:09', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('df4f49abbf777992f997a27ed5e0fa33', '5106Ab04', '56061f95c2a82e45285f6e54313abe8e', '', '2025-12-08 00:05:24', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:05:24', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('ebac701380c7db4a01f4e535ac74a6e9', '2278AW05', 'd8f2905326a107d20b320a02b35df596', '', '2025-12-08 00:04:48', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:04:48', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('ec7498515bc08e5349fd3820eec7c55f', '3642AB04', 'd8f2905326a107d20b320a02b35df596', '', '2025-12-08 00:04:48', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:04:48', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('f6b06fe98042b283767b75572a113be5', '5083Ab04', '56061f95c2a82e45285f6e54313abe8e', '', '2025-12-08 00:05:24', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:05:24', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_car` VALUES ('ffae90e590ab623e08377262aafc6ec6', '3251AV05', '5c1624c5156d2259bbb5826f2cd12189', '', '2025-12-08 00:04:09', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:04:09', 'e6367164a87c3b4f524a8cf839a50905', 0);

-- ----------------------------
-- Table structure for mineral_delivery
-- ----------------------------
DROP TABLE IF EXISTS `mineral_delivery`;
CREATE TABLE `mineral_delivery`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '主键id',
  `batch_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '取样批次号',
  `car_number` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '车牌号',
  `company_weight_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '工厂磅单编号',
  `weight_no` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '过磅编号',
  `owner_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '矿主id',
  `company_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '目的地工厂id',
  `motorcade_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '所属车队id',
  `status` int NOT NULL DEFAULT 0 COMMENT '送货状态(0:已发车,1:已过磅,2:已完成)',
  `anti_fake_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '防伪码',
  `settle_price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组货结算运费',
  `settle_time` datetime NULL DEFAULT NULL COMMENT '组货结算日期',
  `weighing_time` datetime NULL DEFAULT NULL COMMENT '过磅时间',
  `departure_time` datetime NOT NULL COMMENT '发车时间',
  `ticket_time` datetime NULL DEFAULT NULL COMMENT '开票日期',
  `accredit_time` datetime NULL DEFAULT NULL COMMENT '授权日期',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '备注',
  `create_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '修改人',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `is_del` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除(0:未删除,1:已删除)',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_md_del_batch_company_weigh`(`is_del` ASC, `batch_code` ASC, `company_id` ASC, `weighing_time` ASC) USING BTREE,
  INDEX `idx_md_cover_query`(`is_del` ASC, `batch_code` ASC, `company_id` ASC, `owner_id` ASC, `create_by` ASC, `weight_no` ASC, `weighing_time` ASC, `create_time` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '送货记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mineral_delivery
-- ----------------------------
INSERT INTO `mineral_delivery` VALUES ('0ad1e827c41328209b956b36b0e0a8d8', '', '3247AV05', NULL, '', 'a6a90d95168bf73b4a53803f8295ac50', 'cb46a1ab841a619b0fe5999ae0b96d4f', '5c1624c5156d2259bbb5826f2cd12189', 0, NULL, NULL, NULL, NULL, '2026-01-22 04:33:32', NULL, NULL, '[系统管理员:33]', '0', '2026-01-21 22:33:43', '0', '2026-01-21 22:33:43', 0);
INSERT INTO `mineral_delivery` VALUES ('0d93a78c3c1d795b16dabd4f6469a3c8', 'XM-SZ20251209001', '3643AB04', '0047216', 'SZ20251209001', 'a6a90d95168bf73b4a53803f8295ac50', '79e4be67decb7b5627bbfb1aae64ad48', 'd8f2905326a107d20b320a02b35df596', 2, 'AXEKAM1-AA-763814', '1400', '2025-12-08 00:26:33', '2025-12-10 00:14:21', '2025-12-09 16:59:39', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-09 17:00:01', '0', '2026-01-13 16:07:47', 0);
INSERT INTO `mineral_delivery` VALUES ('0dc7c5cbd8a481a89ec908737495f1a8', 'XM-LT20251208002', '2275AW05', '0047216', 'SZ20251209001', 'a6a90d95168bf73b4a53803f8295ac50', '03d9f118a8987206d072f7df2c42edf1', 'd8f2905326a107d20b320a02b35df596', 2, 'AXEKAM1-AA-763814', '1400', '2025-12-08 00:26:33', '2025-12-08 18:51:39', '2025-12-08 01:12:45', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 01:13:08', '0', '2026-01-18 20:53:49', 0);
INSERT INTO `mineral_delivery` VALUES ('0e72dd445af0a501127c0ec1c9a54092', 'XM-SZ20251207001', '2276AW05', '0047216', 'SZ20251209001', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 'd8f2905326a107d20b320a02b35df596', 2, 'AXEKAM1-AA-763814', '1400', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '2025-12-08 00:21:23', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:21:38', '0', '2026-01-18 20:54:11', 0);
INSERT INTO `mineral_delivery` VALUES ('1fe9e7de090e93edf68b8a6de914468e', '', '3250AV05', NULL, 'SZ20260121002', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', '5c1624c5156d2259bbb5826f2cd12189', 2, NULL, NULL, NULL, '2026-01-21 21:35:20', '2026-01-21 17:43:55', NULL, NULL, '[系统管理员:4444]', '0', '2026-01-21 17:44:16', '0', '2026-01-22 14:54:51', 0);
INSERT INTO `mineral_delivery` VALUES ('212c8cc179768d3c3d7d1d30f622ca87', '', '3244AV05', NULL, '', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', '5c1624c5156d2259bbb5826f2cd12189', 0, NULL, NULL, NULL, NULL, '2026-01-22 14:50:36', NULL, NULL, '[系统管理员:摊开]', '0', '2026-01-22 14:51:03', '0', '2026-01-22 14:51:03', 0);
INSERT INTO `mineral_delivery` VALUES ('225c2fcfafa29ea12c37b4c60c5ff2ad', '', '5100Ab04', '0047216', 'LT20260118001', '6265549d387c319ff38182ba61c8aaaf', '03d9f118a8987206d072f7df2c42edf1', '56061f95c2a82e45285f6e54313abe8e', 2, 'AXEKAM1-AA-763814', '1400', '2025-12-08 00:26:33', '2026-01-18 17:57:50', '2025-12-10 01:04:10', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-10 01:04:30', '0', '2026-01-18 20:51:59', 0);
INSERT INTO `mineral_delivery` VALUES ('230d8910876c974005275aa330c879de', '', '5105Ab04', NULL, 'LT20260121002', '6265549d387c319ff38182ba61c8aaaf', '03d9f118a8987206d072f7df2c42edf1', '56061f95c2a82e45285f6e54313abe8e', 2, NULL, NULL, NULL, '2026-01-21 21:39:13', '2026-01-22 03:38:49', NULL, NULL, '[系统管理员:ffffffffff, 系统管理员:ffff]', '0', '2026-01-21 21:39:03', '0', '2026-01-21 22:37:14', 0);
INSERT INTO `mineral_delivery` VALUES ('25f93a30c45cd62c22dd491305b4e364', 'XM-SZ20251209003', '5105Ab04', '0047216', 'SZ20251209001', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', '56061f95c2a82e45285f6e54313abe8e', 2, 'AXEKAM1-AA-763814', '1400', '2025-12-08 00:26:33', '2025-12-10 00:58:55', '2025-12-08 23:06:05', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 23:06:24', '0', '2026-01-18 20:52:15', 0);
INSERT INTO `mineral_delivery` VALUES ('261f08e779409c3b4a303b3df1cf9e45', '', '2280AW05', NULL, 'LT20260121003', '6265549d387c319ff38182ba61c8aaaf', '03d9f118a8987206d072f7df2c42edf1', 'd8f2905326a107d20b320a02b35df596', 2, NULL, NULL, NULL, '2026-01-21 22:11:23', '2026-01-22 04:10:57', NULL, NULL, '[系统管理员:S, 系统管理员:dd]', '0', '2026-01-21 22:11:12', '0', '2026-01-21 22:11:38', 0);
INSERT INTO `mineral_delivery` VALUES ('2c742b9acad1dd5e334714cf5ba1f8df', 'XM-SZ20251208002', '5102Ab04', '0047216', 'SZ20251209001', 'a6a90d95168bf73b4a53803f8295ac50', '79e4be67decb7b5627bbfb1aae64ad48', '56061f95c2a82e45285f6e54313abe8e', 2, 'AXEKAM1-AA-763814', '1400', '2025-12-08 00:26:33', '2025-12-08 18:51:19', '2025-12-08 01:11:28', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 01:11:55', '0', '2026-01-18 20:54:03', 0);
INSERT INTO `mineral_delivery` VALUES ('3321bc62c8ad28e1f05676c8f42667ac', '', '2280AW05', NULL, '', '6265549d387c319ff38182ba61c8aaaf', 'cb46a1ab841a619b0fe5999ae0b96d4f', 'd8f2905326a107d20b320a02b35df596', 0, NULL, NULL, NULL, NULL, '2026-01-22 04:33:39', NULL, NULL, '[系统管理员:123]', '0', '2026-01-21 22:33:57', '0', '2026-01-21 22:33:57', 0);
INSERT INTO `mineral_delivery` VALUES ('33acc040cf3bd0486661c7303058e118', '', '3641AB04', NULL, 'LT20260118002', '6265549d387c319ff38182ba61c8aaaf', '03d9f118a8987206d072f7df2c42edf1', 'd8f2905326a107d20b320a02b35df596', 2, NULL, NULL, NULL, '2026-01-18 20:55:00', '2026-01-14 20:08:59', NULL, NULL, '[系统管理员:屈原, 系统管理员:[系统管理员:屈原]]', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-14 20:09:49', '0', '2026-01-19 01:43:03', 0);
INSERT INTO `mineral_delivery` VALUES ('35e834ffcb5d82addacdb49e2d791dcc', '', '3247AV05', '0047216', 'SZ20260118001', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', '5c1624c5156d2259bbb5826f2cd12189', 2, 'AXEKAM1-AA-763814', '1400', '2025-12-08 00:26:33', '2026-01-18 17:58:02', '2025-12-09 13:34:07', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-09 13:34:22', '0', '2026-01-18 20:52:11', 0);
INSERT INTO `mineral_delivery` VALUES ('3bb0bc84fe6f9d6a6921585c243f560f', 'XM-SZ20251208001', '5068Ab04', '0047216', 'SZ20251209001', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', '56061f95c2a82e45285f6e54313abe8e', 2, 'AXEKAM1-AA-763814', '1400', '2025-12-08 00:26:33', '2025-12-08 18:51:11', '2025-12-08 01:10:57', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 01:11:19', '0', '2026-01-18 20:54:07', 0);
INSERT INTO `mineral_delivery` VALUES ('4b2dd67f4a7b212639e254fb67fe7f39', '', '5105Ab04', NULL, 'SZ20260121001', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', '56061f95c2a82e45285f6e54313abe8e', 1, NULL, NULL, NULL, '2026-01-21 21:35:00', '2026-01-21 20:33:56', NULL, NULL, '[系统管理员:3]', '0', '2026-01-21 20:34:08', '0', '2026-01-21 21:35:00', 0);
INSERT INTO `mineral_delivery` VALUES ('4d149dd4052c3daa16cced0c7914e9a7', 'XM-SZ20251207002', '3255AV05', '0047216', 'SZ20251209001', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', '5c1624c5156d2259bbb5826f2cd12189', 2, 'AXEKAM1-AA-763814', '1400', '2025-12-08 00:26:33', '2025-12-08 00:35:01', '2025-12-08 00:20:25', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:20:39', '0', '2026-01-18 20:54:24', 0);
INSERT INTO `mineral_delivery` VALUES ('528224495438fc3a73e7e958c63aa3d2', '', '2280AW05', NULL, 'SZ20260121003', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 'd8f2905326a107d20b320a02b35df596', 2, NULL, NULL, NULL, '2026-01-21 21:36:35', '2026-01-21 14:25:22', NULL, NULL, '[系统管理员:摊开]', '0', '2026-01-21 14:25:39', '0', '2026-01-21 21:36:56', 0);
INSERT INTO `mineral_delivery` VALUES ('52c2330ee791e2be385b601d40a0ac4e', '', '2279AW05', NULL, '', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 'd8f2905326a107d20b320a02b35df596', 0, NULL, NULL, NULL, NULL, '2026-01-22 14:49:56', NULL, NULL, '', '0', '2026-01-22 14:50:11', '0', '2026-01-22 14:50:11', 0);
INSERT INTO `mineral_delivery` VALUES ('52f6d746485cc085e193605ae2a350d3', 'XM-SZ20251207002', '5075Ab04', '0047216', 'SZ20251209001', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', '56061f95c2a82e45285f6e54313abe8e', 2, 'AXEKAM1-AA-763814', '1400', '2025-12-08 00:26:33', '2025-12-08 16:17:29', '2025-12-08 16:12:33', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 16:13:00', '0', '2026-01-18 20:53:33', 0);
INSERT INTO `mineral_delivery` VALUES ('599a862962c18e46089cc2819ac17de3', '', '0912AV05', NULL, 'LT20260121001', '6265549d387c319ff38182ba61c8aaaf', '03d9f118a8987206d072f7df2c42edf1', 'd8f2905326a107d20b320a02b35df596', 2, NULL, NULL, NULL, '2026-01-21 21:38:34', '2026-01-22 03:38:14', NULL, NULL, '[系统管理员:123, 系统管理员:3]', '0', '2026-01-21 21:38:27', '0', '2026-01-21 22:14:19', 0);
INSERT INTO `mineral_delivery` VALUES ('5ba8edc5f9cf67da67dceac7dab34763', '', '1528AT05', '3', 'LT20260117005', '6265549d387c319ff38182ba61c8aaaf', '03d9f118a8987206d072f7df2c42edf1', 'd8f2905326a107d20b320a02b35df596', 2, '1', '3', '2026-01-10 06:00:00', '2026-01-17 19:14:56', '2026-01-14 20:08:59', '2026-01-22 06:00:00', '2026-01-22 06:00:00', '[系统管理员:摊开, 开发测试:333]', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-14 20:09:49', '0', '2026-01-18 16:02:48', 0);
INSERT INTO `mineral_delivery` VALUES ('5ddc43a59516fa78decea07a13463c8d', 'XM-LT20251208001', '5107Ab04', '0047216', 'SZ20251209001', 'a6a90d95168bf73b4a53803f8295ac50', '03d9f118a8987206d072f7df2c42edf1', '56061f95c2a82e45285f6e54313abe8e', 2, 'AXEKAM1-AA-763814', '1400', '2025-12-08 00:26:33', '2025-12-08 18:51:00', '2025-12-08 01:10:15', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 01:10:53', '0', '2026-01-17 19:17:35', 0);
INSERT INTO `mineral_delivery` VALUES ('5e4aaa9c2ccf662150f1aeee77e34d0e', 'XM-SZ20251208002', '3642AB04', '0047216', 'SZ20251209001', 'a6a90d95168bf73b4a53803f8295ac50', '79e4be67decb7b5627bbfb1aae64ad48', 'd8f2905326a107d20b320a02b35df596', 2, 'AXEKAM1-AA-763814', '1400', '2025-12-08 00:26:33', '2025-12-08 18:53:02', '2025-12-08 01:14:49', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 01:15:08', '0', '2026-01-18 20:53:42', 0);
INSERT INTO `mineral_delivery` VALUES ('5ebe116602268b7afede444052640b35', 'XM-SZ20251208004', '5100Ab04', '0047216', 'SZ20251209001', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', '56061f95c2a82e45285f6e54313abe8e', 2, 'AXEKAM1-AA-763814', '1400', '2025-12-08 00:26:33', '2025-12-08 19:58:43', '2025-12-08 00:19:40', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:20:01', '0', '2026-01-18 20:54:34', 0);
INSERT INTO `mineral_delivery` VALUES ('6216c9ae7ee021346c0c190e5129bd1a', '', '3641AB04', NULL, 'SZ20260119001', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 'd8f2905326a107d20b320a02b35df596', 1, NULL, NULL, NULL, '2026-01-19 23:50:47', '2026-01-19 01:34:17', NULL, NULL, '[系统管理员:2]', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-19 01:34:27', '0', '2026-01-19 23:50:47', 0);
INSERT INTO `mineral_delivery` VALUES ('66229e82e9fca42b3bb181e784b2acee', '', '3641AB04', NULL, '', '6265549d387c319ff38182ba61c8aaaf', '03d9f118a8987206d072f7df2c42edf1', 'd8f2905326a107d20b320a02b35df596', 0, NULL, NULL, NULL, NULL, '2026-01-22 14:56:26', NULL, NULL, '', '0', '2026-01-22 14:56:32', '0', '2026-01-22 14:56:32', 0);
INSERT INTO `mineral_delivery` VALUES ('71053a649a7c3f3e3b69e3c03a393bd3', '', '3641AB04', '3123', 'SZ20260120001', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 'd8f2905326a107d20b320a02b35df596', 2, NULL, NULL, NULL, '2026-01-20 13:40:44', '2026-01-20 13:40:09', NULL, NULL, '', '0', '2026-01-20 13:40:11', '0', '2026-01-21 20:36:10', 0);
INSERT INTO `mineral_delivery` VALUES ('72df0757e8421897da01ba52cadce90d', '', '3641AB04', NULL, 'LT20260114001', '6265549d387c319ff38182ba61c8aaaf', '03d9f118a8987206d072f7df2c42edf1', 'd8f2905326a107d20b320a02b35df596', 2, NULL, NULL, NULL, '2026-01-14 14:57:30', '2026-01-14 14:55:54', NULL, NULL, '[系统管理员:摊取, 系统管理员:摊取]', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-14 14:56:19', '0', '2026-01-14 18:06:52', 0);
INSERT INTO `mineral_delivery` VALUES ('76a6a0e43c30c7054c5c4cc18a1750e1', '', '5066Ab04', NULL, '', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', '56061f95c2a82e45285f6e54313abe8e', 0, NULL, NULL, NULL, NULL, '2026-01-22 14:49:56', NULL, NULL, '', '0', '2026-01-22 14:50:11', '0', '2026-01-22 14:50:11', 0);
INSERT INTO `mineral_delivery` VALUES ('7a1688df915c599c9bfa234e85e29368', '', '5105Ab04', '0047216', 'CJC20260118001', '6265549d387c319ff38182ba61c8aaaf', '59875b959ccc831d8ba06988effeeb11', '56061f95c2a82e45285f6e54313abe8e', 2, 'AXEKAM1-AA-763814', '1400', '2025-12-08 00:26:33', '2026-01-18 17:57:57', '2025-12-10 01:03:52', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-10 01:04:07', '0', '2026-01-18 20:52:07', 0);
INSERT INTO `mineral_delivery` VALUES ('7c8ca4859b76d1837aa1316fec59200d', 'XM-SZ20251213002', '5066Ab04', '0047216', 'SZ20251209001', 'a6a90d95168bf73b4a53803f8295ac50', '79e4be67decb7b5627bbfb1aae64ad48', '56061f95c2a82e45285f6e54313abe8e', 2, 'AXEKAM1-AA-763814', '1400', '2025-12-08 00:26:33', '2025-12-13 11:18:31', '2025-12-10 01:06:49', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '[系统管理员:摊取, 开发测试:qwe]', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-10 01:07:47', '0', '2026-01-13 01:45:06', 0);
INSERT INTO `mineral_delivery` VALUES ('7fad50b683f50db0a79315a36459197e', '', '2279AW05', '0047216', 'CSLT20260114001', 'a2b96476ef5facaf58ad25b59a788d91', 'cb46a1ab841a619b0fe5999ae0b96d4f', 'd8f2905326a107d20b320a02b35df596', 2, 'AXEKAM1-AA-763814', '1400', '2025-12-08 00:26:33', '2026-01-14 14:44:56', '2025-12-10 01:05:37', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-10 01:05:51', '0', '2026-01-18 17:58:17', 0);
INSERT INTO `mineral_delivery` VALUES ('805025178abcfde0ebdbd27be72ac1c7', '', '3247AV05', '23123121132213213', 'CSLT20260121001', 'a6a90d95168bf73b4a53803f8295ac50', 'cb46a1ab841a619b0fe5999ae0b96d4f', '5c1624c5156d2259bbb5826f2cd12189', 2, '1321323313213', '1466', '2026-01-21 06:00:00', '2026-01-21 22:32:34', '2026-01-22 04:17:10', '2026-01-29 06:00:00', '2026-01-29 06:00:00', '[系统管理员:123]', '0', '2026-01-21 22:17:26', '0', '2026-01-22 02:05:30', 0);
INSERT INTO `mineral_delivery` VALUES ('84ad63b6686ecaa15a92f71dd27e0917', 'XM-SZ20251208005', '5105Ab04', '0047216', 'SZ20251209001', 'a2b96476ef5facaf58ad25b59a788d91', '79e4be67decb7b5627bbfb1aae64ad48', '56061f95c2a82e45285f6e54313abe8e', 2, 'AXEKAM1-AA-763814', '1400', '2025-12-08 00:26:33', '2025-12-08 23:05:31', '2025-12-08 20:02:01', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 20:02:17', '0', '2026-01-18 20:52:46', 0);
INSERT INTO `mineral_delivery` VALUES ('84f61faf0574207373c0bbea51deda9c', 'XM-SZ20251207002', '2277AW05', '0047216', 'SZ20251209001', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 'd8f2905326a107d20b320a02b35df596', 2, 'AXEKAM1-AA-763814', '1400', '2025-12-08 00:26:33', '2025-12-08 00:35:01', '2025-12-08 00:20:04', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:20:22', '0', '2026-01-18 20:54:29', 0);
INSERT INTO `mineral_delivery` VALUES ('915032dcef4bb6b55e67bd677de0179c', 'XM-SZ20251208006', '2280AW05', '0047216', 'SZ20251209001', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 'd8f2905326a107d20b320a02b35df596', 2, 'AXEKAM1-AA-763814', '1400', '2025-12-08 00:26:33', '2025-12-08 23:05:59', '2025-12-08 23:05:37', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 23:05:52', '0', '2026-01-18 20:52:21', 0);
INSERT INTO `mineral_delivery` VALUES ('91815362a2b8ace9356dc541e8092afe', '', '2280AW05', '0047216', 'CSLT20260117001', 'a2b96476ef5facaf58ad25b59a788d91', 'cb46a1ab841a619b0fe5999ae0b96d4f', 'd8f2905326a107d20b320a02b35df596', 2, 'AXEKAM1-AA-763814', '1400', '2025-12-08 00:26:33', '2026-01-17 18:30:18', '2025-12-10 01:04:32', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '[开发测试:123123123]', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-10 01:04:50', '0', '2026-01-18 20:51:55', 0);
INSERT INTO `mineral_delivery` VALUES ('91b013f4e00892b22336cb0a991b4b5b', 'XM-SZ20251208004', '5105Ab04', '0047216', 'SZ20251209001', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', '56061f95c2a82e45285f6e54313abe8e', 2, 'AXEKAM1-AA-763814', '1400', '2025-12-08 00:26:33', '2025-12-08 19:59:32', '2025-12-08 00:17:50', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:18:04', '0', '2026-01-18 20:54:38', 0);
INSERT INTO `mineral_delivery` VALUES ('924222ede9e193f0cceea2d38b6fcc56', '', '5105Ab04', NULL, '', 'a6a90d95168bf73b4a53803f8295ac50', '03d9f118a8987206d072f7df2c42edf1', '56061f95c2a82e45285f6e54313abe8e', 0, NULL, NULL, NULL, NULL, '2026-01-22 14:56:33', NULL, NULL, '', '0', '2026-01-22 14:56:39', '0', '2026-01-22 14:56:39', 0);
INSERT INTO `mineral_delivery` VALUES ('935f9752959a32b94208fecaceedafe1', 'XM-SZ20251209002', '3641AB04', '0047216', 'SZ20251209001', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 'd8f2905326a107d20b320a02b35df596', 2, 'AXEKAM1-AA-763814', '1400', '2025-12-08 00:26:33', '2025-12-10 00:14:58', '2025-12-09 13:34:55', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-09 13:35:10', '0', '2026-01-13 16:07:33', 0);
INSERT INTO `mineral_delivery` VALUES ('974f2bb69f48b85814bf1769fe2a51bd', '', '3249AV05', '0047216', 'SZ20260117003', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', '5c1624c5156d2259bbb5826f2cd12189', 2, 'AXEKAM1-AA-763814', '1400', '2025-12-08 00:26:33', '2026-01-17 19:25:02', '2025-12-10 01:06:34', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '[开发测试:11]', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-10 01:06:47', '0', '2026-01-17 19:26:43', 0);
INSERT INTO `mineral_delivery` VALUES ('9e681bda4c459ed63da79e357c06f828', '', '3244AV05', '0047216', 'CJC20260114001', '6265549d387c319ff38182ba61c8aaaf', '59875b959ccc831d8ba06988effeeb11', '5c1624c5156d2259bbb5826f2cd12189', 2, 'AXEKAM1-AA-763811', '1400', '2025-12-08 00:26:33', '2026-01-14 14:53:01', '2025-12-10 01:05:11', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '[系统管理员:已经过磅]', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-10 01:05:35', '0', '2026-01-18 20:51:50', 0);
INSERT INTO `mineral_delivery` VALUES ('9f769edd25f5458470be87de4bf68a29', 'XM-SZ20251207002', '5066Ab04', '0047216', 'SZ20251209001', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', '56061f95c2a82e45285f6e54313abe8e', 2, 'AXEKAM1-AA-763814', '1400', '2025-12-08 00:26:33', '2025-12-08 00:26:58', '2025-12-08 00:20:44', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:20:58', '0', '2026-01-18 20:54:19', 0);
INSERT INTO `mineral_delivery` VALUES ('a3fc1b86125a5b20c78e2b34c4295dfb', '', '3641AB04', NULL, 'LT20260121004', '6265549d387c319ff38182ba61c8aaaf', '03d9f118a8987206d072f7df2c42edf1', 'd8f2905326a107d20b320a02b35df596', 2, NULL, NULL, NULL, '2026-01-21 22:14:34', '2026-01-22 03:39:55', NULL, NULL, '[系统管理员:ff]', '0', '2026-01-21 21:40:05', '0', '2026-01-22 14:52:46', 0);
INSERT INTO `mineral_delivery` VALUES ('ac59edc87ae81a0d561eddec4ea84e6a', '', '2994AX05', '0047216', 'CJC20260117002', 'a2b96476ef5facaf58ad25b59a788d91', '59875b959ccc831d8ba06988effeeb11', 'd8f2905326a107d20b320a02b35df596', 2, 'AXEKAM1-AA-763814', '1400', '2025-12-08 00:26:33', '2026-01-17 19:19:14', '2025-12-10 01:08:21', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-10 01:08:35', '0', '2026-01-17 19:20:54', 0);
INSERT INTO `mineral_delivery` VALUES ('b4a1dfd143398607b459d4b1a5c4e925', '', '3641AB04', NULL, 'SZ20260118002', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 'd8f2905326a107d20b320a02b35df596', 1, NULL, NULL, NULL, '2026-01-18 21:09:22', '2026-01-18 21:08:30', NULL, NULL, '', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-18 21:08:53', '0', '2026-01-18 21:09:22', 0);
INSERT INTO `mineral_delivery` VALUES ('baa4f5304014e24020c9f28c03834139', '', '2280AW05', NULL, 'SZ20260118003', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 'd8f2905326a107d20b320a02b35df596', 2, NULL, NULL, NULL, '2026-01-18 21:10:17', '2026-01-18 21:10:01', NULL, NULL, '', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-18 21:10:07', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-19 23:07:05', 0);
INSERT INTO `mineral_delivery` VALUES ('bd4f99441964ec8728942a05aff1b169', '', '3255AV05', NULL, 'SZ20260122001', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', '5c1624c5156d2259bbb5826f2cd12189', 2, NULL, NULL, NULL, '2026-01-22 14:51:41', '2026-01-22 14:50:36', NULL, NULL, '[系统管理员:摊取, 系统管理员:已经摊取]', '0', '2026-01-22 14:51:03', '0', '2026-01-24 03:17:45', 0);
INSERT INTO `mineral_delivery` VALUES ('d1ddd0ee3b8c9cc46ab8b648f9218750', 'XM-SZ20251213002', '3641AB04', '0047216', 'SZ20251209001', 'a6a90d95168bf73b4a53803f8295ac50', '79e4be67decb7b5627bbfb1aae64ad48', 'd8f2905326a107d20b320a02b35df596', 2, 'AXEKAM1-AA-7638141', '1400', '2025-12-08 00:26:33', '2025-12-13 11:20:39', '2025-12-13 17:19:09', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '[开发测试:123, 开发测试:fff]', '16026bea132782cd2043a17e216d05cc', '2025-12-13 11:19:27', '0', '2026-01-01 17:05:50', 0);
INSERT INTO `mineral_delivery` VALUES ('d9d3cafc742479eb32cb8f876f79bb58', '', '2275AW05', NULL, '', 'a2b96476ef5facaf58ad25b59a788d91', '59875b959ccc831d8ba06988effeeb11', 'd8f2905326a107d20b320a02b35df596', 0, NULL, NULL, NULL, NULL, '2026-01-22 14:56:57', NULL, NULL, '', '0', '2026-01-22 14:57:14', '0', '2026-01-22 14:57:14', 0);
INSERT INTO `mineral_delivery` VALUES ('e715799e8208324fd5b5d350b27e3f3e', 'XM-SZ20251207002', '5087Ab04', '0047216', 'SZ20251209001', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', '56061f95c2a82e45285f6e54313abe8e', 2, 'AXEKAM1-AA-763814', '1400', '2025-12-08 00:26:33', '2025-12-08 16:17:29', '2025-12-08 16:12:08', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 16:12:31', '0', '2026-01-18 20:53:38', 0);
INSERT INTO `mineral_delivery` VALUES ('e7602a8741d6170f09d4f9cf66832281', 'XM-SZ20251207001', '3252AV05', '0047216', 'SZ20251209001', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', '5c1624c5156d2259bbb5826f2cd12189', 2, 'AXEKAM1-AA-763814', '1400', '2025-12-08 00:26:33', '2025-12-08 00:25:27', '2025-12-08 00:21:43', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '[测试矿山:摊取, 测试驻厂2:已摊取]', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:22:11', '0', '2026-01-18 20:53:59', 0);
INSERT INTO `mineral_delivery` VALUES ('e785a540fa2e7c25fff41fe95bc6c879', 'XM-SZ20251208001', '2280AW05', '0047216', 'SZ20251209001', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 'd8f2905326a107d20b320a02b35df596', 2, 'AXEKAM1-AA-763814', '1400', '2025-12-08 00:26:33', '2025-12-08 18:50:46', '2025-12-08 00:16:13', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:16:34', '0', '2026-01-18 20:51:44', 0);
INSERT INTO `mineral_delivery` VALUES ('edc39ee89f2887c01d15b11e85fa5cb0', 'XM-LT20251208002', '3643AB04', '0047216', 'SZ20251209001', 'a2b96476ef5facaf58ad25b59a788d91', '03d9f118a8987206d072f7df2c42edf1', 'd8f2905326a107d20b320a02b35df596', 2, 'AXEKAM1-AA-763814', '1400', '2025-12-08 00:26:33', '2025-12-08 18:51:26', '2025-12-08 01:11:59', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 01:12:21', '0', '2026-01-18 20:53:55', 0);
INSERT INTO `mineral_delivery` VALUES ('f1ec9738f92aaa029ed7bc4ef4e84657', 'XM-SZ20251208003', '2281AW05', '0047216', 'SZ20251209001', 'a2b96476ef5facaf58ad25b59a788d91', '79e4be67decb7b5627bbfb1aae64ad48', 'd8f2905326a107d20b320a02b35df596', 2, 'AXEKAM1-AA-763814', '1400', '2025-12-08 00:26:33', '2025-12-08 19:06:23', '2025-12-08 16:13:56', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 16:14:15', '0', '2026-01-18 20:53:24', 0);
INSERT INTO `mineral_delivery` VALUES ('f3874c737ee3880062b7c9503b92730a', '', '2281AW05', '0047216', 'LT20260112003', '6265549d387c319ff38182ba61c8aaaf', '03d9f118a8987206d072f7df2c42edf1', 'd8f2905326a107d20b320a02b35df596', 2, 'AXEKAM1-AA-763814', '1400', '2025-12-08 00:26:33', '2026-01-13 02:16:42', '2025-12-10 01:05:52', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-10 01:06:17', '0', '2026-01-18 17:58:11', 0);
INSERT INTO `mineral_delivery` VALUES ('f3c2284c5fe12ab23773be25e80064ef', '', '5068Ab04', NULL, '', '6265549d387c319ff38182ba61c8aaaf', '03d9f118a8987206d072f7df2c42edf1', '56061f95c2a82e45285f6e54313abe8e', 0, NULL, NULL, NULL, NULL, '2026-01-22 14:55:37', NULL, NULL, '', '0', '2026-01-22 14:56:01', '0', '2026-01-22 14:56:01', 0);
INSERT INTO `mineral_delivery` VALUES ('f8066eedfcd4df1333c07b483bf5d801', 'XM-SZ20251207001', '3249AV05', '0047216', 'SZ20251209001', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', '5c1624c5156d2259bbb5826f2cd12189', 2, 'AXEKAM1-AA-763814', '1400', '2025-12-08 00:26:33', '2025-12-08 00:26:58', '2025-12-08 00:21:03', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:21:19', '0', '2026-01-18 20:54:15', 0);
INSERT INTO `mineral_delivery` VALUES ('fb95e2d034a89f134126c6664d924787', 'XM-SZ20251209002', '2280AW05', '0047216', 'SZ20251209001', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 'd8f2905326a107d20b320a02b35df596', 2, 'AXEKAM1-AA-763814', '1400', '2025-12-08 00:26:33', '2025-12-10 00:16:05', '2025-12-09 13:34:23', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-09 13:34:45', '0', '2026-01-17 19:17:14', 0);
INSERT INTO `mineral_delivery` VALUES ('fcbc9880a6204b22af16343d554accd3', 'XM-SZ20251208004', '3247AV05', '0047216', 'SZ20251209001', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', '5c1624c5156d2259bbb5826f2cd12189', 2, 'AXEKAM1-AA-763814', '1400', '2025-12-08 00:26:33', '2025-12-08 19:06:39', '2025-12-08 00:17:32', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:17:49', '0', '2026-01-18 20:54:42', 0);
INSERT INTO `mineral_delivery` VALUES ('ff33fc07106542a098141afaba647657', 'XM-SZ20251208004', '3641AB04', '0047216', 'SZ20251209001', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 'd8f2905326a107d20b320a02b35df596', 2, 'AXEKAM1-AA-763814', '1400', '2025-12-08 00:26:33', '2025-12-08 19:59:41', '2025-12-08 00:16:35', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '[系统管理员:摊取]', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:17:31', '0', '2026-01-18 20:54:46', 0);
INSERT INTO `mineral_delivery` VALUES ('ffdac2c2ff8df175f203ced89576141f', 'XM-SZ20251213002', '3252AV05', '0047216', 'SZ20251209001', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', '5c1624c5156d2259bbb5826f2cd12189', 2, 'AXEKAM1-AA-763814', '1400', '2025-12-08 00:26:33', '2025-12-13 11:18:31', '2025-12-10 01:09:35', '2025-12-08 00:26:33', '2025-12-08 00:26:33', '[开发测试:qwe]', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-10 01:09:52', '0', '2025-12-27 17:39:40', 0);

-- ----------------------------
-- Table structure for mineral_delivery_quality
-- ----------------------------
DROP TABLE IF EXISTS `mineral_delivery_quality`;
CREATE TABLE `mineral_delivery_quality`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键id',
  `delivery_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'delivery表id',
  `owner_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '矿主id',
  `company_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '目的地工厂id',
  `total_weight` int NULL DEFAULT 0 COMMENT '总重(kg)',
  `net_weight` int NULL DEFAULT 0 COMMENT '净重(kg)',
  `empty_weight` int NULL DEFAULT 0 COMMENT '空重(kg)',
  `moisture` decimal(10, 2) NULL DEFAULT NULL COMMENT '水份',
  `cuo_ratio` decimal(10, 2) NULL DEFAULT NULL COMMENT '氧化铜品位',
  `acid_demand` decimal(10, 2) NULL DEFAULT NULL COMMENT '酸耗',
  `create_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '修改人',
  `update_time` datetime NOT NULL COMMENT '修改时间',
  `is_del` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除(0:未删除,1:已删除)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '送货质量表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mineral_delivery_quality
-- ----------------------------
INSERT INTO `mineral_delivery_quality` VALUES ('0bde1142ac00c4e2672f7184d16ec1b9', 'a3fc1b86125a5b20c78e2b34c4295dfb', '6265549d387c319ff38182ba61c8aaaf', '03d9f118a8987206d072f7df2c42edf1', 80000, 34761, 45239, NULL, NULL, NULL, '0', '2026-01-21 21:40:05', '0', '2026-01-22 14:52:46', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('0d93a78c3c1d795b16dabd4f6469a3c8', '0d93a78c3c1d795b16dabd4f6469a3c8', 'a6a90d95168bf73b4a53803f8295ac50', '79e4be67decb7b5627bbfb1aae64ad48', 80000, 60000, 20000, 21.60, 5.98, 5.10, 'e6367164a87c3b4f524a8cf839a50905', '2025-12-09 17:00:01', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-09 17:00:01', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('0dc7c5cbd8a481a89ec908737495f1a8', '0dc7c5cbd8a481a89ec908737495f1a8', 'a6a90d95168bf73b4a53803f8295ac50', '03d9f118a8987206d072f7df2c42edf1', 80000, 60000, 20000, 16.30, 6.66, 2.98, 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 01:13:08', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-18 20:53:49', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('0e72dd445af0a501127c0ec1c9a54092', '0e72dd445af0a501127c0ec1c9a54092', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 80000, 60000, 20000, 11.50, 3.06, 1.56, 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:21:38', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-18 20:54:11', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('197b6744a350ef617f2e0f531dbaec68', '528224495438fc3a73e7e958c63aa3d2', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 1, -1, 2, NULL, NULL, NULL, '0', '2026-01-21 14:25:39', '0', '2026-01-21 21:36:56', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('1e4b05783a07bd66e13e36b5d0135ad8', '52c2330ee791e2be385b601d40a0ac4e', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 0, 0, 0, NULL, NULL, NULL, '0', '2026-01-22 14:50:11', '0', '2026-01-22 14:50:11', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('1fa8e49f73252dafd11fe9f1f389f042', 'd9d3cafc742479eb32cb8f876f79bb58', 'a2b96476ef5facaf58ad25b59a788d91', '59875b959ccc831d8ba06988effeeb11', 0, 0, 0, NULL, NULL, NULL, '0', '2026-01-22 14:57:14', '0', '2026-01-22 14:57:14', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('225c2fcfafa29ea12c37b4c60c5ff2ad', '225c2fcfafa29ea12c37b4c60c5ff2ad', '6265549d387c319ff38182ba61c8aaaf', '03d9f118a8987206d072f7df2c42edf1', 80000, 60000, 20000, 22.50, 9.22, 6.62, 'e6367164a87c3b4f524a8cf839a50905', '2025-12-10 01:04:30', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-18 20:51:59', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('25f93a30c45cd62c22dd491305b4e364', '25f93a30c45cd62c22dd491305b4e364', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 80000, 60000, 20000, 12.65, 4.96, 4.13, 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 23:06:24', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-18 20:52:15', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('2c742b9acad1dd5e334714cf5ba1f8df', '2c742b9acad1dd5e334714cf5ba1f8df', 'a6a90d95168bf73b4a53803f8295ac50', '79e4be67decb7b5627bbfb1aae64ad48', 80000, 60000, 20000, 21.43, 4.56, 7.99, 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 01:11:55', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-18 20:54:03', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('30ab08cf3b4d3b008635a093dae52162', '72df0757e8421897da01ba52cadce90d', '6265549d387c319ff38182ba61c8aaaf', '03d9f118a8987206d072f7df2c42edf1', 81555, 0, 0, 1.00, NULL, NULL, 'e6367164a87c3b4f524a8cf839a50905', '2026-01-14 14:56:19', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-14 18:06:52', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('31bd5f3e2b293572d924028aaee905ce', '212c8cc179768d3c3d7d1d30f622ca87', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 0, 0, 0, NULL, NULL, NULL, '0', '2026-01-22 14:51:03', '0', '2026-01-22 14:51:03', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('35e834ffcb5d82addacdb49e2d791dcc', '35e834ffcb5d82addacdb49e2d791dcc', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 80000, 60000, 20000, 23.66, 7.32, 5.02, 'e6367164a87c3b4f524a8cf839a50905', '2025-12-09 13:34:22', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-18 20:52:11', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('3b2e84476641cb838532edb00b27c1ef', '71053a649a7c3f3e3b69e3c03a393bd3', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 1, -29999, 30000, NULL, NULL, NULL, '0', '2026-01-20 13:40:11', '0', '2026-01-23 19:23:41', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('3bb0bc84fe6f9d6a6921585c243f560f', '3bb0bc84fe6f9d6a6921585c243f560f', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 80000, 60000, 20000, 12.43, 5.31, 6.94, 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 01:11:19', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-18 20:54:07', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('446e40d51a2cfd901afefe7cfe495186', '3321bc62c8ad28e1f05676c8f42667ac', '6265549d387c319ff38182ba61c8aaaf', 'cb46a1ab841a619b0fe5999ae0b96d4f', 0, 0, 0, NULL, NULL, NULL, '0', '2026-01-21 22:33:57', '0', '2026-01-21 22:33:57', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('4926a605336b0b508519727c21a9b09a', 'f3c2284c5fe12ab23773be25e80064ef', '6265549d387c319ff38182ba61c8aaaf', '03d9f118a8987206d072f7df2c42edf1', 0, 0, 0, NULL, NULL, NULL, '0', '2026-01-22 14:56:01', '0', '2026-01-22 14:56:01', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('4d149dd4052c3daa16cced0c7914e9a7', '4d149dd4052c3daa16cced0c7914e9a7', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 80000, 60000, 20000, 18.55, 7.11, 3.62, 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:20:39', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-18 20:54:24', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('52f6d746485cc085e193605ae2a350d3', '52f6d746485cc085e193605ae2a350d3', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 80000, 60000, 20000, 16.56, 3.22, 3.51, 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 16:13:00', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-18 20:53:33', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('57c809876297f292b9365b4eb5680db4', '4b2dd67f4a7b212639e254fb67fe7f39', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 1, -5, 6, NULL, NULL, NULL, '0', '2026-01-21 20:34:08', '0', '2026-01-23 19:23:47', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('58d4a91c979a65ae0410c85dc51bbfd4', '5ba8edc5f9cf67da67dceac7dab34763', '6265549d387c319ff38182ba61c8aaaf', '03d9f118a8987206d072f7df2c42edf1', 1, 0, 0, 1.00, NULL, NULL, 'e6367164a87c3b4f524a8cf839a50905', '2026-01-14 20:09:49', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-17 19:18:00', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('5ddc43a59516fa78decea07a13463c8d', '5ddc43a59516fa78decea07a13463c8d', 'a6a90d95168bf73b4a53803f8295ac50', '03d9f118a8987206d072f7df2c42edf1', 80000, 60000, 20000, 13.31, 4.87, 5.96, 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 01:10:53', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-17 19:17:35', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('5e4aaa9c2ccf662150f1aeee77e34d0e', '5e4aaa9c2ccf662150f1aeee77e34d0e', 'a6a90d95168bf73b4a53803f8295ac50', '79e4be67decb7b5627bbfb1aae64ad48', 80000, 60000, 20000, 17.31, 5.12, 5.93, 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 01:15:08', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-18 20:53:42', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('5ebe116602268b7afede444052640b35', '5ebe116602268b7afede444052640b35', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 80000, 60000, 20000, 20.11, 2.96, 7.11, 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:20:01', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-18 20:54:34', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('5fba5131088b5accd8db98245f1df0a8', '230d8910876c974005275aa330c879de', '6265549d387c319ff38182ba61c8aaaf', '03d9f118a8987206d072f7df2c42edf1', 66666, 61111, 5555, NULL, NULL, NULL, '0', '2026-01-21 21:39:03', '0', '2026-01-21 22:37:14', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('666ead89b2dbe2491104a666149b5e06', '6216c9ae7ee021346c0c190e5129bd1a', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 1, 0, 0, NULL, NULL, NULL, 'e6367164a87c3b4f524a8cf839a50905', '2026-01-19 01:34:27', '0', '2026-01-19 23:50:47', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('6e8eedd03e223eebd57c5c89f76d7a5b', '0ad1e827c41328209b956b36b0e0a8d8', 'a6a90d95168bf73b4a53803f8295ac50', 'cb46a1ab841a619b0fe5999ae0b96d4f', 0, 0, 0, NULL, NULL, NULL, '0', '2026-01-21 22:33:43', '0', '2026-01-21 22:33:43', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('7a1688df915c599c9bfa234e85e29368', '7a1688df915c599c9bfa234e85e29368', '6265549d387c319ff38182ba61c8aaaf', '59875b959ccc831d8ba06988effeeb11', 80000, 60000, 20000, 14.14, 4.25, 3.98, 'e6367164a87c3b4f524a8cf839a50905', '2025-12-10 01:04:07', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-18 20:52:07', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('7c8ca4859b76d1837aa1316fec59200d', '7c8ca4859b76d1837aa1316fec59200d', 'a6a90d95168bf73b4a53803f8295ac50', '79e4be67decb7b5627bbfb1aae64ad48', 80000, 60000, 20000, 25.25, 5.10, 5.33, '16026bea132782cd2043a17e216d05cc', '2025-12-10 01:07:47', '16026bea132782cd2043a17e216d05cc', '2025-12-10 01:07:47', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('7fad50b683f50db0a79315a36459197e', '7fad50b683f50db0a79315a36459197e', 'a2b96476ef5facaf58ad25b59a788d91', 'cb46a1ab841a619b0fe5999ae0b96d4f', 80000, 60000, 20000, 13.41, 6.34, 5.67, 'e6367164a87c3b4f524a8cf839a50905', '2025-12-10 01:05:51', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-18 17:58:17', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('84ad63b6686ecaa15a92f71dd27e0917', '84ad63b6686ecaa15a92f71dd27e0917', 'a2b96476ef5facaf58ad25b59a788d91', '79e4be67decb7b5627bbfb1aae64ad48', 80000, 60000, 20000, 19.31, 3.54, 1.44, 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 20:02:17', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-18 20:52:46', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('84f61faf0574207373c0bbea51deda9c', '84f61faf0574207373c0bbea51deda9c', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 80000, 60000, 20000, 16.53, 5.11, 2.88, 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:20:22', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-18 20:54:29', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('8590414de634a17268a0e739b8e0504b', 'b4a1dfd143398607b459d4b1a5c4e925', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 0, 0, 0, NULL, NULL, NULL, 'e6367164a87c3b4f524a8cf839a50905', '2026-01-18 21:08:53', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-18 21:09:22', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('87982d3d6ae01ada74a1f4aafc250d38', 'bd4f99441964ec8728942a05aff1b169', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 86210, 57322, 28888, 13.00, 5.00, 4.00, '0', '2026-01-22 14:51:03', '0', '2026-01-24 03:00:48', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('915032dcef4bb6b55e67bd677de0179c', '915032dcef4bb6b55e67bd677de0179c', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 80000, 60000, 20000, 17.13, 4.33, 3.97, 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 23:05:52', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-18 20:52:21', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('91815362a2b8ace9356dc541e8092afe', '91815362a2b8ace9356dc541e8092afe', 'a2b96476ef5facaf58ad25b59a788d91', 'cb46a1ab841a619b0fe5999ae0b96d4f', 12, 60000, 20000, 20.54, 2.55, 1.66, 'e6367164a87c3b4f524a8cf839a50905', '2025-12-10 01:04:50', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-18 20:51:55', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('91b013f4e00892b22336cb0a991b4b5b', '91b013f4e00892b22336cb0a991b4b5b', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 80000, 60000, 20000, 15.56, 5.43, 1.66, 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:18:04', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-18 20:54:38', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('935f9752959a32b94208fecaceedafe1', '935f9752959a32b94208fecaceedafe1', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 80000, 60000, 20000, 15.26, 8.12, 5.11, 'e6367164a87c3b4f524a8cf839a50905', '2025-12-09 13:35:10', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-09 13:35:10', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('972ffedc848b19d2f9608faf240d68a6', '1fe9e7de090e93edf68b8a6de914468e', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 84213, 57885, 26328, NULL, NULL, NULL, '0', '2026-01-21 17:44:16', '0', '2026-01-22 14:54:51', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('974f2bb69f48b85814bf1769fe2a51bd', '974f2bb69f48b85814bf1769fe2a51bd', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 1, -2, 3, 17.86, 6.13, 4.46, '16026bea132782cd2043a17e216d05cc', '2025-12-10 01:06:47', '16026bea132782cd2043a17e216d05cc', '2026-01-17 19:26:43', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('9e681bda4c459ed63da79e357c06f828', '9e681bda4c459ed63da79e357c06f828', '6265549d387c319ff38182ba61c8aaaf', '59875b959ccc831d8ba06988effeeb11', 82648, 60000, 20000, 23.11, 2.67, 3.55, 'e6367164a87c3b4f524a8cf839a50905', '2025-12-10 01:05:35', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-18 20:51:50', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('9f769edd25f5458470be87de4bf68a29', '9f769edd25f5458470be87de4bf68a29', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 80000, 60000, 20000, 14.89, 3.44, 1.87, 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:20:58', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-18 20:54:19', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('a72623639fe4e0789d70344dcda7b364', '66229e82e9fca42b3bb181e784b2acee', '6265549d387c319ff38182ba61c8aaaf', '03d9f118a8987206d072f7df2c42edf1', 0, 0, 0, NULL, NULL, NULL, '0', '2026-01-22 14:56:32', '0', '2026-01-22 14:56:32', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('a9b61b9aac8fbcc44d7454dd3fecc04d', '33acc040cf3bd0486661c7303058e118', '6265549d387c319ff38182ba61c8aaaf', '03d9f118a8987206d072f7df2c42edf1', 80000, 0, 0, 1.00, NULL, NULL, 'e6367164a87c3b4f524a8cf839a50905', '2026-01-14 20:09:49', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-18 20:55:33', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('ab0e505807cd4dcffa723979c6b6216c', '924222ede9e193f0cceea2d38b6fcc56', 'a6a90d95168bf73b4a53803f8295ac50', '03d9f118a8987206d072f7df2c42edf1', 0, 0, 0, NULL, NULL, NULL, '0', '2026-01-22 14:56:39', '0', '2026-01-22 14:56:39', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('ac59edc87ae81a0d561eddec4ea84e6a', 'ac59edc87ae81a0d561eddec4ea84e6a', 'a2b96476ef5facaf58ad25b59a788d91', '59875b959ccc831d8ba06988effeeb11', 2, 60000, 20000, 17.90, 6.42, 2.54, 'e6367164a87c3b4f524a8cf839a50905', '2025-12-10 01:08:35', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-17 19:20:54', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('cbbf1c36c1a7327c70fdb5593fb5f4ea', '76a6a0e43c30c7054c5c4cc18a1750e1', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 0, 0, 0, NULL, NULL, NULL, '0', '2026-01-22 14:50:11', '0', '2026-01-22 14:50:11', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('ced73216f7b12f03280f8f6f7694da87', '261f08e779409c3b4a303b3df1cf9e45', '6265549d387c319ff38182ba61c8aaaf', '03d9f118a8987206d072f7df2c42edf1', 44, -11, 55, NULL, NULL, NULL, '0', '2026-01-21 22:11:12', '0', '2026-01-21 22:11:38', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('d1ddd0ee3b8c9cc46ab8b648f9218750', 'd1ddd0ee3b8c9cc46ab8b648f9218750', 'a6a90d95168bf73b4a53803f8295ac50', '79e4be67decb7b5627bbfb1aae64ad48', 80000, 60000, 20000, 20.05, 1.11, 3.65, 'e6367164a87c3b4f524a8cf839a50905', '2025-12-13 11:19:27', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-13 11:19:27', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('e1e51aa06f33f23957c2df36913b68ea', '805025178abcfde0ebdbd27be72ac1c7', 'a6a90d95168bf73b4a53803f8295ac50', 'cb46a1ab841a619b0fe5999ae0b96d4f', 111111, 120000, 3123, NULL, NULL, NULL, '0', '2026-01-21 22:17:26', '0', '2026-01-22 02:02:38', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('e715799e8208324fd5b5d350b27e3f3e', 'e715799e8208324fd5b5d350b27e3f3e', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 80000, 60000, 20000, 16.06, 1.43, 2.76, 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 16:12:31', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-18 20:53:38', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('e7602a8741d6170f09d4f9cf66832281', 'e7602a8741d6170f09d4f9cf66832281', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 80000, 60000, 20000, 18.09, 5.76, 6.04, 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:22:11', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-18 20:53:59', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('e785a540fa2e7c25fff41fe95bc6c879', 'e785a540fa2e7c25fff41fe95bc6c879', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 80000, 60000, 20000, 20.00, 4.23, 5.00, 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:16:34', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-18 20:51:44', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('ecb590a813493c1939022ba007654f80', '599a862962c18e46089cc2819ac17de3', '6265549d387c319ff38182ba61c8aaaf', '03d9f118a8987206d072f7df2c42edf1', 80000, 30000, 50000, NULL, NULL, NULL, '0', '2026-01-21 21:38:27', '0', '2026-01-21 22:14:19', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('edc39ee89f2887c01d15b11e85fa5cb0', 'edc39ee89f2887c01d15b11e85fa5cb0', 'a2b96476ef5facaf58ad25b59a788d91', '03d9f118a8987206d072f7df2c42edf1', 80000, 60000, 20000, 20.00, 2.51, 5.00, 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 01:12:21', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-18 20:53:55', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('ef7736acd67fad6bee0cd3fb152278aa', 'baa4f5304014e24020c9f28c03834139', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 0, 0, 0, NULL, NULL, NULL, 'e6367164a87c3b4f524a8cf839a50905', '2026-01-18 21:10:07', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-19 23:07:05', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('f1ec9738f92aaa029ed7bc4ef4e84657', 'f1ec9738f92aaa029ed7bc4ef4e84657', 'a2b96476ef5facaf58ad25b59a788d91', '79e4be67decb7b5627bbfb1aae64ad48', 80000, 60000, 20000, 20.00, 4.11, 5.00, 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 16:14:15', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-18 20:53:24', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('f3874c737ee3880062b7c9503b92730a', 'f3874c737ee3880062b7c9503b92730a', '6265549d387c319ff38182ba61c8aaaf', '03d9f118a8987206d072f7df2c42edf1', 80000, 60000, 20000, 20.00, 3.01, 5.00, 'e6367164a87c3b4f524a8cf839a50905', '2025-12-10 01:06:17', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-18 17:58:11', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('f8066eedfcd4df1333c07b483bf5d801', 'f8066eedfcd4df1333c07b483bf5d801', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 80000, 60000, 20000, 20.00, 4.11, 5.00, 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:21:19', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-18 20:54:15', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('fb95e2d034a89f134126c6664d924787', 'fb95e2d034a89f134126c6664d924787', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 80000, 60000, 20000, 20.00, 2.45, 5.00, 'e6367164a87c3b4f524a8cf839a50905', '2025-12-09 13:34:45', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-17 19:17:14', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('fcbc9880a6204b22af16343d554accd3', 'fcbc9880a6204b22af16343d554accd3', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 80000, 60000, 20000, 20.00, 1.78, 5.00, 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:17:49', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-18 20:54:42', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('ff33fc07106542a098141afaba647657', 'ff33fc07106542a098141afaba647657', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 80000, 60000, 20000, 20.00, 2.95, 5.00, 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 00:17:31', 'e6367164a87c3b4f524a8cf839a50905', '2026-01-18 20:54:46', 0);
INSERT INTO `mineral_delivery_quality` VALUES ('ffdac2c2ff8df175f203ced89576141f', 'ffdac2c2ff8df175f203ced89576141f', '6265549d387c319ff38182ba61c8aaaf', '79e4be67decb7b5627bbfb1aae64ad48', 80000, 60000, 20000, 20.00, 3.00, 5.00, '16026bea132782cd2043a17e216d05cc', '2025-12-10 01:09:52', '16026bea132782cd2043a17e216d05cc', '2025-12-10 01:09:52', 0);

-- ----------------------------
-- Table structure for mineral_refuel_record
-- ----------------------------
DROP TABLE IF EXISTS `mineral_refuel_record`;
CREATE TABLE `mineral_refuel_record`  (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '主键id',
  `motorcade_id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '所属车队id',
  `car_number` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '车牌号',
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '图片地址',
  `litre` int NOT NULL COMMENT '加油量(L)',
  `status` int NOT NULL COMMENT '是否结算(0:未结算,1:已结算)',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '备注',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `create_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '创建人',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `update_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '更新人',
  `is_del` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除(0:未删除,1:已删除)',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '加油记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of mineral_refuel_record
-- ----------------------------
INSERT INTO `mineral_refuel_record` VALUES ('3f06d717cbf6c09799ce7e3211087b29', '', '3247AV05', '', 200, 0, '', '2026-01-24 02:54:54', '0', '2026-01-24 02:54:54', '0', 0);
INSERT INTO `mineral_refuel_record` VALUES ('4893ad7717410473b00dac1eb2688117', '', '3247AV05', '', 100, 0, '', '2025-12-08 01:18:33', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 01:18:33', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_refuel_record` VALUES ('54fe093e2bc4949f3904412ce7642f47', '', '3641AB04', '', 80, 0, '', '2025-12-08 01:18:13', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 01:18:13', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_refuel_record` VALUES ('6c1666687b29333316607b47ec130292', '', '5105Ab04', '', 200, 0, '', '2026-01-23 22:39:18', '0', '2026-01-23 22:39:18', '0', 0);
INSERT INTO `mineral_refuel_record` VALUES ('8da26b95adc56643258087d9caec57d7', '', '2280AW05', '', 1000, 0, '', '2026-01-24 02:54:39', '0', '2026-01-24 02:54:39', '0', 0);
INSERT INTO `mineral_refuel_record` VALUES ('9b9421fb24c22bb153879f6497219e5c', '', '2280AW05', '', 80, 0, '', '2025-12-08 01:17:58', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 01:17:58', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_refuel_record` VALUES ('c83c77b390577891be45e6c90c2fc91a', '', '5105Ab04', '', 100, 0, '加了一点', '2025-12-08 01:15:51', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 01:15:51', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_refuel_record` VALUES ('edc2d2cd88b871a33518405d04d9d4f0', '', '5100Ab04', '', 80, 0, '', '2025-12-08 01:18:21', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 01:18:21', 'e6367164a87c3b4f524a8cf839a50905', 0);
INSERT INTO `mineral_refuel_record` VALUES ('fab1384012b39db7378a61b902f5206c', '', '3247AV05', '', 100, 0, '', '2025-12-08 01:17:47', 'e6367164a87c3b4f524a8cf839a50905', '2025-12-08 01:17:47', 'e6367164a87c3b4f524a8cf839a50905', 0);

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` bigint NOT NULL COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '参数配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2024-06-13 16:06:37', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2024-06-13 16:06:37', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-light', 'Y', 'admin', '2024-06-13 16:06:37', 'admin', '2026-02-07 15:46:08', '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES (4, '账号自助-验证码开关', 'sys.account.captchaEnabled', 'true', 'Y', 'admin', '2024-06-13 16:06:37', '', NULL, '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2024-06-13 16:06:37', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (11, 'OSS预览列表资源开关', 'sys.oss.previewListResource', 'true', 'Y', 'admin', '2024-06-13 16:06:37', '', NULL, 'true:开启, false:关闭');
INSERT INTO `sys_config` VALUES (2023372683518386177, '库存预警数量', 'sys.warehouse.warning', '10', 'Y', 'admin', '2026-02-16 14:23:35', 'admin', '2026-02-16 14:23:35', '库存数量少于这个数量的时候将会进行通知');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `sort` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '神洲矿业', 0, '超级管理员', '15888888888', 'ry@qq.com', '1', '0', 'admin', '2024-06-13 16:06:25', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '财务部门', 1, '超级管理员', '15888888888', 'ry@qq.com', '1', '0', 'admin', '2024-06-13 16:06:25', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '采购部门', 2, '超级管理员', '15888888888', 'ry@qq.com', '1', '0', 'admin', '2024-06-13 16:06:25', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100', '生产部门', 1, '超级管理员', '15888888888', 'ry@qq.com', '1', '0', 'admin', '2024-06-13 16:06:25', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100', '安保部门', 2, '超级管理员', '15888888888', 'ry@qq.com', '1', '0', 'admin', '2024-06-13 16:06:25', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100', '市场部门', 3, '超级管理员', '15888888888', 'ry@qq.com', '1', '0', 'admin', '2024-06-13 16:06:25', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0停用 1正常）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典数据表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '1', 'admin', '2024-06-13 16:06:36', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '1', 'admin', '2024-06-13 16:06:36', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '1', 'admin', '2024-06-13 16:06:36', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '1', 'sys_show_hide', '', 'primary', 'Y', '1', 'admin', '2024-06-13 16:06:36', 'admin', '2024-07-10 16:34:54', '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '0', 'sys_show_hide', '', 'danger', 'N', '1', 'admin', '2024-06-13 16:06:36', 'admin', '2024-07-10 16:35:07', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '1', 'sys_normal_disable', '', 'primary', 'Y', '1', 'admin', '2024-06-13 16:06:36', 'admin', '2024-07-10 14:30:58', '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '0', 'sys_normal_disable', '', 'danger', 'N', '1', 'admin', '2024-06-13 16:06:36', 'admin', '2024-07-10 14:31:06', '停用状态');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '1', 'admin', '2024-06-13 16:06:36', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '1', 'admin', '2024-06-13 16:06:36', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '1', 'admin', '2024-06-13 16:06:36', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '1', 'admin', '2024-06-13 16:06:36', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '1', 'sys_notice_status', '', 'primary', 'Y', '1', 'admin', '2024-06-13 16:06:36', 'admin', '2024-07-10 17:24:35', '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '0', 'sys_notice_status', '', 'danger', 'N', '1', 'admin', '2024-06-13 16:06:36', 'admin', '2024-07-10 17:24:44', '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '1', 'admin', '2024-06-13 16:06:36', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '1', 'admin', '2024-06-13 16:06:36', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '1', 'admin', '2024-06-13 16:06:37', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '1', 'admin', '2024-06-13 16:06:37', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '1', 'admin', '2024-06-13 16:06:37', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '1', 'admin', '2024-06-13 16:06:37', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '1', 'admin', '2024-06-13 16:06:37', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '1', 'admin', '2024-06-13 16:06:37', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '1', 'admin', '2024-06-13 16:06:37', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '失败', '0', 'sys_common_status', '', 'danger', 'N', '1', 'admin', '2024-06-13 16:06:37', 'admin', '2024-07-15 10:50:52', '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '成功', '1', 'sys_common_status', '', 'success', 'N', '1', 'admin', '2024-06-13 16:06:37', 'admin', '2024-07-15 10:51:05', '停用状态');
INSERT INTO `sys_dict_data` VALUES (29, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '1', 'admin', '2024-06-13 16:06:36', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (1812692503272718338, 0, '客户', '1', 'merchant_type', NULL, 'default', 'N', '1', 'admin', '2024-07-15 11:35:46', 'admin', '2024-07-16 11:21:11', NULL);
INSERT INTO `sys_dict_data` VALUES (1812694839395135489, 1, '供应商', '2', 'merchant_type', NULL, 'default', 'N', '1', 'admin', '2024-07-15 11:45:03', 'admin', '2024-07-16 11:21:29', '');
INSERT INTO `sys_dict_data` VALUES (1813051377282904066, 3, '客户/供应商', '3', 'merchant_type', NULL, 'default', 'N', '1', 'admin', '2024-07-16 11:21:48', 'admin', '2024-07-16 11:21:48', NULL);
INSERT INTO `sys_dict_data` VALUES (1813153852862160897, 0, '未入库', '0', 'wms_receipt_status', NULL, 'info', 'N', '1', 'admin', '2024-07-16 18:09:00', 'admin', '2024-07-22 09:38:14', NULL);
INSERT INTO `sys_dict_data` VALUES (1813153899775451137, 1, '已入库', '1', 'wms_receipt_status', NULL, 'primary', 'N', '1', 'admin', '2024-07-16 18:09:11', 'admin', '2024-07-22 09:38:22', NULL);
INSERT INTO `sys_dict_data` VALUES (1813397339171905537, 3, '作废', '-1', 'wms_receipt_status', NULL, 'danger', 'N', '1', 'admin', '2024-07-17 10:16:32', 'admin', '2024-07-22 09:38:29', NULL);
INSERT INTO `sys_dict_data` VALUES (1814219171351085057, 0, '生产入库', '1', 'wms_receipt_type', NULL, 'primary', 'N', '1', 'admin', '2024-07-19 16:42:12', 'admin', '2024-07-22 09:38:50', NULL);
INSERT INTO `sys_dict_data` VALUES (1814219220520910849, 1, '采购入库', '2', 'wms_receipt_type', NULL, 'primary', 'N', '1', 'admin', '2024-07-19 16:42:23', 'admin', '2024-07-22 09:38:56', NULL);
INSERT INTO `sys_dict_data` VALUES (1814219269975949313, 2, '退货入库', '3', 'wms_receipt_type', NULL, 'primary', 'N', '1', 'admin', '2024-07-19 16:42:35', 'admin', '2024-07-22 09:39:01', NULL);
INSERT INTO `sys_dict_data` VALUES (1814219304272773121, 3, '归还入库', '4', 'wms_receipt_type', NULL, 'primary', 'N', '1', 'admin', '2024-07-19 16:42:43', 'admin', '2024-07-22 09:39:06', NULL);
INSERT INTO `sys_dict_data` VALUES (1818850397680640002, 2, '作废', '-1', 'wms_shipment_status', NULL, 'danger', 'N', '1', 'admin', '2024-08-01 11:25:02', 'admin', '2024-08-01 14:25:24', NULL);
INSERT INTO `sys_dict_data` VALUES (1818850512650706945, 0, '未出库', '0', 'wms_shipment_status', NULL, 'info', 'N', '1', 'admin', '2024-08-01 11:25:29', 'admin', '2024-08-01 14:25:37', NULL);
INSERT INTO `sys_dict_data` VALUES (1818850565389885441, 1, '已出库', '1', 'wms_shipment_status', NULL, 'primary', 'N', '1', 'admin', '2024-08-01 11:25:42', 'admin', '2024-08-01 14:25:32', NULL);
INSERT INTO `sys_dict_data` VALUES (1818850814351187969, 0, '退货出库', '1', 'wms_shipment_type', NULL, 'primary', 'N', '1', 'admin', '2024-08-01 11:26:41', 'wms2_admin', '2024-09-25 18:45:02', NULL);
INSERT INTO `sys_dict_data` VALUES (1818850852594851841, 1, '销售出库', '2', 'wms_shipment_type', NULL, 'primary', 'N', '1', 'admin', '2024-08-01 11:26:51', 'wms2_admin', '2024-09-25 18:45:13', NULL);
INSERT INTO `sys_dict_data` VALUES (1818850884714831874, 2, '生产出库', '3', 'wms_shipment_type', NULL, 'primary', 'N', '1', 'admin', '2024-08-01 11:26:58', 'wms2_admin', '2024-09-25 18:45:23', NULL);
INSERT INTO `sys_dict_data` VALUES (1821067084643434498, 0, '入库', '1', 'wms_inventory_history_type', NULL, 'success', 'N', '1', 'admin', '2024-08-07 14:13:21', 'wms2_admin', '2024-09-27 10:53:49', NULL);
INSERT INTO `sys_dict_data` VALUES (1821067144441626625, 1, '出库', '2', 'wms_inventory_history_type', NULL, 'danger', 'N', '1', 'admin', '2024-08-07 14:13:36', 'wms2_admin', '2024-09-27 10:53:39', NULL);
INSERT INTO `sys_dict_data` VALUES (1821067181917732866, 2, '移库', '3', 'wms_inventory_history_type', NULL, 'warning', 'N', '1', 'admin', '2024-08-07 14:13:45', 'wms2_admin', '2024-09-27 10:54:01', NULL);
INSERT INTO `sys_dict_data` VALUES (1821067222455681026, 3, '盘库', '4', 'wms_inventory_history_type', NULL, 'primary', 'N', '1', 'admin', '2024-08-07 14:13:54', 'admin', '2024-08-07 14:58:06', NULL);
INSERT INTO `sys_dict_data` VALUES (1822820748966006786, 0, '未移库', '0', 'wms_movement_status', NULL, 'info', 'N', '1', 'admin', '2024-08-12 10:21:48', 'admin', '2024-08-12 10:21:48', NULL);
INSERT INTO `sys_dict_data` VALUES (1822820794864275457, 1, '已移库', '1', 'wms_movement_status', NULL, 'primary', 'N', '1', 'admin', '2024-08-12 10:21:59', 'admin', '2024-08-12 10:21:59', NULL);
INSERT INTO `sys_dict_data` VALUES (1822820855526494210, 2, '作废', '-1', 'wms_movement_status', NULL, 'danger', 'N', '1', 'admin', '2024-08-12 10:22:13', 'admin', '2024-08-12 10:22:13', NULL);
INSERT INTO `sys_dict_data` VALUES (1823182345731391489, 0, '待盘库', '0', 'wms_check_status', NULL, 'info', 'N', '1', 'admin', '2024-08-13 10:18:39', 'admin', '2024-08-13 10:18:39', NULL);
INSERT INTO `sys_dict_data` VALUES (1823182400756465666, 1, '已盘库', '1', 'wms_check_status', NULL, 'primary', 'N', '1', 'admin', '2024-08-13 10:18:52', 'admin', '2024-08-13 10:18:52', NULL);
INSERT INTO `sys_dict_data` VALUES (1823182471136886786, 2, '作废', '-1', 'wms_check_status', NULL, 'danger', 'N', '1', 'admin', '2024-08-13 10:19:09', 'admin', '2024-08-13 10:19:09', NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典类型表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '1', 'admin', '2024-06-13 16:06:35', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '1', 'admin', '2024-06-13 16:06:35', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '1', 'admin', '2024-06-13 16:06:35', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '1', 'admin', '2024-06-13 16:06:35', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '1', 'admin', '2024-06-13 16:06:35', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '1', 'admin', '2024-06-13 16:06:35', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '1', 'admin', '2024-06-13 16:06:35', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '1', 'admin', '2024-06-13 16:06:36', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (1812692454547488770, '企业类型', 'merchant_type', '1', 'admin', '2024-07-15 11:35:34', 'admin', '2024-07-16 17:41:32', '企业类型');
INSERT INTO `sys_dict_type` VALUES (1813152108564373505, '入库状态', 'wms_receipt_status', '1', 'admin', '2024-07-16 18:02:04', 'admin', '2024-07-16 18:02:17', '入库状态');
INSERT INTO `sys_dict_type` VALUES (1814219082624778242, '入库类型', 'wms_receipt_type', '1', 'admin', '2024-07-19 16:41:51', 'admin', '2024-07-19 16:41:51', NULL);
INSERT INTO `sys_dict_type` VALUES (1818848671749709825, '出库状态', 'wms_shipment_status', '1', 'admin', '2024-08-01 11:18:11', 'admin', '2024-08-01 11:18:11', NULL);
INSERT INTO `sys_dict_type` VALUES (1818848738502057985, '出库类型', 'wms_shipment_type', '1', 'admin', '2024-08-01 11:18:26', 'admin', '2024-08-01 11:18:26', NULL);
INSERT INTO `sys_dict_type` VALUES (1821066855638630402, '库存记录操作类型', 'wms_inventory_history_type', '1', 'admin', '2024-08-07 14:12:27', 'admin', '2024-08-07 14:12:27', NULL);
INSERT INTO `sys_dict_type` VALUES (1822820566366982146, '移库状态', 'wms_movement_status', '1', 'admin', '2024-08-12 10:21:04', 'admin', '2024-08-12 10:21:04', NULL);
INSERT INTO `sys_dict_type` VALUES (1823182238898274306, '盘库状态', 'wms_check_status', '1', 'admin', '2024-08-13 10:18:14', 'admin', '2024-08-13 10:18:14', NULL);

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint NOT NULL COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统访问记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (2019645538946203650, 'admin', '169.239.158.109', '刚果金|橘子电信', 'Chrome', 'Windows 10 or Windows Server 2016', '0', '密码输入错误1次', '2026-02-06 13:33:14');
INSERT INTO `sys_logininfor` VALUES (2019645571846324225, 'admin', '169.239.158.109', '刚果金|橘子电信', 'Chrome', 'Windows 10 or Windows Server 2016', '0', '验证码错误', '2026-02-06 13:33:22');
INSERT INTO `sys_logininfor` VALUES (2019645866651369473, 'admin', '169.239.158.109', '刚果金|橘子电信', 'Chrome', 'Windows 10 or Windows Server 2016', '1', '登录成功', '2026-02-06 13:34:32');
INSERT INTO `sys_logininfor` VALUES (2019654762308780034, 'admin', '122.97.172.241', '中国|江苏省|南京市|联通', 'Chrome', 'OSX', '1', '登录成功', '2026-02-06 14:09:53');
INSERT INTO `sys_logininfor` VALUES (2019654809385648130, 'admin', '122.97.172.241', '中国|江苏省|南京市|联通', 'Chrome', 'OSX', '1', '退出成功', '2026-02-06 14:10:05');
INSERT INTO `sys_logininfor` VALUES (2019668423303708673, 'admin', '122.97.172.241', '中国|江苏省|南京市|联通', 'Chrome', 'OSX', '1', '登录成功', '2026-02-06 15:04:10');
INSERT INTO `sys_logininfor` VALUES (2019669673801891842, 'admin', '122.97.172.241', '中国|江苏省|南京市|联通', 'Chrome', 'OSX', '1', '退出成功', '2026-02-06 15:09:09');
INSERT INTO `sys_logininfor` VALUES (2019721210666369026, 'admin', '169.239.158.109', '刚果金|橘子电信', 'Chrome', 'Windows 10 or Windows Server 2016', '1', '登录成功', '2026-02-06 18:33:56');
INSERT INTO `sys_logininfor` VALUES (2020010039533084674, 'admin', '169.239.158.109', '刚果金|橘子电信', 'Chrome', 'Windows 10 or Windows Server 2016', '1', '登录成功', '2026-02-07 07:41:38');
INSERT INTO `sys_logininfor` VALUES (2020130183404036098, 'admin', '120.243.204.5', '中国|安徽省|宣城市|移动', 'Chrome', 'Windows 10 or Windows Server 2016', '1', '登录成功', '2026-02-07 15:39:03');
INSERT INTO `sys_logininfor` VALUES (2020531808392159233, 'admin', '41.77.221.211', '刚果金|Kinshasa|橘子电信', 'Chrome', 'Windows 10 or Windows Server 2016', '1', '登录成功', '2026-02-08 18:14:57');
INSERT INTO `sys_logininfor` VALUES (2020668860597202945, 'admin', '122.97.172.241', '中国|江苏省|南京市|联通', 'Chrome', 'OSX', '1', '登录成功', '2026-02-09 03:19:33');
INSERT INTO `sys_logininfor` VALUES (2020668889269465090, 'admin', '122.97.172.241', '中国|江苏省|南京市|联通', 'Chrome', 'OSX', '1', '退出成功', '2026-02-09 03:19:40');
INSERT INTO `sys_logininfor` VALUES (2020762409284071425, 'admin', '122.97.172.241', '中国|江苏省|南京市|联通', 'Chrome', 'OSX', '1', '登录成功', '2026-02-09 09:31:17');
INSERT INTO `sys_logininfor` VALUES (2020762949166493697, 'admin', '122.97.172.241', '中国|江苏省|南京市|联通', 'Chrome', 'OSX', '1', '退出成功', '2026-02-09 09:33:26');
INSERT INTO `sys_logininfor` VALUES (2020788762028994562, 'admin', '122.97.172.241', '中国|江苏省|南京市|联通', 'Chrome', 'OSX', '1', '登录成功', '2026-02-09 11:16:00');
INSERT INTO `sys_logininfor` VALUES (2020788793909899265, 'admin', '122.97.172.241', '中国|江苏省|南京市|联通', 'Chrome', 'OSX', '1', '退出成功', '2026-02-09 11:16:08');
INSERT INTO `sys_logininfor` VALUES (2020789029021609985, 'admin', '122.97.172.241', '中国|江苏省|南京市|联通', 'Chrome', 'OSX', '1', '登录成功', '2026-02-09 11:17:04');
INSERT INTO `sys_logininfor` VALUES (2020789055017906178, 'admin', '122.97.172.241', '中国|江苏省|南京市|联通', 'Chrome', 'OSX', '1', '退出成功', '2026-02-09 11:17:10');
INSERT INTO `sys_logininfor` VALUES (2020789091080531969, 'admin', '122.97.172.241', '中国|江苏省|南京市|联通', 'Chrome', 'OSX', '1', '登录成功', '2026-02-09 11:17:18');
INSERT INTO `sys_logininfor` VALUES (2020789119425638402, 'admin', '122.97.172.241', '中国|江苏省|南京市|联通', 'Chrome', 'OSX', '1', '退出成功', '2026-02-09 11:17:25');
INSERT INTO `sys_logininfor` VALUES (2020790583778799618, 'admin', '122.97.172.241', '中国|江苏省|南京市|联通', 'Chrome', 'OSX', '0', '验证码错误', '2026-02-09 11:23:14');
INSERT INTO `sys_logininfor` VALUES (2020790599960424449, 'admin', '122.97.172.241', '中国|江苏省|南京市|联通', 'Chrome', 'OSX', '1', '登录成功', '2026-02-09 11:23:18');
INSERT INTO `sys_logininfor` VALUES (2020790802142654466, 'admin', '122.97.172.241', '中国|江苏省|南京市|联通', 'Chrome', 'OSX', '1', '退出成功', '2026-02-09 11:24:06');
INSERT INTO `sys_logininfor` VALUES (2020793449784471553, 'admin', '122.97.172.241', '中国|江苏省|南京市|联通', 'Chrome', 'OSX', '1', '登录成功', '2026-02-09 11:34:38');
INSERT INTO `sys_logininfor` VALUES (2020804615596339202, 'admin', '122.97.172.241', '中国|江苏省|南京市|联通', 'Chrome', 'OSX', '1', '退出成功', '2026-02-09 12:19:00');
INSERT INTO `sys_logininfor` VALUES (2020804649347903490, 'admin', '122.97.172.241', '中国|江苏省|南京市|联通', 'Chrome', 'OSX', '1', '登录成功', '2026-02-09 12:19:08');
INSERT INTO `sys_logininfor` VALUES (2020804922590031874, 'admin', '122.97.172.241', '中国|江苏省|南京市|联通', 'Chrome', 'OSX', '1', '退出成功', '2026-02-09 12:20:13');
INSERT INTO `sys_logininfor` VALUES (2020804977208258562, 'admin', '122.97.172.241', '中国|江苏省|南京市|联通', 'Chrome', 'OSX', '1', '登录成功', '2026-02-09 12:20:26');
INSERT INTO `sys_logininfor` VALUES (2020838113690447874, 'yislo', '41.77.221.201', '刚果金|Kinshasa|橘子电信', 'Chrome', 'Windows 10 or Windows Server 2016', '1', '登录成功', '2026-02-09 14:32:06');
INSERT INTO `sys_logininfor` VALUES (2020841246902644737, 'yislo', '41.77.221.201', '刚果金|Kinshasa|橘子电信', 'Chrome', 'Windows 10 or Windows Server 2016', '1', '退出成功', '2026-02-09 14:44:33');
INSERT INTO `sys_logininfor` VALUES (2020842745892368385, 'admin', '41.77.221.201', '刚果金|Kinshasa|橘子电信', 'Chrome', 'Windows 10 or Windows Server 2016', '1', '登录成功', '2026-02-09 14:50:31');
INSERT INTO `sys_logininfor` VALUES (2020844382526566401, 'admin', '122.97.172.241', '中国|江苏省|南京市|联通', 'Chrome', 'OSX', '1', '退出成功', '2026-02-09 14:57:01');
INSERT INTO `sys_logininfor` VALUES (2020844452458196994, 'admin', '122.97.172.241', '中国|江苏省|南京市|联通', 'Chrome', 'OSX', '1', '登录成功', '2026-02-09 14:57:18');
INSERT INTO `sys_logininfor` VALUES (2020844604715626498, 'admin', '41.77.221.201', '刚果金|Kinshasa|橘子电信', 'Chrome', 'Windows 10 or Windows Server 2016', '1', '退出成功', '2026-02-09 14:57:54');
INSERT INTO `sys_logininfor` VALUES (2020844659673591809, 'admin', '122.97.172.241', '中国|江苏省|南京市|联通', 'Chrome', 'OSX', '1', '退出成功', '2026-02-09 14:58:07');
INSERT INTO `sys_logininfor` VALUES (2020844750471884801, 'admin', '122.97.172.241', '中国|江苏省|南京市|联通', 'Chrome', 'OSX', '1', '登录成功', '2026-02-09 14:58:29');
INSERT INTO `sys_logininfor` VALUES (2020844757606395905, 'admin', '41.77.221.201', '刚果金|Kinshasa|橘子电信', 'Chrome', 'Windows 10 or Windows Server 2016', '1', '登录成功', '2026-02-09 14:58:30');
INSERT INTO `sys_logininfor` VALUES (2020844819539488769, 'admin', '41.77.221.201', '刚果金|Kinshasa|橘子电信', 'Chrome', 'Windows 10 or Windows Server 2016', '1', '退出成功', '2026-02-09 14:58:45');
INSERT INTO `sys_logininfor` VALUES (2020845185932914690, 'admin', '41.77.221.201', '刚果金|Kinshasa|橘子电信', 'Chrome', 'Windows 10 or Windows Server 2016', '1', '登录成功', '2026-02-09 15:00:12');
INSERT INTO `sys_logininfor` VALUES (2020870534116864002, 'admin', '180.109.42.5', '中国|江苏省|南京市|电信', 'Chrome', 'Windows 10 or Windows Server 2016', '1', '登录成功', '2026-02-09 16:40:56');
INSERT INTO `sys_logininfor` VALUES (2020896050622427137, 'admin', '180.109.42.5', '中国|江苏省|南京市|电信', 'Chrome', 'Windows 10 or Windows Server 2016', '1', '退出成功', '2026-02-09 18:22:20');
INSERT INTO `sys_logininfor` VALUES (2020896096373895169, 'admin', '180.109.42.5', '中国|江苏省|南京市|电信', 'Chrome', 'Windows 10 or Windows Server 2016', '1', '登录成功', '2026-02-09 18:22:30');
INSERT INTO `sys_logininfor` VALUES (2021119290838020098, 'admin', '169.239.158.70', '刚果金|橘子电信', 'Chrome', 'Windows 10 or Windows Server 2016', '1', '登录成功', '2026-02-10 09:09:24');
INSERT INTO `sys_logininfor` VALUES (2021220223706669057, 'admin', '192.168.29.168', '内网IP', 'Chrome', 'Windows 10 or Windows Server 2016', '0', '验证码已失效', '2026-02-10 15:50:28');
INSERT INTO `sys_logininfor` VALUES (2021220630323494914, 'admin', '192.168.29.168', '内网IP', 'Chrome', 'Windows 10 or Windows Server 2016', '1', '登录成功', '2026-02-10 15:52:05');
INSERT INTO `sys_logininfor` VALUES (2022006766104924161, 'admin', '192.168.29.168', '内网IP', 'Chrome', 'Windows 10 or Windows Server 2016', '1', '登录成功', '2026-02-12 19:55:55');
INSERT INTO `sys_logininfor` VALUES (2022701357585620994, 'admin', '41.77.221.227', '刚果金|Kinshasa|橘子电信', 'Chrome', 'Windows 10 or Windows Server 2016', '1', '登录成功', '2026-02-14 17:55:58');
INSERT INTO `sys_logininfor` VALUES (2022701506617630722, 'admin', '41.77.221.227', '刚果金|Kinshasa|橘子电信', 'Chrome', 'Windows 10 or Windows Server 2016', '1', '退出成功', '2026-02-14 17:56:34');
INSERT INTO `sys_logininfor` VALUES (2022701522853781505, 'admin', '41.77.221.227', '刚果金|Kinshasa|橘子电信', 'Chrome', 'Windows 10 or Windows Server 2016', '1', '登录成功', '2026-02-14 17:56:38');
INSERT INTO `sys_logininfor` VALUES (2023360559362564097, 'admin', '41.77.221.237', '刚果金|Kinshasa|橘子电信', 'Chrome', 'Windows 10 or Windows Server 2016', '1', '登录成功', '2026-02-16 13:35:24');
INSERT INTO `sys_logininfor` VALUES (2023363355457589250, 'admin', '41.77.221.237', '刚果金|Kinshasa|橘子电信', 'Chrome', 'Windows 10 or Windows Server 2016', '1', '退出成功', '2026-02-16 13:46:31');
INSERT INTO `sys_logininfor` VALUES (2023363380761825281, 'admin', '41.77.221.237', '刚果金|Kinshasa|橘子电信', 'Chrome', 'Windows 10 or Windows Server 2016', '1', '登录成功', '2026-02-16 13:46:37');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `sort` int NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `query_param` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '路由参数',
  `is_frame` int NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '显示状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '菜单权限表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 110, 'system', NULL, '', 0, 0, 'M', '1', '1', '', 'system', 'admin', '2024-06-13 16:06:26', 'admin', '2024-08-20 13:45:48', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 120, 'monitor', NULL, '', 0, 0, 'M', '1', '1', '', 'monitor', 'admin', '2024-06-13 16:06:26', 'admin', '2024-08-20 13:45:57', '系统监控目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', '', 0, 0, 'C', '1', '1', 'system:user:list', 'user', 'admin', '2024-06-13 16:06:26', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', '', 0, 0, 'C', '1', '1', 'system:role:list', 'peoples', 'admin', '2024-06-13 16:06:26', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 0, 0, 'C', '1', '1', 'system:menu:list', 'tree-table', 'admin', '2024-06-13 16:06:26', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 0, 0, 'C', '1', '1', 'system:dept:list', 'tree', 'admin', '2024-06-13 16:06:26', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 0, 0, 'C', '1', '1', 'system:post:list', 'post', 'admin', '2024-06-13 16:06:26', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 0, 0, 'C', '1', '1', 'system:dict:list', 'dict', 'admin', '2024-06-13 16:06:26', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', '', 0, 0, 'C', '1', '1', 'system:config:list', 'edit', 'admin', '2024-06-13 16:06:26', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 0, 0, 'C', '1', '1', 'system:notice:list', 'message', 'admin', '2024-06-13 16:06:26', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 0, 140, 'log', '', '', 0, 0, 'M', '1', '1', '', 'log', 'admin', '2024-06-13 16:06:27', 'admin', '2024-08-20 13:46:16', '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 0, 0, 'C', '1', '1', 'monitor:online:list', 'online', 'admin', '2024-06-13 16:06:27', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (112, '缓存列表', 2, 6, 'cacheList', 'monitor/cache/list', '', 0, 0, 'C', '1', '1', 'monitor:cache:list', 'redis-list', 'admin', '2024-06-13 16:06:27', '', NULL, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', '', 0, 0, 'C', '1', '1', 'monitor:cache:list', 'redis', 'admin', '2024-06-13 16:06:27', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 0, 130, 'gen', 'tool/gen/index', '', 0, 0, 'C', '1', '1', 'tool:gen:list', 'code', 'admin', '2024-06-13 16:06:27', 'admin', '2024-08-20 13:46:06', '代码生成菜单');
INSERT INTO `sys_menu` VALUES (118, '文件管理', 1, 10, 'oss', 'system/oss/index', '', 0, 0, 'C', '1', '1', 'system:oss:list', 'upload', 'admin', '2024-06-13 16:06:27', '', NULL, '文件管理菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', '', 0, 0, 'C', '1', '1', 'monitor:operlog:list', 'form', 'admin', '2024-06-13 16:06:27', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', '', 0, 0, 'C', '1', '1', 'monitor:logininfor:list', 'logininfor', 'admin', '2024-06-13 16:06:27', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1001, '用户查询', 100, 1, '', '', '', 0, 0, 'F', '1', '1', 'system:user:query', '#', 'admin', '2024-06-13 16:06:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户新增', 100, 2, '', '', '', 0, 0, 'F', '1', '1', 'system:user:add', '#', 'admin', '2024-06-13 16:06:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户修改', 100, 3, '', '', '', 0, 0, 'F', '1', '1', 'system:user:edit', '#', 'admin', '2024-06-13 16:06:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户删除', 100, 4, '', '', '', 0, 0, 'F', '1', '1', 'system:user:remove', '#', 'admin', '2024-06-13 16:06:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导出', 100, 5, '', '', '', 0, 0, 'F', '1', '1', 'system:user:export', '#', 'admin', '2024-06-13 16:06:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '用户导入', 100, 6, '', '', '', 0, 0, 'F', '1', '1', 'system:user:import', '#', 'admin', '2024-06-13 16:06:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '重置密码', 100, 7, '', '', '', 0, 0, 'F', '1', '1', 'system:user:resetPwd', '#', 'admin', '2024-06-13 16:06:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色查询', 101, 1, '', '', '', 0, 0, 'F', '1', '1', 'system:role:query', '#', 'admin', '2024-06-13 16:06:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色新增', 101, 2, '', '', '', 0, 0, 'F', '1', '1', 'system:role:add', '#', 'admin', '2024-06-13 16:06:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色修改', 101, 3, '', '', '', 0, 0, 'F', '1', '1', 'system:role:edit', '#', 'admin', '2024-06-13 16:06:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色删除', 101, 4, '', '', '', 0, 0, 'F', '1', '1', 'system:role:remove', '#', 'admin', '2024-06-13 16:06:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '角色导出', 101, 5, '', '', '', 0, 0, 'F', '1', '1', 'system:role:export', '#', 'admin', '2024-06-13 16:06:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单查询', 102, 1, '', '', '', 0, 0, 'F', '1', '1', 'system:menu:query', '#', 'admin', '2024-06-13 16:06:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单新增', 102, 2, '', '', '', 0, 0, 'F', '1', '1', 'system:menu:add', '#', 'admin', '2024-06-13 16:06:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单修改', 102, 3, '', '', '', 0, 0, 'F', '1', '1', 'system:menu:edit', '#', 'admin', '2024-06-13 16:06:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '菜单删除', 102, 4, '', '', '', 0, 0, 'F', '1', '1', 'system:menu:remove', '#', 'admin', '2024-06-13 16:06:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门查询', 103, 1, '', '', '', 0, 0, 'F', '1', '1', 'system:dept:query', '#', 'admin', '2024-06-13 16:06:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门新增', 103, 2, '', '', '', 0, 0, 'F', '1', '1', 'system:dept:add', '#', 'admin', '2024-06-13 16:06:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门修改', 103, 3, '', '', '', 0, 0, 'F', '1', '1', 'system:dept:edit', '#', 'admin', '2024-06-13 16:06:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '部门删除', 103, 4, '', '', '', 0, 0, 'F', '1', '1', 'system:dept:remove', '#', 'admin', '2024-06-13 16:06:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位查询', 104, 1, '', '', '', 0, 0, 'F', '1', '1', 'system:post:query', '#', 'admin', '2024-06-13 16:06:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位新增', 104, 2, '', '', '', 0, 0, 'F', '1', '1', 'system:post:add', '#', 'admin', '2024-06-13 16:06:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位修改', 104, 3, '', '', '', 0, 0, 'F', '1', '1', 'system:post:edit', '#', 'admin', '2024-06-13 16:06:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位删除', 104, 4, '', '', '', 0, 0, 'F', '1', '1', 'system:post:remove', '#', 'admin', '2024-06-13 16:06:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '岗位导出', 104, 5, '', '', '', 0, 0, 'F', '1', '1', 'system:post:export', '#', 'admin', '2024-06-13 16:06:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典查询', 105, 1, '#', '', '', 0, 0, 'F', '1', '1', 'system:dict:query', '#', 'admin', '2024-06-13 16:06:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典新增', 105, 2, '#', '', '', 0, 0, 'F', '1', '1', 'system:dict:add', '#', 'admin', '2024-06-13 16:06:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典修改', 105, 3, '#', '', '', 0, 0, 'F', '1', '1', 'system:dict:edit', '#', 'admin', '2024-06-13 16:06:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典删除', 105, 4, '#', '', '', 0, 0, 'F', '1', '1', 'system:dict:remove', '#', 'admin', '2024-06-13 16:06:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '字典导出', 105, 5, '#', '', '', 0, 0, 'F', '1', '1', 'system:dict:export', '#', 'admin', '2024-06-13 16:06:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数查询', 106, 1, '#', '', '', 0, 0, 'F', '1', '1', 'system:config:query', '#', 'admin', '2024-06-13 16:06:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数新增', 106, 2, '#', '', '', 0, 0, 'F', '1', '1', 'system:config:add', '#', 'admin', '2024-06-13 16:06:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数修改', 106, 3, '#', '', '', 0, 0, 'F', '1', '1', 'system:config:edit', '#', 'admin', '2024-06-13 16:06:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数删除', 106, 4, '#', '', '', 0, 0, 'F', '1', '1', 'system:config:remove', '#', 'admin', '2024-06-13 16:06:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '参数导出', 106, 5, '#', '', '', 0, 0, 'F', '1', '1', 'system:config:export', '#', 'admin', '2024-06-13 16:06:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告查询', 107, 1, '#', '', '', 0, 0, 'F', '1', '1', 'system:notice:query', '#', 'admin', '2024-06-13 16:06:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告新增', 107, 2, '#', '', '', 0, 0, 'F', '1', '1', 'system:notice:add', '#', 'admin', '2024-06-13 16:06:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告修改', 107, 3, '#', '', '', 0, 0, 'F', '1', '1', 'system:notice:edit', '#', 'admin', '2024-06-13 16:06:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '公告删除', 107, 4, '#', '', '', 0, 0, 'F', '1', '1', 'system:notice:remove', '#', 'admin', '2024-06-13 16:06:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作查询', 500, 1, '#', '', '', 0, 0, 'F', '1', '1', 'monitor:operlog:query', '#', 'admin', '2024-06-13 16:06:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '操作删除', 500, 2, '#', '', '', 0, 0, 'F', '1', '1', 'monitor:operlog:remove', '#', 'admin', '2024-06-13 16:06:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', '', 0, 0, 'F', '1', '1', 'monitor:operlog:export', '#', 'admin', '2024-06-13 16:06:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', '', 0, 0, 'F', '1', '1', 'monitor:logininfor:query', '#', 'admin', '2024-06-13 16:06:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', '', 0, 0, 'F', '1', '1', 'monitor:logininfor:remove', '#', 'admin', '2024-06-13 16:06:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', '', 0, 0, 'F', '1', '1', 'monitor:logininfor:export', '#', 'admin', '2024-06-13 16:06:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', '', 0, 0, 'F', '1', '1', 'monitor:online:query', '#', 'admin', '2024-06-13 16:06:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', '', 0, 0, 'F', '1', '1', 'monitor:online:batchLogout', '#', 'admin', '2024-06-13 16:06:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', '', 0, 0, 'F', '1', '1', 'monitor:online:forceLogout', '#', 'admin', '2024-06-13 16:06:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '账户解锁', 501, 4, '#', '', '', 0, 0, 'F', '1', '1', 'monitor:logininfor:unlock', '#', 'admin', '2024-06-13 16:06:29', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 115, 1, '#', '', '', 0, 0, 'F', '1', '1', 'tool:gen:query', '#', 'admin', '2024-06-13 16:06:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 115, 2, '#', '', '', 0, 0, 'F', '1', '1', 'tool:gen:edit', '#', 'admin', '2024-06-13 16:06:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 115, 3, '#', '', '', 0, 0, 'F', '1', '1', 'tool:gen:remove', '#', 'admin', '2024-06-13 16:06:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 115, 2, '#', '', '', 0, 0, 'F', '1', '1', 'tool:gen:import', '#', 'admin', '2024-06-13 16:06:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 115, 4, '#', '', '', 0, 0, 'F', '1', '1', 'tool:gen:preview', '#', 'admin', '2024-06-13 16:06:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 115, 5, '#', '', '', 0, 0, 'F', '1', '1', 'tool:gen:code', '#', 'admin', '2024-06-13 16:06:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1600, '文件查询', 118, 1, '#', '', '', 0, 0, 'F', '1', '1', 'system:oss:query', '#', 'admin', '2024-06-13 16:06:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1601, '文件上传', 118, 2, '#', '', '', 0, 0, 'F', '1', '1', 'system:oss:upload', '#', 'admin', '2024-06-13 16:06:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1602, '文件下载', 118, 3, '#', '', '', 0, 0, 'F', '1', '1', 'system:oss:download', '#', 'admin', '2024-06-13 16:06:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1603, '文件删除', 118, 4, '#', '', '', 0, 0, 'F', '1', '1', 'system:oss:remove', '#', 'admin', '2024-06-13 16:06:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1604, '配置添加', 118, 5, '#', '', '', 0, 0, 'F', '1', '1', 'system:oss:add', '#', 'admin', '2024-06-13 16:06:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1605, '配置编辑', 118, 6, '#', '', '', 0, 0, 'F', '1', '1', 'system:oss:edit', '#', 'admin', '2024-06-13 16:06:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1808758090157985794, '基础资料', 0, 100, 'basic', NULL, NULL, 0, 0, 'M', '1', '1', NULL, 'excel', 'admin', '2024-07-04 15:01:48', 'admin', '2024-08-20 13:45:39', '');
INSERT INTO `sys_menu` VALUES (1809059968309743618, '往来单位', 1808758090157985794, 1, 'merchant', 'wms/basic/merchant/index', NULL, 0, 0, 'C', '1', '1', 'wms:merchant:list', 'documentation', 'admin', '2024-07-05 11:58:12', 'admin', '2024-08-27 16:41:53', '往来单位菜单');
INSERT INTO `sys_menu` VALUES (1809059968309743619, '往来单位查询', 1809059968309743618, 1, '#', '', NULL, 0, 0, 'F', '1', '1', 'wms:merchant:list', '#', 'admin', '2024-07-05 11:58:12', 'admin', '2024-08-30 10:43:54', '');
INSERT INTO `sys_menu` VALUES (1809059968309743621, '往来单位修改', 1809059968309743618, 3, '#', '', NULL, 0, 0, 'F', '1', '1', 'wms:merchant:edit', '#', 'admin', '2024-07-05 11:58:12', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1813458070128599041, '仓库管理', 1808758090157985794, 2, 'warehouse', 'wms/basic/warehouse/index', NULL, 0, 0, 'C', '1', '1', 'wms:warehouse:list', 'documentation', 'admin', '2024-07-17 14:17:51', 'wms2_admin', '2024-09-10 13:38:53', '');
INSERT INTO `sys_menu` VALUES (1813820131794837506, '商品管理', 1808758090157985794, 4, 'item', 'wms/basic/item/index', NULL, 0, 0, 'C', '1', '1', 'wms:item:list', 'documentation', 'admin', '2024-07-18 14:16:33', 'admin', '2024-08-27 16:43:06', '');
INSERT INTO `sys_menu` VALUES (1815207165755183105, '编辑入库单', 0, 1000, 'receiptOrderEdit', 'wms/order/receipt/edit', NULL, 0, 0, 'C', '0', '1', 'wms:receipt:edit', '#', 'admin', '2024-07-22 10:08:08', 'admin', '2024-08-27 16:43:28', '');
INSERT INTO `sys_menu` VALUES (1818123963605549057, '品牌管理', 1808758090157985794, 3, 'itemBrand', 'wms/basic/itemBrand/index', NULL, 0, 0, 'C', '1', '1', 'wms:itemBrand:list', 'documentation', 'admin', '2024-07-30 11:18:27', 'admin', '2024-08-27 16:42:55', '');
INSERT INTO `sys_menu` VALUES (1818466281474822145, '入库', 0, 20, 'receiptOrder', 'wms/order/receipt/index', NULL, 0, 0, 'C', '1', '1', 'wms:receipt:all', 'exit-fullscreen', 'admin', '2024-07-31 09:58:42', 'admin', '2024-08-30 08:58:25', '');
INSERT INTO `sys_menu` VALUES (1818854933803638785, '出库', 0, 30, 'shipmentOrder', 'wms/order/shipment/index', NULL, 0, 0, 'C', '1', '1', 'wms:shipment:all', 'fullscreen', 'admin', '2024-08-01 11:43:04', 'admin', '2024-08-30 08:58:35', '');
INSERT INTO `sys_menu` VALUES (1818855673632727042, '编辑出库单', 0, 1000, 'shipmentOrderEdit', 'wms/order/shipment/edit', NULL, 0, 0, 'C', '0', '1', 'wms:shipment:edit', '#', 'admin', '2024-08-01 11:46:00', 'admin', '2024-08-27 16:43:37', '');
INSERT INTO `sys_menu` VALUES (1820729144067321858, '库存统计', 0, 0, 'inventory', 'wms/inventory/statistic', NULL, 0, 0, 'C', '1', '1', 'wms:inventory:all', 'chart', 'admin', '2024-08-06 15:50:30', 'admin', '2024-08-30 08:57:48', '');
INSERT INTO `sys_menu` VALUES (1821075355068559361, '库存记录', 0, 3, 'inventoryHistory', 'wms/inventory/history', NULL, 0, 0, 'C', '1', '1', 'wms:inventoryHistory:all', 'list', 'admin', '2024-08-07 14:46:13', 'admin', '2024-08-30 08:58:13', '');
INSERT INTO `sys_menu` VALUES (1822820194307051521, '移库', 0, 40, 'movementOrder', 'wms/order/movement/index', NULL, 0, 0, 'C', '1', '1', 'wms:movement:all', 'drag', 'admin', '2024-08-12 10:19:35', 'admin', '2024-08-30 08:58:44', '');
INSERT INTO `sys_menu` VALUES (1822862323595145218, '编辑移库单', 0, 1000, 'movementOrderEdit', 'wms/order/movement/edit', NULL, 0, 0, 'C', '0', '1', 'wms:movement:edit', '#', 'admin', '2024-08-12 13:07:00', 'admin', '2024-08-27 16:43:50', '');
INSERT INTO `sys_menu` VALUES (1823187248797270018, '盘库', 0, 50, 'checkOrder', 'wms/order/check/index', NULL, 0, 0, 'C', '1', '1', 'wms:check:all', 'example', 'admin', '2024-08-13 10:38:08', 'admin', '2024-08-30 08:58:57', '');
INSERT INTO `sys_menu` VALUES (1823190638784757762, '编辑盘库单', 0, 1000, 'checkOrderEdit', 'wms/order/check/edit', NULL, 0, 0, 'C', '0', '1', 'wms:check:edit', '#', 'admin', '2024-08-13 10:51:36', 'admin', '2024-08-27 16:43:44', '');
INSERT INTO `sys_menu` VALUES (1829349433573822466, '仓库查询', 1813458070128599041, 1, '', NULL, NULL, 0, 0, 'F', '1', '1', 'wms:warehouse:list', '#', 'admin', '2024-08-30 10:44:27', 'wms2_admin', '2024-09-10 13:39:02', '');
INSERT INTO `sys_menu` VALUES (1829350022131142658, '仓库编辑', 1813458070128599041, 2, '', NULL, NULL, 0, 0, 'F', '1', '1', 'wms:warehouse:edit', '#', 'admin', '2024-08-30 10:46:48', 'wms2_admin', '2024-09-10 13:39:10', '');
INSERT INTO `sys_menu` VALUES (1829350164603260929, '品牌查询', 1818123963605549057, 1, '', NULL, NULL, 0, 0, 'F', '1', '1', 'wms:itemBrand:list', '#', 'admin', '2024-08-30 10:47:22', 'admin', '2024-08-30 10:47:22', '');
INSERT INTO `sys_menu` VALUES (1829350944311791617, '品牌编辑', 1818123963605549057, 2, '', NULL, NULL, 0, 0, 'F', '1', '1', 'wms:itemBrand:edit', '#', 'admin', '2024-08-30 10:50:27', 'admin', '2024-08-30 10:50:27', '');
INSERT INTO `sys_menu` VALUES (1829351081448755202, '商品查询', 1813820131794837506, 1, '', NULL, NULL, 0, 0, 'F', '1', '1', 'wms:item:list', '#', 'admin', '2024-08-30 10:51:00', 'admin', '2024-08-30 10:51:00', '');
INSERT INTO `sys_menu` VALUES (1829351166857367553, '商品编辑', 1813820131794837506, 2, '', NULL, NULL, 0, 0, 'F', '1', '1', 'wms:item:edit', '#', 'admin', '2024-08-30 10:51:21', 'admin', '2024-08-30 10:51:21', '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` bigint NOT NULL COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE