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

 Date: 14/02/2026 18:21:54
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
INSERT INTO `gen_table` VALUES (2020845814713610242, 'sys_user_role', '用户和角色关联表', NULL, NULL, 'UserRole', 'crud', 'com.divine.wms', 'wms', 'userRole', '用户和角色关联', 'zcc', '0', '/', NULL, 'admin', '2026-02-05 16:59:47', NULL, '2026-02-05 16:59:47', NULL);
INSERT INTO `gen_table` VALUES (2020845814835245058, 'wms_check_order', '库存盘点单据', NULL, NULL, 'CheckOrder', 'crud', 'com.divine.wms', 'wms', 'checkOrder', '库存盘点单据', 'zcc', '0', '/', NULL, 'admin', '2026-02-05 16:59:47', NULL, '2026-02-05 16:59:47', NULL);
INSERT INTO `gen_table` VALUES (2020845814944296961, 'wms_check_order_detail', '库存盘点单据详情', NULL, NULL, 'CheckOrderDetail', 'crud', 'com.divine.wms', 'wms', 'checkOrderDetail', '库存盘点单据详情', 'zcc', '0', '/', NULL, 'admin', '2026-02-05 16:59:47', NULL, '2026-02-05 16:59:47', NULL);
INSERT INTO `gen_table` VALUES (2020845815049154561, 'wms_inventory', '库存表', NULL, NULL, 'Inventory', 'crud', 'com.divine.wms', 'wms', 'inventory', '库存', 'zcc', '0', '/', NULL, 'admin', '2026-02-05 16:59:47', NULL, '2026-02-05 16:59:47', NULL);
INSERT INTO `gen_table` VALUES (2020845815128846338, 'wms_inventory_history', '库存记录', NULL, NULL, 'InventoryHistory', 'crud', 'com.divine.wms', 'wms', 'inventoryHistory', '库存记录', 'zcc', '0', '/', NULL, 'admin', '2026-02-05 16:59:47', NULL, '2026-02-05 16:59:47', NULL);
INSERT INTO `gen_table` VALUES (2020845815237898242, 'wms_item', '物料', NULL, NULL, 'Item', 'crud', 'com.divine.wms', 'wms', 'item', '物料', 'zcc', '0', '/', NULL, 'admin', '2026-02-05 16:59:47', NULL, '2026-02-05 16:59:47', NULL);
INSERT INTO `gen_table` VALUES (2020845815325978626, 'wms_item_brand', '商品品牌表', NULL, NULL, 'ItemBrand', 'crud', 'com.divine.wms', 'wms', 'itemBrand', '商品品牌', 'zcc', '0', '/', NULL, 'admin', '2026-02-05 16:59:47', NULL, '2026-02-05 16:59:47', NULL);
INSERT INTO `gen_table` VALUES (2020845815401476097, 'wms_shipment_order', '出库单', NULL, NULL, 'ShipmentOrder', 'crud', 'com.divine.wms', 'wms', 'shipmentOrder', '出库单', 'zcc', '0', '/', NULL, 'admin', '2026-02-05 16:59:48', NULL, '2026-02-05 16:59:48', NULL);
INSERT INTO `gen_table` VALUES (2020845815497945089, 'wms_shipment_order_detail', '出库单详情', NULL, NULL, 'ShipmentOrderDetail', 'crud', 'com.divine.wms', 'wms', 'shipmentOrderDetail', '出库单详情', 'zcc', '0', '/', NULL, 'admin', '2026-02-05 16:59:48', NULL, '2026-02-05 16:59:48', NULL);
INSERT INTO `gen_table` VALUES (2020845815623774209, 'wms_warehouse', '仓库', NULL, NULL, 'Warehouse', 'crud', 'com.divine.wms', 'wms', 'warehouse', '仓库', 'zcc', '0', '/', NULL, 'admin', '2026-02-05 16:59:48', NULL, '2026-02-05 16:59:48', NULL);
INSERT INTO `gen_table` VALUES (2021140282985607170, 'wms_warehouse_shelf', '', NULL, NULL, 'WarehouseShelf', 'crud', 'com.divine.wms', 'wms', 'warehouseShelf', '', 'zcc', '0', '/', NULL, 'admin', '2026-02-10 16:22:02', NULL, '2026-02-10 16:22:02', NULL);
INSERT INTO `gen_table` VALUES (2021140289134456834, 'wms_warehouse_shelf', '', NULL, NULL, 'WarehouseShelf', 'crud', 'com.divine.wms', 'wms', 'warehouseShelf', '', 'zcc', '0', '/', NULL, 'admin', '2026-02-10 16:22:02', NULL, '2026-02-10 16:22:02', NULL);

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
INSERT INTO `gen_table_column` VALUES (2020845814784913410, 2020845814713610242, 'user_id', '用户ID', 'bigint', 'Long', 'userId', '1', '0', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845814784913411, 2020845814713610242, 'role_id', '角色ID', 'bigint', 'Long', 'roleId', '1', '0', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 2, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845814856216578, 2020845814835245058, 'id', '', 'bigint', 'Long', 'id', '1', '1', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845814856216579, 2020845814835245058, 'order_no', '盘点单号', 'varchar(22)', 'String', 'orderNo', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845814856216580, 2020845814835245058, 'order_status', '库存盘点单状态 -1：作废 0：未盘库 1：已盘库', 'tinyint', 'Long', 'orderStatus', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', '', 3, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845814856216581, 2020845814835245058, 'total_quantity', '盈亏数', 'decimal(20,2)', 'BigDecimal', 'totalQuantity', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845814856216582, 2020845814835245058, 'total_amount', '', 'decimal(10,2)', 'BigDecimal', 'totalAmount', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845814856216583, 2020845814835245058, 'warehouse_id', '所属仓库', 'bigint', 'Long', 'warehouseId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845814856216584, 2020845814835245058, 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 7, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845814856216585, 2020845814835245058, 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845814856216586, 2020845814835245058, 'create_time', '创建时间', 'datetime(3)', 'Date', 'createTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845814856216587, 2020845814835245058, 'update_by', '修改人', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845814856216588, 2020845814835245058, 'update_time', '修改时间', 'datetime(3)', 'Date', 'updateTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845814969462786, 2020845814944296961, 'id', '', 'bigint', 'Long', 'id', '1', '1', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845814969462787, 2020845814944296961, 'order_id', '盘点单id', 'bigint', 'Long', 'orderId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845814969462788, 2020845814944296961, 'sku_id', '规格id', 'bigint', 'Long', 'skuId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845814969462789, 2020845814944296961, 'quantity', '库存数量', 'decimal(20,2)', 'BigDecimal', 'quantity', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845814969462790, 2020845814944296961, 'amount', '金额', 'decimal(10,2)', 'BigDecimal', 'amount', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845814969462791, 2020845814944296961, 'check_quantity', '盘点数量', 'decimal(20,2)', 'BigDecimal', 'checkQuantity', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845814969462792, 2020845814944296961, 'warehouse_id', '所属仓库', 'bigint', 'Long', 'warehouseId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845814969462793, 2020845814944296961, 'inventory_id', '库存id', 'bigint', 'Long', 'inventoryId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845814969462794, 2020845814944296961, 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 9, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845814969462795, 2020845814944296961, 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845814969462796, 2020845814944296961, 'create_time', '创建时间', 'datetime(3)', 'Date', 'createTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845814969462797, 2020845814944296961, 'update_by', '修改人', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 12, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845814969462798, 2020845814944296961, 'update_time', '修改时间', 'datetime(3)', 'Date', 'updateTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 13, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845815065931777, 2020845815049154561, 'id', '', 'bigint', 'Long', 'id', '1', '1', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845815065931778, 2020845815049154561, 'sku_id', '规格ID', 'bigint', 'Long', 'skuId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845815065931779, 2020845815049154561, 'warehouse_id', '所属仓库', 'bigint', 'Long', 'warehouseId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845815065931780, 2020845815049154561, 'quantity', '库存', 'decimal(20,2)', 'BigDecimal', 'quantity', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845815065931781, 2020845815049154561, 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 5, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845815065931782, 2020845815049154561, 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845815065931783, 2020845815049154561, 'create_time', '创建时间', 'datetime(3)', 'Date', 'createTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845815065931784, 2020845815049154561, 'update_by', '修改人', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845815065931785, 2020845815049154561, 'update_time', '修改时间', 'datetime(3)', 'Date', 'updateTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845815149817858, 2020845815128846338, 'id', '', 'bigint', 'Long', 'id', '1', '1', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845815149817859, 2020845815128846338, 'warehouse_id', '所属仓库', 'bigint', 'Long', 'warehouseId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845815149817860, 2020845815128846338, 'sku_id', '物料ID', 'bigint', 'Long', 'skuId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845815149817861, 2020845815128846338, 'quantity', '库存变化', 'decimal(20,2)', 'BigDecimal', 'quantity', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845815149817862, 2020845815128846338, 'before_quantity', '更新前数量', 'decimal(20,2)', 'BigDecimal', 'beforeQuantity', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845815149817863, 2020845815128846338, 'after_quantity', '更新后数量', 'decimal(20,2)', 'BigDecimal', 'afterQuantity', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845815149817864, 2020845815128846338, 'amount', '金额', 'decimal(10,2)', 'BigDecimal', 'amount', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845815149817865, 2020845815128846338, 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 8, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845815179177986, 2020845815128846338, 'order_id', '操作id（出库、入库、库存移动表单id）', 'bigint', 'Long', 'orderId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845815179177987, 2020845815128846338, 'order_no', '操作单号（入库、出库、移库、盘库单号）', 'varchar(64)', 'String', 'orderNo', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845815179177988, 2020845815128846338, 'order_type', '操作类型', 'int', 'Long', 'orderType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', 11, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845815179177989, 2020845815128846338, 'create_time', '创建时间', 'datetime(3)', 'Date', 'createTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2026-02-09 15:02:42', NULL, '2026-02-09 15:02:42');
INSERT INTO `gen_table_column` VALUES (2020845815258869761, 2020845815237898242, 'id', '', 'bigint', 'Long', 'id', '1', '1', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815258869762, 2020845815237898242, 'item_code', '编号', 'varchar(20)', 'String', 'itemCode', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815258869763, 2020845815237898242, 'item_name', '名称', 'varchar(60)', 'String', 'itemName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815258869764, 2020845815237898242, 'item_category', '分类', 'varchar(20)', 'String', 'itemCategory', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815258869765, 2020845815237898242, 'unit', '单位类别', 'varchar(20)', 'String', 'unit', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815258869766, 2020845815237898242, 'item_brand', '品牌', 'bigint', 'Long', 'itemBrand', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815258869767, 2020845815237898242, 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 7, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815258869768, 2020845815237898242, 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815258869769, 2020845815237898242, 'create_time', '创建时间', 'datetime(3)', 'Date', 'createTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815258869770, 2020845815237898242, 'update_by', '修改人', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815258869771, 2020845815237898242, 'update_time', '修改时间', 'datetime(3)', 'Date', 'updateTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815342755842, 2020845815325978626, 'id', '', 'bigint', 'Long', 'id', '1', '1', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815342755843, 2020845815325978626, 'brand_name', '品牌名称', 'varchar(30)', 'String', 'brandName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815342755844, 2020845815325978626, 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 3, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815342755845, 2020845815325978626, 'create_time', '创建时间', 'datetime(3)', 'Date', 'createTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 4, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815342755846, 2020845815325978626, 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 5, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815342755847, 2020845815325978626, 'update_time', '更新时间', 'datetime(3)', 'Date', 'updateTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815422447618, 2020845815401476097, 'id', '', 'bigint', 'Long', 'id', '1', '1', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815422447619, 2020845815401476097, 'order_no', '出库单号，系统自动生成', 'varchar(22)', 'String', 'orderNo', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815422447620, 2020845815401476097, 'opt_type', '出库类型', 'int', 'Long', 'optType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815422447621, 2020845815401476097, 'biz_order_no', '业务订单号', 'varchar(50)', 'String', 'bizOrderNo', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815422447622, 2020845815401476097, 'merchant_id', '客户', 'bigint', 'Long', 'merchantId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815422447623, 2020845815401476097, 'total_amount', '总金额', 'decimal(10,2)', 'BigDecimal', 'totalAmount', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815422447624, 2020845815401476097, 'total_quantity', '总数量', 'decimal(10,2)', 'BigDecimal', 'totalQuantity', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815422447625, 2020845815401476097, 'order_status', '出库单状态', 'tinyint', 'Long', 'orderStatus', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', '', 8, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815422447626, 2020845815401476097, 'warehouse_id', '仓库id', 'bigint', 'Long', 'warehouseId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815422447627, 2020845815401476097, 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 10, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815422447628, 2020845815401476097, 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815422447629, 2020845815401476097, 'create_time', '创建时间', 'datetime(3)', 'Date', 'createTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815422447630, 2020845815401476097, 'update_by', '修改人', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815422447631, 2020845815401476097, 'update_time', '修改时间', 'datetime(3)', 'Date', 'updateTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 14, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815539888129, 2020845815497945089, 'id', '', 'bigint', 'Long', 'id', '1', '1', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815539888130, 2020845815497945089, 'order_id', '出库单', 'bigint', 'Long', 'orderId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815539888131, 2020845815497945089, 'warehouse_id', '所属仓库', 'bigint', 'Long', 'warehouseId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815539888132, 2020845815497945089, 'sku_id', '规格id', 'bigint', 'Long', 'skuId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815539888133, 2020845815497945089, 'quantity', '数量', 'decimal(10,2)', 'BigDecimal', 'quantity', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815539888134, 2020845815497945089, 'amount', '金额', 'decimal(10,2)', 'BigDecimal', 'amount', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815539888135, 2020845815497945089, 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 7, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815539888136, 2020845815497945089, 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815539888137, 2020845815497945089, 'create_time', '创建时间', 'datetime(3)', 'Date', 'createTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815539888138, 2020845815497945089, 'update_by', '修改人', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 10, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815539888139, 2020845815497945089, 'update_time', '修改时间', 'datetime(3)', 'Date', 'updateTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 11, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815653134338, 2020845815623774209, 'id', '', 'bigint', 'Long', 'id', '1', '1', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815653134339, 2020845815623774209, 'warehouse_code', '编号', 'varchar(20)', 'String', 'warehouseCode', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815653134340, 2020845815623774209, 'warehouse_name', '名称', 'varchar(50)', 'String', 'warehouseName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815653134341, 2020845815623774209, 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', '1', '1', '1', '1', NULL, 'EQ', 'input', '', 4, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815653134342, 2020845815623774209, 'sort', '排序', 'bigint', 'Long', 'sort', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815653134343, 2020845815623774209, 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815653134344, 2020845815623774209, 'create_time', '创建时间', 'datetime(3)', 'Date', 'createTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815653134345, 2020845815623774209, 'update_by', '修改人', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 8, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2020845815653134346, 2020845815623774209, 'update_time', '修改时间', 'datetime(3)', 'Date', 'updateTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2026-02-09 15:02:43', NULL, '2026-02-09 15:02:43');
INSERT INTO `gen_table_column` VALUES (2021140283006578689, 2021140282985607170, 'id', 'id', 'bigint', 'Long', 'id', '1', '0', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2026-02-10 10:32:49', NULL, '2026-02-10 10:32:49');
INSERT INTO `gen_table_column` VALUES (2021140283006578690, 2021140282985607170, 'warehouseId', '仓库id', 'bigint', 'Long', 'warehouseId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2026-02-10 10:32:49', NULL, '2026-02-10 10:32:49');
INSERT INTO `gen_table_column` VALUES (2021140283006578691, 2021140282985607170, 'name', '货架名称', 'varchar(255)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2026-02-10 10:32:49', NULL, '2026-02-10 10:32:49');
INSERT INTO `gen_table_column` VALUES (2021140283006578692, 2021140282985607170, 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 4, 'admin', '2026-02-10 10:32:49', NULL, '2026-02-10 10:32:49');
INSERT INTO `gen_table_column` VALUES (2021140283006578693, 2021140282985607170, 'create_time', '创建时间', 'datetime(3)', 'Date', 'createTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2026-02-10 10:32:49', NULL, '2026-02-10 10:32:49');
INSERT INTO `gen_table_column` VALUES (2021140283006578694, 2021140282985607170, 'update_by', '修改人', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2026-02-10 10:32:49', NULL, '2026-02-10 10:32:49');
INSERT INTO `gen_table_column` VALUES (2021140283006578695, 2021140282985607170, 'update_time', '修改时间', 'datetime(3)', 'Date', 'updateTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2026-02-10 10:32:49', NULL, '2026-02-10 10:32:49');
INSERT INTO `gen_table_column` VALUES (2021140289151234050, 2021140289134456834, 'id', 'id', 'bigint', 'Long', 'id', '1', '0', '1', NULL, '1', '1', NULL, 'EQ', 'input', '', 1, 'admin', '2026-02-10 10:32:51', NULL, '2026-02-10 10:32:51');
INSERT INTO `gen_table_column` VALUES (2021140289155428354, 2021140289134456834, 'warehouseId', '仓库id', 'bigint', 'Long', 'warehouseId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2026-02-10 10:32:51', NULL, '2026-02-10 10:32:51');
INSERT INTO `gen_table_column` VALUES (2021140289155428355, 2021140289134456834, 'name', '货架名称', 'varchar(255)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2026-02-10 10:32:51', NULL, '2026-02-10 10:32:51');
INSERT INTO `gen_table_column` VALUES (2021140289155428356, 2021140289134456834, 'create_by', '创建人', 'varchar(64)', 'String', 'createBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 4, 'admin', '2026-02-10 10:32:51', NULL, '2026-02-10 10:32:51');
INSERT INTO `gen_table_column` VALUES (2021140289155428357, 2021140289134456834, 'create_time', '创建时间', 'datetime(3)', 'Date', 'createTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 5, 'admin', '2026-02-10 10:32:51', NULL, '2026-02-10 10:32:51');
INSERT INTO `gen_table_column` VALUES (2021140289155428358, 2021140289134456834, 'update_by', '修改人', 'varchar(64)', 'String', 'updateBy', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'input', '', 6, 'admin', '2026-02-10 10:32:51', NULL, '2026-02-10 10:32:51');
INSERT INTO `gen_table_column` VALUES (2021140289155428359, 2021140289134456834, 'update_time', '修改时间', 'datetime(3)', 'Date', 'updateTime', '0', '0', '0', NULL, NULL, NULL, NULL, 'EQ', 'datetime', '', 7, 'admin', '2026-02-10 10:32:51', NULL, '2026-02-10 10:32:51');

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '通知公告表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '1', 'admin', '2024-06-13 16:06:38', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '1', 'admin', '2024-06-13 16:06:38', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NOT NULL COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0异常 1正常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '操作日志记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (2020131907443335170, '参数管理', 2, 'com.divine.system.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/config', '120.243.204.5', '中国|安徽省|宣城市|移动', '{\"createBy\":null,\"createTime\":\"2024-06-13 16:06:37\",\"updateBy\":null,\"updateTime\":null,\"configId\":3,\"configName\":\"主框架页-侧边栏主题\",\"configKey\":\"sys.index.sideTheme\",\"configValue\":\"theme-dark\",\"configType\":\"Y\",\"remark\":\"深色主题theme-dark，浅色主题theme-light\"}', '{\"code\":200,\"msg\":\"操作成功\",\"detailMessage\":null,\"data\":null}', 1, '', '2026-02-07 15:45:54');
INSERT INTO `sys_oper_log` VALUES (2020131965718994945, '参数管理', 2, 'com.divine.system.controller.system.SysConfigController.edit()', 'PUT', 1, 'admin', '研发部门', '/system/config', '120.243.204.5', '中国|安徽省|宣城市|移动', '{\"createBy\":null,\"createTime\":\"2024-06-13 16:06:37\",\"updateBy\":null,\"updateTime\":null,\"configId\":3,\"configName\":\"主框架页-侧边栏主题\",\"configKey\":\"sys.index.sideTheme\",\"configValue\":\"theme-light\",\"configType\":\"Y\",\"remark\":\"深色主题theme-dark，浅色主题theme-light\"}', '{\"code\":200,\"msg\":\"操作成功\",\"detailMessage\":null,\"data\":null}', 1, '', '2026-02-07 15:46:08');
INSERT INTO `sys_oper_log` VALUES (2020845816152256513, '代码生成', 6, 'com.divine.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '41.77.221.201', '刚果金|Kinshasa|橘子电信', '\"wms_warehouse,wms_shipment_order_detail,wms_shipment_order,wms_item_brand,wms_check_order,wms_item,wms_inventory_history,wms_inventory,wms_check_order_detail,sys_user_role\"', '{\"code\":200,\"msg\":\"操作成功\",\"detailMessage\":null,\"data\":null}', 1, '', '2026-02-09 15:02:43');
INSERT INTO `sys_oper_log` VALUES (2021125396570238977, '入库单', 2, 'com.divine.warehouse.controller.ReceiptOrderController.doWarehousing()', 'POST', 1, 'admin', '研发部门', '/receiptOrder/warehousing', '169.239.158.70', '刚果金|橘子电信', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"id\":\"2021125396364718081\",\"orderNo\":\"RK02103097\",\"totalQuantity\":\"111\",\"totalAmount\":null,\"orderStatus\":1,\"remark\":null,\"details\":[{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"orderId\":null,\"id\":null,\"skuId\":\"1840282974696374273\",\"quantity\":\"111\",\"amount\":null,\"remark\":null,\"warehouseId\":\"1828364609002311682\",\"beforeQuantity\":\"3.00\",\"afterQuantity\":\"114.00\"}],\"optType\":2,\"bizOrderNo\":null,\"merchantId\":null,\"warehouseId\":\"1828364609002311682\"}', '{\"code\":200,\"msg\":\"操作成功\",\"detailMessage\":null,\"data\":null}', 1, '', '2026-02-10 09:33:40');
INSERT INTO `sys_oper_log` VALUES (2021130083579129858, '入库单', 2, 'com.divine.warehouse.controller.ReceiptOrderController.doWarehousing()', 'POST', 1, 'admin', '研发部门', '/receiptOrder/warehousing', '169.239.158.70', '刚果金|橘子电信', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"id\":\"2021130083507826689\",\"orderNo\":\"RK02107564\",\"totalQuantity\":\"1\",\"totalAmount\":\"111\",\"orderStatus\":1,\"remark\":\"zdxfdsfasdfsafd\",\"details\":[{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"orderId\":null,\"id\":null,\"skuId\":\"1840282974696374273\",\"quantity\":\"1\",\"amount\":\"111\",\"remark\":null,\"warehouseId\":\"1828364609002311682\",\"beforeQuantity\":\"114.00\",\"afterQuantity\":\"115.00\"}],\"optType\":2,\"bizOrderNo\":\"3123123131\",\"merchantId\":\"1828354153193836545\",\"warehouseId\":\"1828364609002311682\"}', '{\"code\":200,\"msg\":\"操作成功\",\"detailMessage\":null,\"data\":null}', 1, '', '2026-02-10 09:52:17');
INSERT INTO `sys_oper_log` VALUES (2021139478035755010, '入库单', 1, 'com.divine.warehouse.controller.ReceiptOrderController.add()', 'POST', 1, 'admin', '研发部门', '/receiptOrder', '169.239.158.70', '刚果金|橘子电信', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"id\":\"2021139477993811970\",\"orderNo\":\"RK02106282\",\"totalQuantity\":\"0\",\"totalAmount\":null,\"orderStatus\":0,\"remark\":null,\"details\":[{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"orderId\":null,\"id\":null,\"skuId\":\"1829399118304964610\",\"quantity\":null,\"amount\":null,\"remark\":null,\"warehouseId\":\"1828364740028174337\",\"beforeQuantity\":null,\"afterQuantity\":null}],\"optType\":2,\"bizOrderNo\":null,\"merchantId\":null,\"warehouseId\":\"1828364740028174337\"}', '{\"code\":200,\"msg\":\"操作成功\",\"detailMessage\":null,\"data\":\"2021139477993811970\"}', 1, '', '2026-02-10 10:29:37');
INSERT INTO `sys_oper_log` VALUES (2021140283111436289, '代码生成', 6, 'com.divine.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '169.239.158.70', '刚果金|橘子电信', '\"wms_warehouse_shelf\"', '{\"code\":200,\"msg\":\"操作成功\",\"detailMessage\":null,\"data\":null}', 1, '', '2026-02-10 10:32:49');
INSERT INTO `sys_oper_log` VALUES (2021140289214148610, '代码生成', 6, 'com.divine.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '169.239.158.70', '刚果金|橘子电信', '\"wms_warehouse_shelf\"', '{\"code\":200,\"msg\":\"操作成功\",\"detailMessage\":null,\"data\":null}', 1, '', '2026-02-10 10:32:51');
INSERT INTO `sys_oper_log` VALUES (2021140376875102209, '代码生成', 8, 'com.divine.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '169.239.158.70', '刚果金|橘子电信', '{\"tables\":\"wms_warehouse_shelf\"}', '', 0, '', '2026-02-10 10:33:11');
INSERT INTO `sys_oper_log` VALUES (2021140495322247170, '代码生成', 8, 'com.divine.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '169.239.158.70', '刚果金|橘子电信', '{\"tables\":\"wms_warehouse_shelf\"}', '', 0, '', '2026-02-10 10:33:40');
INSERT INTO `sys_oper_log` VALUES (2021140678412005378, '代码生成', 8, 'com.divine.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', '研发部门', '/tool/gen/batchGenCode', '169.239.158.70', '刚果金|橘子电信', '{\"tables\":\"wms_warehouse_shelf\"}', '', 0, '', '2026-02-10 10:34:23');
INSERT INTO `sys_oper_log` VALUES (2021166457724268546, '入库单', 2, 'com.divine.warehouse.controller.ReceiptOrderController.doWarehousing()', 'POST', 1, 'admin', '研发部门', '/receiptOrder/warehousing', '169.239.158.70', '刚果金|橘子电信', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"id\":\"2021166457636188162\",\"orderNo\":\"RK02100704\",\"totalQuantity\":\"111\",\"totalAmount\":\"22\",\"orderStatus\":1,\"remark\":\"1312的点点滴滴\",\"details\":[{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"orderId\":null,\"id\":null,\"skuId\":\"1840282974696374273\",\"quantity\":\"111\",\"amount\":\"22\",\"remark\":null,\"warehouseId\":\"1828364609002311682\",\"beforeQuantity\":\"115.00\",\"afterQuantity\":\"226.00\"}],\"optType\":2,\"bizOrderNo\":\"31231231321\",\"merchantId\":\"1828354153193836545\",\"warehouseId\":\"1828364609002311682\"}', '{\"code\":200,\"msg\":\"操作成功\",\"detailMessage\":null,\"data\":null}', 1, '', '2026-02-10 12:16:50');
INSERT INTO `sys_oper_log` VALUES (2021182824628285441, '入库单', 1, 'com.divine.warehouse.controller.ReceiptOrderController.add()', 'POST', 1, 'admin', '研发部门', '/receiptOrder', '169.239.158.70', '刚果金|橘子电信', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"id\":\"2021182823583903745\",\"orderNo\":\"RK02102363\",\"totalQuantity\":\"0\",\"totalAmount\":null,\"orderStatus\":0,\"remark\":null,\"details\":[{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"orderId\":null,\"id\":null,\"skuId\":\"1840282974696374273\",\"quantity\":null,\"amount\":null,\"remark\":null,\"warehouseId\":\"1840317750635581441\",\"beforeQuantity\":null,\"afterQuantity\":null}],\"optType\":2,\"bizOrderNo\":null,\"merchantId\":null,\"warehouseId\":\"1840317750635581441\"}', '', 0, 'com.divine.warehouse.mapper.ReceiptOrderDetailMapper.insert (batch index #1) failed. Cause: java.sql.BatchUpdateException: Unknown column \'order_id\' in \'field list\'\n; bad SQL grammar []', '2026-02-10 13:21:52');
INSERT INTO `sys_oper_log` VALUES (2021182859596197890, '入库单', 1, 'com.divine.warehouse.controller.ReceiptOrderController.add()', 'POST', 1, 'admin', '研发部门', '/receiptOrder', '169.239.158.70', '刚果金|橘子电信', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"id\":\"2021182859550060545\",\"orderNo\":\"RK02102363\",\"totalQuantity\":\"1\",\"totalAmount\":null,\"orderStatus\":0,\"remark\":null,\"details\":[{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"orderId\":null,\"id\":null,\"skuId\":\"1840282974696374273\",\"quantity\":\"1\",\"amount\":\"1\",\"remark\":null,\"warehouseId\":\"1840317750635581441\",\"beforeQuantity\":null,\"afterQuantity\":null}],\"optType\":2,\"bizOrderNo\":null,\"merchantId\":null,\"warehouseId\":\"1840317750635581441\"}', '', 0, 'com.divine.warehouse.mapper.ReceiptOrderDetailMapper.insert (batch index #1) failed. Cause: java.sql.BatchUpdateException: Unknown column \'order_id\' in \'field list\'\n; bad SQL grammar []', '2026-02-10 13:22:00');
INSERT INTO `sys_oper_log` VALUES (2021221194448994305, '出库单', 2, 'com.divine.warehouse.controller.ShipmentOrderController.shipment()', 'PUT', 1, 'admin', '研发部门', '/shipmentOrder/shipment', '192.168.29.168', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"id\":null,\"orderNo\":\"RK02104222\",\"orderStatus\":1,\"totalQuantity\":\"111\",\"totalPrice\":null,\"remark\":\"1323123\",\"details\":[{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"id\":null,\"orderId\":null,\"skuId\":\"1840282974696374273\",\"unitPrice\":null,\"remark\":null,\"warehouseId\":\"1828364609002311682\",\"storageShelf\":\"111111\",\"quantity\":\"111\",\"beforeQuantity\":null,\"afterQuantity\":null,\"imgUrl\":null}],\"optType\":2,\"bizOrderNo\":\"3123123\",\"merchantId\":\"1828354153193836545\",\"warehouseId\":\"1828364609002311682\"}', '', 0, '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'shipment_status\' in \'field list\'\r\n### The error may exist in com/divine/warehouse/mapper/ShipmentOrderMapper.java (best guess)\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: SELECT  id,shipment_status,warehouse_id,opt_type,biz_order_no,merchant_id,order_no,order_status,total_quantity,total_amount,remark,create_by,create_time,update_by,update_time  FROM wms_shipment_order      WHERE  (order_no = ?)\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'shipment_status\' in \'field list\'\n; bad SQL grammar []', '2026-02-10 15:54:20');
INSERT INTO `sys_oper_log` VALUES (2021221798487482369, '出库单', 2, 'com.divine.warehouse.controller.ShipmentOrderController.shipment()', 'PUT', 1, 'admin', '研发部门', '/shipmentOrder/shipment', '192.168.29.168', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"id\":null,\"orderNo\":\"RK02104222\",\"orderStatus\":1,\"totalQuantity\":\"111\",\"totalPrice\":null,\"remark\":\"1323123\",\"details\":[{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"id\":null,\"orderId\":null,\"skuId\":\"1840282974696374273\",\"unitPrice\":null,\"remark\":null,\"warehouseId\":\"1828364609002311682\",\"storageShelf\":\"111111\",\"quantity\":\"111\",\"beforeQuantity\":null,\"afterQuantity\":null,\"imgUrl\":null}],\"optType\":2,\"bizOrderNo\":\"3123123\",\"merchantId\":\"1828354153193836545\",\"warehouseId\":\"1828364609002311682\"}', '', 0, '\r\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'total_amount\' in \'field list\'\r\n### The error may exist in com/divine/warehouse/mapper/ShipmentOrderMapper.java (best guess)\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: SELECT  id,warehouse_id,opt_type,biz_order_no,merchant_id,order_no,order_status,total_quantity,total_amount,remark,create_by,create_time,update_by,update_time  FROM wms_shipment_order      WHERE  (order_no = ?)\r\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'total_amount\' in \'field list\'\n; bad SQL grammar []', '2026-02-10 15:56:44');
INSERT INTO `sys_oper_log` VALUES (2021222099298799617, '出库单', 2, 'com.divine.warehouse.controller.ShipmentOrderController.shipment()', 'PUT', 1, 'admin', '研发部门', '/shipmentOrder/shipment', '192.168.29.168', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"id\":\"2021222098778705921\",\"orderNo\":\"RK02104222\",\"orderStatus\":1,\"totalQuantity\":\"111\",\"totalPrice\":null,\"remark\":\"1323123\",\"details\":[{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"id\":null,\"orderId\":null,\"skuId\":\"1840282974696374273\",\"unitPrice\":null,\"remark\":null,\"warehouseId\":\"1828364609002311682\",\"storageShelf\":\"111111\",\"quantity\":\"111\",\"beforeQuantity\":null,\"afterQuantity\":null,\"imgUrl\":null}],\"optType\":2,\"bizOrderNo\":\"3123123\",\"merchantId\":\"1828354153193836545\",\"warehouseId\":\"1828364609002311682\"}', '', 0, 'com.divine.warehouse.mapper.ShipmentOrderDetailMapper.insert (batch index #1) failed. Cause: java.sql.BatchUpdateException: Unknown column \'order_id\' in \'field list\'\n; bad SQL grammar []', '2026-02-10 15:57:56');
INSERT INTO `sys_oper_log` VALUES (2021223519703937026, '出库单', 2, 'com.divine.warehouse.controller.ShipmentOrderController.shipment()', 'PUT', 1, 'admin', '研发部门', '/shipmentOrder/shipment', '192.168.29.168', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"id\":\"2021223519506804737\",\"orderNo\":\"RK02104222\",\"orderStatus\":1,\"totalQuantity\":\"111\",\"totalPrice\":null,\"remark\":\"1323123\",\"details\":[{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"id\":null,\"orderId\":null,\"skuId\":\"1840282974696374273\",\"unitPrice\":null,\"remark\":null,\"warehouseId\":\"1828364609002311682\",\"storageShelf\":\"111111\",\"quantity\":\"111\",\"beforeQuantity\":\"226.00\",\"afterQuantity\":\"115.00\",\"imgUrl\":null}],\"optType\":2,\"bizOrderNo\":\"3123123\",\"merchantId\":\"1828354153193836545\",\"warehouseId\":\"1828364609002311682\"}', '{\"code\":200,\"msg\":\"操作成功\",\"detailMessage\":null,\"data\":null}', 1, '', '2026-02-10 16:03:34');
INSERT INTO `sys_oper_log` VALUES (2021224168143335425, '出库单', 2, 'com.divine.warehouse.controller.ShipmentOrderController.shipment()', 'PUT', 1, 'admin', '研发部门', '/shipmentOrder/shipment', '192.168.29.168', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"id\":null,\"orderNo\":\"RK02104222\",\"orderStatus\":1,\"totalQuantity\":\"111\",\"totalPrice\":null,\"remark\":\"1323123\",\"details\":[{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"id\":null,\"orderId\":null,\"skuId\":\"1840282974696374273\",\"unitPrice\":null,\"remark\":null,\"warehouseId\":\"1828364609002311682\",\"storageShelf\":\"111111\",\"quantity\":\"111\",\"beforeQuantity\":null,\"afterQuantity\":null,\"imgUrl\":null}],\"optType\":2,\"bizOrderNo\":\"3123123\",\"merchantId\":\"1828354153193836545\",\"warehouseId\":\"1828364609002311682\"}', '', 0, '出库单号重复，请手动修改', '2026-02-10 16:06:09');
INSERT INTO `sys_oper_log` VALUES (2021224190687719426, '出库单', 2, 'com.divine.warehouse.controller.ShipmentOrderController.shipment()', 'PUT', 1, 'admin', '研发部门', '/shipmentOrder/shipment', '192.168.29.168', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"id\":\"2021224190628999169\",\"orderNo\":\"RK021042212\",\"orderStatus\":1,\"totalQuantity\":\"111\",\"totalPrice\":null,\"remark\":\"1323123\",\"details\":[{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"id\":null,\"orderId\":null,\"skuId\":\"1840282974696374273\",\"unitPrice\":null,\"remark\":null,\"warehouseId\":\"1828364609002311682\",\"storageShelf\":\"111111\",\"quantity\":\"111\",\"beforeQuantity\":\"115.00\",\"afterQuantity\":\"4.00\",\"imgUrl\":null}],\"optType\":2,\"bizOrderNo\":\"3123123\",\"merchantId\":\"1828354153193836545\",\"warehouseId\":\"1828364609002311682\"}', '{\"code\":200,\"msg\":\"操作成功\",\"detailMessage\":null,\"data\":null}', 1, '', '2026-02-10 16:06:14');
INSERT INTO `sys_oper_log` VALUES (2021225271526297602, '出库单', 2, 'com.divine.warehouse.controller.ShipmentOrderController.shipment()', 'PUT', 1, 'admin', '研发部门', '/shipmentOrder/shipment', '192.168.29.168', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"id\":\"2021225181025800193\",\"orderNo\":\"RK021042212\",\"orderStatus\":1,\"totalQuantity\":\"111\",\"totalPrice\":null,\"remark\":\"1323123\",\"details\":[{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"id\":null,\"orderId\":null,\"skuId\":\"1840282974696374273\",\"unitPrice\":null,\"remark\":null,\"warehouseId\":\"1828364609002311682\",\"storageShelf\":\"111111\",\"quantity\":\"111\",\"beforeQuantity\":null,\"afterQuantity\":null,\"imgUrl\":null}],\"optType\":2,\"bizOrderNo\":\"3123123\",\"merchantId\":\"1828354153193836545\",\"warehouseId\":\"1828364609002311682\"}', '', 0, '库存不足', '2026-02-10 16:10:32');
INSERT INTO `sys_oper_log` VALUES (2021225510073143298, '入库单', 2, 'com.divine.warehouse.controller.ReceiptOrderController.warehousing()', 'POST', 1, 'admin', '研发部门', '/receiptOrder/warehousing', '192.168.29.168', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"id\":\"2021225501361573889\",\"orderNo\":\"RK02104222\",\"orderStatus\":1,\"totalQuantity\":\"111\",\"totalPrice\":null,\"remark\":\"1323123\",\"details\":[{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"id\":null,\"orderId\":null,\"skuId\":\"1840282974696374273\",\"unitPrice\":null,\"remark\":null,\"warehouseId\":\"1828364609002311682\",\"storageShelf\":\"1111\",\"quantity\":\"111\",\"beforeQuantity\":\"0\",\"afterQuantity\":\"111\",\"imgUrl\":null}],\"optType\":2,\"bizOrderNo\":\"3123123\",\"merchantId\":\"1828354153193836545\",\"warehouseId\":\"1828364609002311682\"}', '{\"code\":200,\"msg\":\"操作成功\",\"detailMessage\":null,\"data\":null}', 1, '', '2026-02-10 16:11:29');
INSERT INTO `sys_oper_log` VALUES (2021225590788329473, '入库单', 2, 'com.divine.warehouse.controller.ReceiptOrderController.warehousing()', 'POST', 1, 'admin', '研发部门', '/receiptOrder/warehousing', '192.168.29.168', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"id\":\"2021225590666694657\",\"orderNo\":\"RK02104222\",\"orderStatus\":1,\"totalQuantity\":\"111\",\"totalPrice\":null,\"remark\":\"1323123\",\"details\":[{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"id\":null,\"orderId\":null,\"skuId\":\"1840282974696374273\",\"unitPrice\":null,\"remark\":null,\"warehouseId\":\"1828364609002311682\",\"storageShelf\":\"1111\",\"quantity\":\"111\",\"beforeQuantity\":\"111.00\",\"afterQuantity\":\"222.00\",\"imgUrl\":null},{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"id\":null,\"orderId\":null,\"skuId\":\"1840282974696374273\",\"unitPrice\":null,\"remark\":null,\"warehouseId\":\"1828364609002311682\",\"storageShelf\":\"222\",\"quantity\":\"111\",\"beforeQuantity\":\"0\",\"afterQuantity\":\"111\",\"imgUrl\":null}],\"optType\":2,\"bizOrderNo\":\"3123123\",\"merchantId\":\"1828354153193836545\",\"warehouseId\":\"1828364609002311682\"}', '{\"code\":200,\"msg\":\"操作成功\",\"detailMessage\":null,\"data\":null}', 1, '', '2026-02-10 16:11:48');
INSERT INTO `sys_oper_log` VALUES (2021226074198663169, '入库单', 2, 'com.divine.warehouse.controller.ReceiptOrderController.warehousing()', 'POST', 1, 'admin', '研发部门', '/receiptOrder/warehousing', '192.168.29.168', '内网IP', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"id\":\"2021226073892478977\",\"orderNo\":\"RK02104222\",\"orderStatus\":1,\"totalQuantity\":\"111\",\"totalPrice\":null,\"remark\":\"1323123\",\"details\":[{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"id\":null,\"orderId\":null,\"skuId\":\"1840282974696374273\",\"unitPrice\":null,\"remark\":null,\"warehouseId\":\"1828364609002311682\",\"storageShelf\":\"1111\",\"quantity\":\"111\",\"beforeQuantity\":\"222.00\",\"afterQuantity\":\"333.00\",\"imgUrl\":null},{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"id\":null,\"orderId\":null,\"skuId\":\"1840282974696374273\",\"unitPrice\":null,\"remark\":null,\"warehouseId\":\"1828364609002311682\",\"storageShelf\":\"222\",\"quantity\":\"2\",\"beforeQuantity\":\"111.00\",\"afterQuantity\":\"113.00\",\"imgUrl\":null}],\"optType\":2,\"bizOrderNo\":\"3123123\",\"merchantId\":\"1828354153193836545\",\"warehouseId\":\"1828364609002311682\"}', '{\"code\":200,\"msg\":\"操作成功\",\"detailMessage\":null,\"data\":null}', 1, '', '2026-02-10 16:13:43');
INSERT INTO `sys_oper_log` VALUES (2022357172093362178, '仓库', 3, 'com.divine.warehouse.controller.WarehouseController.remove()', 'DELETE', 1, 'admin', '研发部门', '/warehouse/1828364609002311682', '41.77.221.131', '刚果金|Kinshasa|橘子电信', '{\"timestamp\":\"1771002388888\"}', '', 0, '该仓库已有业务关联，无法删除！', '2026-02-13 19:08:18');
INSERT INTO `sys_oper_log` VALUES (2022357246206713858, '仓库', 2, 'com.divine.warehouse.controller.WarehouseController.edit()', 'PUT', 1, 'admin', '研发部门', '/warehouse', '41.77.221.131', '刚果金|Kinshasa|橘子电信', '{\"createBy\":\"admin\",\"createTime\":\"2024-08-27 17:31:06\",\"updateBy\":\"admin\",\"updateTime\":\"2024-08-27 17:31:06\",\"id\":\"1828364609002311682\",\"warehouseCode\":null,\"warehouseName\":\"神洲一号仓\",\"remark\":null,\"sort\":1}', '{\"code\":200,\"msg\":\"操作成功!\",\"data\":null,\"timestamp\":1771002515695}', 1, '', '2026-02-13 19:08:36');
INSERT INTO `sys_oper_log` VALUES (2022357260165357570, '仓库', 3, 'com.divine.warehouse.controller.WarehouseController.remove()', 'DELETE', 1, 'admin', '研发部门', '/warehouse/1828364740028174337', '41.77.221.131', '刚果金|Kinshasa|橘子电信', '{\"timestamp\":\"1771002409952\"}', '{\"code\":200,\"msg\":\"操作成功!\",\"data\":null,\"timestamp\":1771002519058}', 1, '', '2026-02-13 19:08:39');
INSERT INTO `sys_oper_log` VALUES (2022357271775191042, '仓库', 3, 'com.divine.warehouse.controller.WarehouseController.remove()', 'DELETE', 1, 'admin', '研发部门', '/warehouse/1840317750635581441', '41.77.221.131', '刚果金|Kinshasa|橘子电信', '{\"timestamp\":\"1771002412778\"}', '{\"code\":200,\"msg\":\"操作成功!\",\"data\":null,\"timestamp\":1771002521827}', 1, '', '2026-02-13 19:08:42');
INSERT INTO `sys_oper_log` VALUES (2022357573081407490, '物品品牌', 3, 'com.divine.warehouse.controller.ItemBrandController.remove()', 'DELETE', 1, 'admin', '研发部门', '/itemBrand/1828407291103842306', '41.77.221.131', '刚果金|Kinshasa|橘子电信', '{\"timestamp\":\"1771002484608\"}', '{\"code\":200,\"msg\":\"操作成功!\",\"data\":null,\"timestamp\":1771002593666}', 1, '', '2026-02-13 19:09:54');
INSERT INTO `sys_oper_log` VALUES (2022357589795708929, '物品品牌', 3, 'com.divine.warehouse.controller.ItemBrandController.remove()', 'DELETE', 1, 'admin', '研发部门', '/itemBrand/1828407151135723522', '41.77.221.131', '刚果金|Kinshasa|橘子电信', '{\"timestamp\":\"1771002488594\"}', '{\"code\":200,\"msg\":\"操作成功!\",\"data\":null,\"timestamp\":1771002597652}', 1, '', '2026-02-13 19:09:58');
INSERT INTO `sys_oper_log` VALUES (2022357600528932866, '物品品牌', 3, 'com.divine.warehouse.controller.ItemBrandController.remove()', 'DELETE', 1, 'admin', '研发部门', '/itemBrand/1828364927610032129', '41.77.221.131', '刚果金|Kinshasa|橘子电信', '{\"timestamp\":\"1771002491154\"}', '{\"code\":200,\"msg\":\"操作成功!\",\"data\":null,\"timestamp\":1771002600211}', 1, '', '2026-02-13 19:10:00');
INSERT INTO `sys_oper_log` VALUES (2022357610855309313, '物品品牌', 3, 'com.divine.warehouse.controller.ItemBrandController.remove()', 'DELETE', 1, 'admin', '研发部门', '/itemBrand/1828364873889386498', '41.77.221.131', '刚果金|Kinshasa|橘子电信', '{\"timestamp\":\"1771002493596\"}', '{\"code\":200,\"msg\":\"操作成功!\",\"data\":null,\"timestamp\":1771002602670}', 1, '', '2026-02-13 19:10:03');
INSERT INTO `sys_oper_log` VALUES (2022357621391400962, '物品品牌', 3, 'com.divine.warehouse.controller.ItemBrandController.remove()', 'DELETE', 1, 'admin', '研发部门', '/itemBrand/1828364846953566209', '41.77.221.131', '刚果金|Kinshasa|橘子电信', '{\"timestamp\":\"1771002496145\"}', '{\"code\":200,\"msg\":\"操作成功!\",\"data\":null,\"timestamp\":1771002605182}', 1, '', '2026-02-13 19:10:05');
INSERT INTO `sys_oper_log` VALUES (2022363384180547585, '入库单', 2, 'com.divine.warehouse.controller.ReceiptOrderController.warehousing()', 'POST', 1, 'admin', '研发部门', '/receiptOrder/warehousing', '41.77.221.131', '刚果金|Kinshasa|橘子电信', '{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"id\":null,\"businessNo\":\"PK20260213001\",\"totalQuantity\":\"1\",\"totalPrice\":null,\"remark\":null,\"details\":[{\"createBy\":null,\"createTime\":null,\"updateBy\":null,\"updateTime\":null,\"id\":null,\"orderId\":null,\"skuId\":\"1829398333903007745\",\"unitPrice\":null,\"remark\":null,\"warehouseId\":\"1828364609002311682\",\"storageShelf\":null,\"quantity\":\"1\",\"beforeQuantity\":\"0\",\"afterQuantity\":\"1\",\"imgUrl\":null}],\"optType\":2,\"bizOrderNo\":null,\"merchantId\":null,\"warehouseId\":\"1828364609002311682\"}', '{\"code\":200,\"msg\":\"操作成功!\",\"data\":null,\"timestamp\":1771003979136}', 1, '', '2026-02-13 19:32:59');

-- ----------------------------
-- Table structure for sys_oss
-- ----------------------------
DROP TABLE IF EXISTS `sys_oss`;
CREATE TABLE `sys_oss`  (
  `oss_id` bigint NOT NULL COMMENT '对象存储主键',
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '文件名',
  `original_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '原名',
  `file_suffix` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '文件后缀名',
  `url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'URL地址',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '上传人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新人',
  `service` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'minio' COMMENT '服务商',
  PRIMARY KEY (`oss_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'OSS对象存储表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_oss
-- ----------------------------

-- ----------------------------
-- Table structure for sys_oss_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_oss_config`;
CREATE TABLE `sys_oss_config`  (
  `oss_config_id` bigint NOT NULL COMMENT '主建',
  `config_key` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '配置key',
  `access_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT 'accessKey',
  `secret_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '秘钥',
  `bucket_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '桶名称',
  `prefix` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '前缀',
  `endpoint` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '访问站点',
  `domain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '自定义域名',
  `is_https` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'N' COMMENT '是否https（Y=是,N=否）',
  `region` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '域',
  `access_policy` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1' COMMENT '桶权限类型(0=private 1=public 2=custom)',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '是否默认（0=是,1=否）',
  `ext1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '扩展字段',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`oss_config_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '对象存储配置表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_oss_config
-- ----------------------------
INSERT INTO `sys_oss_config` VALUES (1, 'minio', 'ruoyi', 'ruoyi123', 'ruoyi', '', '127.0.0.1:9000', '', 'N', '', '1', '0', '', 'admin', '2024-06-13 16:06:38', 'admin', '2024-08-16 16:48:05', NULL);
INSERT INTO `sys_oss_config` VALUES (2, 'qiniu', 'XXXXXXXXXXXXXXX', 'XXXXXXXXXXXXXXX', 'ruoyi', '', 's3-cn-north-1.qiniucs.com', '', 'N', '', '1', '0', '', 'admin', '2024-06-13 16:06:38', 'admin', '2024-06-13 16:06:38', NULL);
INSERT INTO `sys_oss_config` VALUES (3, 'aliyun', 'XXXXXXXXXXXXXXX', 'XXXXXXXXXXXXXXX', 'ruoyi', '', 'oss-cn-beijing.aliyuncs.com', '', 'N', '', '1', '0', '', 'admin', '2024-06-13 16:06:38', 'admin', '2024-07-10 17:50:41', NULL);
INSERT INTO `sys_oss_config` VALUES (4, 'qcloud', 'XXXXXXXXXXXXXXX', 'XXXXXXXXXXXXXXX', 'ruoyi-1250000000', '', 'cos.ap-beijing.myqcloud.com', '', 'N', 'ap-beijing', '1', '0', '', 'admin', '2024-06-13 16:06:38', 'admin', '2024-06-13 16:06:38', NULL);
INSERT INTO `sys_oss_config` VALUES (5, 'image', 'ruoyi', 'ruoyi123', 'ruoyi', 'image', '127.0.0.1:9000', '', 'N', '', '1', '0', '', 'admin', '2024-06-13 16:06:38', 'admin', '2024-06-13 16:06:38', NULL);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '岗位信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '1', 'admin', '2024-06-13 16:06:25', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '1', 'admin', '2024-06-13 16:06:25', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '1', 'admin', '2024-06-13 16:06:25', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '1', 'admin', '2024-06-13 16:06:25', '', NULL, '');
INSERT INTO `sys_post` VALUES (1811656351757385729, 'caiwu8989', '财务', 5, '1', 'admin', '2024-07-12 22:58:28', 'admin', '2024-07-12 14:58:38', NULL);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '1', '0', 'admin', '2024-06-13 16:06:26', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '1', '1', 'admin', '2024-06-13 16:06:26', 'admin', '2024-07-10 17:13:05', '普通角色');
INSERT INTO `sys_role` VALUES (1811607750859661314, '测试角色1', 'test1', 2, '1', 1, 1, '1', '1', 'admin', '2024-07-12 11:45:21', 'admin', '2024-07-12 11:45:21', NULL);
INSERT INTO `sys_role` VALUES (1811629311809396737, '测试角色2', 'test2', 3, '1', 1, 1, '1', '1', 'admin', '2024-07-12 13:11:01', 'admin', '2024-07-12 13:11:01', NULL);
INSERT INTO `sys_role` VALUES (1829105952432427010, '试用', 'trier', 0, '1', 1, 1, '1', '0', 'admin', '2024-08-29 18:36:57', 'admin', '2024-09-11 16:32:53', NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (1829105952432427010, 1808758090157985794);
INSERT INTO `sys_role_menu` VALUES (1829105952432427010, 1809059968309743618);
INSERT INTO `sys_role_menu` VALUES (1829105952432427010, 1809059968309743619);
INSERT INTO `sys_role_menu` VALUES (1829105952432427010, 1813458070128599041);
INSERT INTO `sys_role_menu` VALUES (1829105952432427010, 1813820131794837506);
INSERT INTO `sys_role_menu` VALUES (1829105952432427010, 1815207165755183105);
INSERT INTO `sys_role_menu` VALUES (1829105952432427010, 1818123963605549057);
INSERT INTO `sys_role_menu` VALUES (1829105952432427010, 1818466281474822145);
INSERT INTO `sys_role_menu` VALUES (1829105952432427010, 1818854933803638785);
INSERT INTO `sys_role_menu` VALUES (1829105952432427010, 1818855673632727042);
INSERT INTO `sys_role_menu` VALUES (1829105952432427010, 1820729144067321858);
INSERT INTO `sys_role_menu` VALUES (1829105952432427010, 1821075355068559361);
INSERT INTO `sys_role_menu` VALUES (1829105952432427010, 1822820194307051521);
INSERT INTO `sys_role_menu` VALUES (1829105952432427010, 1822862323595145218);
INSERT INTO `sys_role_menu` VALUES (1829105952432427010, 1823187248797270018);
INSERT INTO `sys_role_menu` VALUES (1829105952432427010, 1823190638784757762);
INSERT INTO `sys_role_menu` VALUES (1829105952432427010, 1829349433573822466);
INSERT INTO `sys_role_menu` VALUES (1829105952432427010, 1829350164603260929);
INSERT INTO `sys_role_menu` VALUES (1829105952432427010, 1829351081448755202);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT 'sys_user' COMMENT '用户类型（sys_user系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '超级管理员', 'sys_user', 'zccbbg@qq.com', '18888888888', '0', '', '$2a$10$ibotj9JCxumu8gTqBuVY1u5Ws4OfcUpkeFa2pBBtGKUH.r/Ep4hqK', '1', '0', '41.77.221.227', '2026-02-14 23:56:38', 'admin', '2024-06-13 16:06:25', 'admin', '2026-02-14 17:56:38', '管理员');
INSERT INTO `sys_user` VALUES (100, 103, 'yislo', '超级管理员', 'sys_user', 'zccbbg@qq.com', '18888888888', '0', '', '$2a$10$ibotj9JCxumu8gTqBuVY1u5Ws4OfcUpkeFa2pBBtGKUH.r/Ep4hqK', '1', '0', '41.77.221.201', '2026-02-09 20:32:06', 'admin', '2024-06-13 16:06:25', 'yislo', '2026-02-09 14:32:06', '管理员');
INSERT INTO `sys_user` VALUES (1829105396288688129, 105, 'ck', 'ck', 'sys_user', '', '', '0', '', '$2a$10$5ogFpqit10a8IpVFjKzosuz0whR0/tyQ4Nt9e6y3/MBodcDzwhCni', '1', '0', '221.224.86.138', '2024-10-09 15:40:16', 'admin', '2024-08-29 18:34:44', 'ck', '2024-10-09 15:40:16', NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = DYNAMIC;

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
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (1829105396288688129, 1829105952432427010);

-- ----------------------------
-- Table structure for wms_check_order
-- ----------------------------
DROP TABLE IF EXISTS `wms_check_order`;
CREATE TABLE `wms_check_order`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `check_no` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '盘点单号',
  `check_status` tinyint NULL DEFAULT 11 COMMENT '库存盘点单状态 -1：作废 0：未盘库 1：已盘库',
  `total_quantity` bigint NULL DEFAULT NULL COMMENT '盈亏数',
  `total_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '总金额',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `warehouse_id` bigint NULL DEFAULT NULL COMMENT '所属仓库',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(3) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(3) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1843920323943682050 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '库存盘点单据' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wms_check_order
-- ----------------------------

-- ----------------------------
-- Table structure for wms_check_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `wms_check_order_detail`;
CREATE TABLE `wms_check_order_detail`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `check_id` bigint NOT NULL COMMENT '盘点单id',
  `sku_id` bigint NOT NULL COMMENT '规格id',
  `quantity` bigint NULL DEFAULT NULL COMMENT '库存数量',
  `unit_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '单价',
  `storage_shelf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '货架',
  `check_quantity` decimal(20, 2) NULL DEFAULT NULL COMMENT '盘点数量',
  `warehouse_id` bigint NULL DEFAULT NULL COMMENT '所属仓库',
  `inventory_id` bigint NULL DEFAULT NULL COMMENT '库存id',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(3) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(3) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1843920323981430788 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '库存盘点单据详情' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wms_check_order_detail
-- ----------------------------

-- ----------------------------
-- Table structure for wms_inventory
-- ----------------------------
DROP TABLE IF EXISTS `wms_inventory`;
CREATE TABLE `wms_inventory`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sku_id` bigint NULL DEFAULT NULL COMMENT '规格ID',
  `warehouse_id` bigint NULL DEFAULT NULL COMMENT '所属仓库',
  `storage_shelf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '货架',
  `quantity` bigint NULL DEFAULT NULL COMMENT '库存',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(3) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(3) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2022363384042135554 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '库存表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wms_inventory
-- ----------------------------
INSERT INTO `wms_inventory` VALUES (1843920012193648642, 1840282974696374273, 1828364609002311682, '一号货架', 4, NULL, 'ck', '2024-10-09 15:42:43.944', 'admin', '2026-02-10 16:06:14.240');
INSERT INTO `wms_inventory` VALUES (1843920012193648643, 1840282974629265410, 1828364609002311682, '二号货架', 3, NULL, 'ck', '2024-10-09 15:42:43.945', 'ck', '2024-10-09 15:43:12.844');
INSERT INTO `wms_inventory` VALUES (2021225510010228738, 1840282974696374273, 1828364609002311682, '三号货架', 333, NULL, 'admin', '2026-02-10 16:11:28.799', 'admin', '2026-02-10 16:13:43.269');
INSERT INTO `wms_inventory` VALUES (2021225590729609218, 1840282974696374273, 1828364609002311682, '四号货架', 113, NULL, 'admin', '2026-02-10 16:11:48.043', 'admin', '2026-02-10 16:13:43.274');
INSERT INTO `wms_inventory` VALUES (2022363384042135553, 1829398333903007745, 1828364609002311682, '五号货架', 1, NULL, 'admin', '2026-02-13 19:32:59.112', 'admin', '2026-02-13 19:32:59.112');

-- ----------------------------
-- Table structure for wms_inventory_history
-- ----------------------------
DROP TABLE IF EXISTS `wms_inventory_history`;
CREATE TABLE `wms_inventory_history`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `warehouse_id` bigint NULL DEFAULT NULL COMMENT '所属仓库',
  `sku_id` bigint NULL DEFAULT NULL COMMENT '物料ID',
  `quantity` bigint NULL DEFAULT NULL COMMENT '库存变化',
  `before_quantity` decimal(20, 2) NULL DEFAULT NULL COMMENT '更新前数量',
  `after_quantity` decimal(20, 2) NULL DEFAULT NULL COMMENT '更新后数量',
  `unit_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '单价',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `order_id` bigint NULL DEFAULT NULL COMMENT '操作id（出库、入库、库存移动表单id）',
  `order_no` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作单号（入库、出库、移库、盘库单号）',
  `order_type` int NULL DEFAULT NULL COMMENT '操作类型',
  `create_time` datetime(3) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2022363384075689987 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '库存记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wms_inventory_history
-- ----------------------------
INSERT INTO `wms_inventory_history` VALUES (2022363384075689986, 1828364609002311682, 1829398333903007745, 1, 0.00, 1.00, NULL, NULL, NULL, 'PK20260213001', 1, '2026-02-13 19:32:59.118');

-- ----------------------------
-- Table structure for wms_item
-- ----------------------------
DROP TABLE IF EXISTS `wms_item`;
CREATE TABLE `wms_item`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `item_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '编号',
  `item_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `item_category` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '分类',
  `unit` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '单位类别',
  `item_brand` bigint NULL DEFAULT NULL COMMENT '品牌',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(3) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(3) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1840308261127651331 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '物料' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wms_item
-- ----------------------------
INSERT INTO `wms_item` VALUES (1828402622516334594, NULL, '活动扳手', '1828364988754595841', NULL, NULL, NULL, 'admin', '2024-08-27 20:02:09.948', 'admin', '2024-09-02 21:45:27.127');
INSERT INTO `wms_item` VALUES (1828406450112335874, NULL, '内六角扳手', '1828365043024695297', NULL, NULL, NULL, 'admin', '2024-08-27 20:17:22.521', 'admin', '2024-08-27 20:17:22.521');
INSERT INTO `wms_item` VALUES (1828407870173646849, NULL, '开口扳手', '1828365014901886978', NULL, NULL, NULL, 'admin', '2024-08-27 20:23:01.096', 'admin', '2024-08-27 20:23:01.096');
INSERT INTO `wms_item` VALUES (1828408320146968578, NULL, 'PPR沉插直通', '1828405773474631681', NULL, NULL, NULL, 'admin', '2024-08-27 20:24:48.375', 'admin', '2024-08-27 20:24:48.375');
INSERT INTO `wms_item` VALUES (1828408795734904833, NULL, '304不锈钢纱网', '1828408600515219457', NULL, NULL, NULL, 'admin', '2024-08-27 20:26:41.757', 'admin', '2024-08-27 20:33:27.034');
INSERT INTO `wms_item` VALUES (1829398192563351554, NULL, '正三通', '1829398007993004034', NULL, NULL, NULL, 'admin', '2024-08-30 13:58:12.354', 'admin', '2024-08-30 14:01:08.050');
INSERT INTO `wms_item` VALUES (1829398333580046338, NULL, '电焊手套', '1829398007993004034', NULL, NULL, NULL, 'admin', '2024-08-30 13:58:45.971', 'admin', '2024-08-30 14:00:49.686');
INSERT INTO `wms_item` VALUES (1829398492388978689, NULL, '工作服（春秋长）', '1829398007993004034', NULL, NULL, NULL, 'admin', '2024-08-30 13:59:23.834', 'admin', '2024-08-30 14:00:32.373');
INSERT INTO `wms_item` VALUES (1829398701680553985, NULL, '防酸眼镜', '1829397958923841538', NULL, NULL, NULL, 'admin', '2024-08-30 14:00:13.735', 'admin', '2024-08-30 14:00:13.735');
INSERT INTO `wms_item` VALUES (1829399118040723457, NULL, '雨衣', '1829397958923841538', NULL, NULL, NULL, 'admin', '2024-08-30 14:01:52.989', 'admin', '2024-08-30 14:01:52.989');
INSERT INTO `wms_item` VALUES (1840282974297915394, NULL, '窗帘', '1840282771834667010', NULL, NULL, NULL, 'wms2_admin', '2024-09-29 14:50:26.535', 'wms2_admin', '2024-09-29 14:50:26.535');

-- ----------------------------
-- Table structure for wms_item_brand
-- ----------------------------
DROP TABLE IF EXISTS `wms_item_brand`;
CREATE TABLE `wms_item_brand`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '品牌名称',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(3) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(3) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1828407291103842307 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '商品品牌表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wms_item_brand
-- ----------------------------

-- ----------------------------
-- Table structure for wms_item_category
-- ----------------------------
DROP TABLE IF EXISTS `wms_item_category`;
CREATE TABLE `wms_item_category`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '物料类型id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父物料类型id',
  `category_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '物料类型名称',
  `sort` int NULL DEFAULT 0 COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '1' COMMENT '物料类型状态（0停用 1正常）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime(3) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime(3) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1840282771834667011 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '物料类型表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wms_item_category
-- ----------------------------
INSERT INTO `wms_item_category` VALUES (1828364988754595841, 0, '手机', 0, '1', 'admin', '2024-08-27 17:32:37.357', 'admin', '2024-08-27 20:14:12.100');
INSERT INTO `wms_item_category` VALUES (1828365014901886978, 0, '打印机', 1, '1', 'admin', '2024-08-27 17:32:43.598', 'admin', '2024-08-27 20:14:12.447');
INSERT INTO `wms_item_category` VALUES (1828365043024695297, 0, '电脑', 3, '1', 'admin', '2024-08-27 17:32:50.301', 'admin', '2024-08-27 20:14:12.704');
INSERT INTO `wms_item_category` VALUES (1828405743737016322, 0, '家电', 4, '1', 'admin', '2024-08-27 20:14:34.104', 'admin', '2024-08-27 20:14:34.104');
INSERT INTO `wms_item_category` VALUES (1828405773474631681, 1828405743737016322, '冰箱', 0, '1', 'admin', '2024-08-27 20:14:41.195', 'admin', '2024-08-27 20:14:41.195');
INSERT INTO `wms_item_category` VALUES (1828405825714688001, 1828405743737016322, '电视', 1, '1', 'admin', '2024-08-27 20:14:53.651', 'admin', '2024-08-27 20:14:53.651');
INSERT INTO `wms_item_category` VALUES (1828408600515219457, 0, '健生器材', 5, '1', 'admin', '2024-08-27 20:25:55.213', 'admin', '2024-08-27 20:25:55.213');
INSERT INTO `wms_item_category` VALUES (1829397860466749441, 0, '生鲜', 6, '1', 'admin', '2024-08-30 13:56:53.174', 'admin', '2024-08-30 13:56:53.174');
INSERT INTO `wms_item_category` VALUES (1829397958923841538, 1829397860466749441, '水果', 0, '1', 'admin', '2024-08-30 13:57:16.644', 'admin', '2024-08-30 13:57:16.644');
INSERT INTO `wms_item_category` VALUES (1829398007993004034, 1829397860466749441, '海鲜', 1, '1', 'admin', '2024-08-30 13:57:28.347', 'admin', '2024-08-30 13:57:28.347');
INSERT INTO `wms_item_category` VALUES (1840282771834667010, 1828405743737016322, '空调', 2, '1', 'wms2_admin', '2024-09-29 14:49:38.274', 'wms2_admin', '2024-09-29 14:49:38.274');

-- ----------------------------
-- Table structure for wms_item_sku
-- ----------------------------
DROP TABLE IF EXISTS `wms_item_sku`;
CREATE TABLE `wms_item_sku`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sku_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '规格名称',
  `item_id` bigint NULL DEFAULT NULL,
  `barcode` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '条码',
  `sku_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '编码',
  `length` decimal(10, 1) NULL DEFAULT NULL COMMENT '长，单位cm',
  `width` decimal(10, 1) NULL DEFAULT NULL COMMENT '宽，单位cm',
  `height` decimal(10, 1) NULL DEFAULT NULL COMMENT '高，单位cm',
  `gross_weight` decimal(10, 3) NULL DEFAULT NULL COMMENT '毛重，单位kg',
  `net_weight` decimal(10, 3) NULL DEFAULT NULL COMMENT '净重，单位kg',
  `cost_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '成本价（元）',
  `selling_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '销售价（元）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(3) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(3) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1840308261463195650 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = 'sku信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wms_item_sku
-- ----------------------------
INSERT INTO `wms_item_sku` VALUES (1828402624005312514, '黑', 1828402622516334594, 'x00003', '00001', NULL, NULL, NULL, NULL, NULL, 5000.00, 5288.00, 'admin', '2024-08-27 20:02:10.302', 'admin', '2024-09-02 21:45:27.177');
INSERT INTO `wms_item_sku` VALUES (1828402624005312515, '白', 1828402622516334594, '', '000002', NULL, NULL, NULL, NULL, NULL, 5000.00, 5288.00, 'admin', '2024-08-27 20:02:10.304', 'admin', '2024-09-02 21:45:27.184');
INSERT INTO `wms_item_sku` VALUES (1828402624005312516, '粉', 1828402622516334594, '', '00003', NULL, NULL, NULL, NULL, NULL, 5000.00, 5288.00, 'admin', '2024-08-27 20:02:10.305', 'admin', '2024-09-02 21:45:27.190');
INSERT INTO `wms_item_sku` VALUES (1828406451399987201, 'pro', 1828406450112335874, '', 'mac0001', NULL, NULL, NULL, NULL, NULL, NULL, 24999.00, 'admin', '2024-08-27 20:17:22.821', 'admin', '2024-08-27 20:17:22.821');
INSERT INTO `wms_item_sku` VALUES (1828407871469686786, 'l6468', 1828407870173646849, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3188.00, 'admin', '2024-08-27 20:23:01.393', 'admin', '2024-08-27 20:23:01.393');
INSERT INTO `wms_item_sku` VALUES (1828408321522700289, '白色', 1828408320146968578, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2699.00, 'admin', '2024-08-27 20:24:48.697', 'admin', '2024-08-27 20:24:48.697');
INSERT INTO `wms_item_sku` VALUES (1828408796968030210, '10kg', 1828408795734904833, '102025115', NULL, NULL, NULL, NULL, NULL, 10.000, NULL, NULL, 'admin', '2024-08-27 20:26:42.049', 'admin', '2024-08-27 20:33:27.395');
INSERT INTO `wms_item_sku` VALUES (1828408796968030211, '20kg', 1828408795734904833, '254523055', NULL, NULL, NULL, NULL, NULL, 20.000, NULL, NULL, 'admin', '2024-08-27 20:26:42.052', 'admin', '2024-08-27 20:33:27.515');
INSERT INTO `wms_item_sku` VALUES (1828408796968030212, '50kg', 1828408795734904833, '5204862525', NULL, NULL, NULL, NULL, NULL, 50.000, NULL, NULL, 'admin', '2024-08-27 20:26:42.052', 'admin', '2024-08-27 20:33:27.634');
INSERT INTO `wms_item_sku` VALUES (1829398193024724993, '大', 1829398192563351554, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', '2024-08-30 13:58:12.457', 'admin', '2024-08-30 14:01:08.172');
INSERT INTO `wms_item_sku` VALUES (1829398193024724994, '中', 1829398192563351554, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', '2024-08-30 13:58:12.458', 'admin', '2024-08-30 14:01:08.328');
INSERT INTO `wms_item_sku` VALUES (1829398333903007745, '大', 1829398333580046338, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', '2024-08-30 13:58:46.047', 'admin', '2024-08-30 14:00:49.854');
INSERT INTO `wms_item_sku` VALUES (1829398333903007746, '中', 1829398333580046338, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', '2024-08-30 13:58:46.048', 'admin', '2024-08-30 14:00:50.001');
INSERT INTO `wms_item_sku` VALUES (1829398492779048962, '大', 1829398492388978689, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', '2024-08-30 13:59:23.925', 'admin', '2024-08-30 14:00:32.544');
INSERT INTO `wms_item_sku` VALUES (1829398492779048963, '中', 1829398492388978689, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', '2024-08-30 13:59:23.925', 'admin', '2024-08-30 14:00:32.683');
INSERT INTO `wms_item_sku` VALUES (1829398702011904001, '大', 1829398701680553985, '', NULL, 10.0, 10.0, 10.0, NULL, NULL, NULL, NULL, 'admin', '2024-08-30 14:00:13.810', 'admin', '2024-08-30 14:00:13.810');
INSERT INTO `wms_item_sku` VALUES (1829398702011904002, '中', 1829398701680553985, '', NULL, 5.0, 5.0, 5.0, NULL, NULL, NULL, NULL, 'admin', '2024-08-30 14:00:13.812', 'admin', '2024-08-30 14:00:13.812');
INSERT INTO `wms_item_sku` VALUES (1829399118304964609, '大', 1829399118040723457, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', '2024-08-30 14:01:53.064', 'admin', '2024-08-30 14:01:53.064');
INSERT INTO `wms_item_sku` VALUES (1829399118304964610, '中', 1829399118040723457, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', '2024-08-30 14:01:53.064', 'admin', '2024-08-30 14:01:53.064');
INSERT INTO `wms_item_sku` VALUES (1840282974629265410, '1P', 1840282974297915394, '', NULL, NULL, NULL, NULL, NULL, NULL, 2000.00, NULL, 'wms2_admin', '2024-09-29 14:50:26.627', 'wms2_admin', '2024-09-29 14:50:26.627');
INSERT INTO `wms_item_sku` VALUES (1840282974696374273, '2P', 1840282974297915394, '', NULL, NULL, NULL, NULL, NULL, NULL, 3000.00, NULL, 'wms2_admin', '2024-09-29 14:50:26.628', 'wms2_admin', '2024-09-29 14:50:26.628');

-- ----------------------------
-- Table structure for wms_merchant
-- ----------------------------
DROP TABLE IF EXISTS `wms_merchant`;
CREATE TABLE `wms_merchant`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `merchant_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '编号',
  `merchant_name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `merchant_type` tinyint NULL DEFAULT NULL COMMENT '企业类型',
  `merchant_level` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '级别',
  `bank_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '开户行',
  `bank_account` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '银行账户',
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '地址',
  `mobile` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `tel` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '座机号',
  `contact_person` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'Email',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(3) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(3) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1828354284882399234 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '往来单位' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wms_merchant
-- ----------------------------
INSERT INTO `wms_merchant` VALUES (1828354016258199554, 'c_0001', 'ZXM', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', '2024-08-27 16:49:01.319', 'admin', '2024-08-27 16:49:01.319');
INSERT INTO `wms_merchant` VALUES (1828354153193836545, 's_0001', 'CJC', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', '2024-08-27 16:49:33.964', 'admin', '2024-08-27 16:49:33.964');
INSERT INTO `wms_merchant` VALUES (1828354284882399233, 'c_s_0001', '494', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin', '2024-08-27 16:50:05.367', 'admin', '2024-08-27 16:50:05.367');

-- ----------------------------
-- Table structure for wms_movement_order
-- ----------------------------
DROP TABLE IF EXISTS `wms_movement_order`;
CREATE TABLE `wms_movement_order`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `move_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '移库编号',
  `move_status` tinyint NULL DEFAULT NULL COMMENT '状态',
  `total_quantity` bigint NULL DEFAULT NULL COMMENT '总数量',
  `total_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '总金额',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `source_warehouse_id` bigint NULL DEFAULT NULL COMMENT '源仓库',
  `target_warehouse_id` bigint NULL DEFAULT NULL COMMENT '目标仓库',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(3) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(3) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1843920257199722499 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '移库单' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wms_movement_order
-- ----------------------------
INSERT INTO `wms_movement_order` VALUES (1843920257199722498, 'YK10096786', 1, 1, NULL, NULL, 1828364609002311682, 1840317750635581441, 'ck', '2024-10-09 15:43:42.356', 'ck', '2024-10-09 15:43:42.356');

-- ----------------------------
-- Table structure for wms_movement_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `wms_movement_order_detail`;
CREATE TABLE `wms_movement_order_detail`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `order_id` bigint NULL DEFAULT NULL COMMENT '移库单Id',
  `sku_id` bigint NULL DEFAULT NULL COMMENT '规格id',
  `quantity` bigint NULL DEFAULT NULL COMMENT '数量',
  `unit_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '单价',
  `storage_shelf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '货架',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `source_warehouse_id` bigint NULL DEFAULT NULL COMMENT '源仓库',
  `target_warehouse_id` bigint NULL DEFAULT NULL COMMENT '目标仓库',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(3) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(3) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1843920257237471234 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '库存移动详情' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wms_movement_order_detail
-- ----------------------------
INSERT INTO `wms_movement_order_detail` VALUES (1843920257237471233, 1843920257199722498, 1840282974696374273, 1, NULL, NULL, NULL, 1828364609002311682, 1840317750635581441, 'ck', '2024-10-09 15:43:42.365', 'ck', '2024-10-09 15:43:42.365');

-- ----------------------------
-- Table structure for wms_receipt_order
-- ----------------------------
DROP TABLE IF EXISTS `wms_receipt_order`;
CREATE TABLE `wms_receipt_order`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `receipt_no` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '入库单号',
  `receipt_status` tinyint NULL DEFAULT NULL COMMENT '入库状态',
  `total_quantity` bigint NULL DEFAULT NULL COMMENT '商品总数',
  `total_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '订单金额',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `opt_type` int NULL DEFAULT NULL COMMENT '入库类型',
  `merchant_id` bigint NULL DEFAULT NULL COMMENT '供应商',
  `biz_order_no` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '业务订单号',
  `warehouse_id` bigint NULL DEFAULT NULL COMMENT '仓库id',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(3) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(3) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2022363383853391874 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '入库单' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wms_receipt_order
-- ----------------------------
INSERT INTO `wms_receipt_order` VALUES (1843920012030070785, 'RK10098845', 1, 8, NULL, NULL, 2, NULL, NULL, 1828364609002311682, 'ck', '2024-10-09 15:42:43.905', 'ck', '2024-10-09 15:42:43.905');
INSERT INTO `wms_receipt_order` VALUES (2021125396364718081, 'RK02103097', 1, 111, NULL, NULL, 2, NULL, NULL, 1828364609002311682, 'admin', '2026-02-10 09:33:39.849', 'admin', '2026-02-10 09:33:39.849');
INSERT INTO `wms_receipt_order` VALUES (2021130083507826689, 'RK02107564', 1, 1, 111.00, 'zdxfdsfasdfsafd', 2, 1828354153193836545, '3123123131', 1828364609002311682, 'admin', '2026-02-10 09:52:17.346', 'admin', '2026-02-10 09:52:17.346');
INSERT INTO `wms_receipt_order` VALUES (2021225501361573889, 'RK02104222', 1, 111, NULL, '1323123', 2, 1828354153193836545, '3123123', 1828364609002311682, 'admin', '2026-02-10 16:11:26.748', 'admin', '2026-02-10 16:11:26.748');
INSERT INTO `wms_receipt_order` VALUES (2021225590666694657, 'RK02104222', 1, 111, NULL, '1323123', 2, 1828354153193836545, '3123123', 1828364609002311682, 'admin', '2026-02-10 16:11:48.028', 'admin', '2026-02-10 16:11:48.028');
INSERT INTO `wms_receipt_order` VALUES (2021226073892478977, 'RK02104222', 1, 111, NULL, '1323123', 2, 1828354153193836545, '3123123', 1828364609002311682, 'admin', '2026-02-10 16:13:43.239', 'admin', '2026-02-10 16:13:43.239');
INSERT INTO `wms_receipt_order` VALUES (2022363383853391873, 'PK20260213001', NULL, 1, NULL, NULL, 2, NULL, NULL, 1828364609002311682, 'admin', '2026-02-13 19:32:59.068', 'admin', '2026-02-13 19:32:59.068');

-- ----------------------------
-- Table structure for wms_receipt_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `wms_receipt_order_detail`;
CREATE TABLE `wms_receipt_order_detail`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `receipt_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '入库单id',
  `sku_id` bigint NULL DEFAULT NULL COMMENT '规格id',
  `quantity` bigint NULL DEFAULT NULL COMMENT '入库数量',
  `unit_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '单价',
  `warehouse_id` bigint NULL DEFAULT NULL COMMENT '所属仓库',
  `storage_shelf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '货架',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(3) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(3) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2022363383895334914 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '入库单详情' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wms_receipt_order_detail
-- ----------------------------
INSERT INTO `wms_receipt_order_detail` VALUES (1843920012088791042, '1843920012030070785', 1840282974696374273, 4, 4000.00, 1828364609002311682, NULL, NULL, 'ck', '2024-10-09 15:42:43.920', 'ck', '2024-10-09 15:42:43.920');
INSERT INTO `wms_receipt_order_detail` VALUES (1843920012105568258, '1843920012030070785', 1840282974629265410, 4, 4000.00, 1828364609002311682, NULL, NULL, 'ck', '2024-10-09 15:42:43.922', 'ck', '2024-10-09 15:42:43.922');
INSERT INTO `wms_receipt_order_detail` VALUES (2021125396427632641, '2021125396364718081', 1840282974696374273, 111, NULL, 1828364609002311682, NULL, NULL, 'admin', '2026-02-10 09:33:39.860', 'admin', '2026-02-10 09:33:39.860');
INSERT INTO `wms_receipt_order_detail` VALUES (2021130083516215297, '2021130083507826689', 1840282974696374273, 1, 111.00, 1828364609002311682, NULL, NULL, 'admin', '2026-02-10 09:52:17.349', 'admin', '2026-02-10 09:52:17.349');
INSERT INTO `wms_receipt_order_detail` VALUES (2021166457648771073, '2021166457636188162', 1840282974696374273, 111, 22.00, 1828364609002311682, NULL, NULL, 'admin', '2026-02-10 12:16:49.618', 'admin', '2026-02-10 12:16:49.618');
INSERT INTO `wms_receipt_order_detail` VALUES (2021225509955702786, '2021225501361573889', 1840282974696374273, 111, NULL, 1828364609002311682, '1111', NULL, 'admin', '2026-02-10 16:11:28.788', 'admin', '2026-02-10 16:11:28.788');
INSERT INTO `wms_receipt_order_detail` VALUES (2021225590666694658, '2021225590666694657', 1840282974696374273, 111, NULL, 1828364609002311682, '1111', NULL, 'admin', '2026-02-10 16:11:48.032', 'admin', '2026-02-10 16:11:48.032');
INSERT INTO `wms_receipt_order_detail` VALUES (2021225590666694659, '2021225590666694657', 1840282974696374273, 111, NULL, 1828364609002311682, '222', NULL, 'admin', '2026-02-10 16:11:48.034', 'admin', '2026-02-10 16:11:48.034');
INSERT INTO `wms_receipt_order_detail` VALUES (2021226073942810626, '2021226073892478977', 1840282974696374273, 111, NULL, 1828364609002311682, '1111', NULL, 'admin', '2026-02-10 16:13:43.254', 'admin', '2026-02-10 16:13:43.254');
INSERT INTO `wms_receipt_order_detail` VALUES (2021226073942810627, '2021226073892478977', 1840282974696374273, 2, NULL, 1828364609002311682, '222', NULL, 'admin', '2026-02-10 16:13:43.255', 'admin', '2026-02-10 16:13:43.255');
INSERT INTO `wms_receipt_order_detail` VALUES (2022363383895334913, '2022363383853391873', 1829398333903007745, 1, NULL, 1828364609002311682, NULL, NULL, 'admin', '2026-02-13 19:32:59.081', 'admin', '2026-02-13 19:32:59.081');

-- ----------------------------
-- Table structure for wms_shipment_order
-- ----------------------------
DROP TABLE IF EXISTS `wms_shipment_order`;
CREATE TABLE `wms_shipment_order`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `shipment_no` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '出库单号，系统自动生成',
  `shipment_status` tinyint NULL DEFAULT NULL COMMENT '出库单状态',
  `total_quantity` bigint NULL DEFAULT NULL COMMENT '总数量',
  `total_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '总金额',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `opt_type` int NULL DEFAULT NULL COMMENT '出库类型',
  `biz_order_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '业务订单号',
  `recipient` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '领用人',
  `warehouse_id` bigint NULL DEFAULT NULL COMMENT '仓库id',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(3) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(3) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2021225181025800194 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '出库单' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wms_shipment_order
-- ----------------------------
INSERT INTO `wms_shipment_order` VALUES (1843920133316759553, 'CK10094547', 1, 1, NULL, NULL, 2, NULL, NULL, 1828364609002311682, 'ck', '2024-10-09 15:43:12.821', 'ck', '2024-10-09 15:43:12.821');
INSERT INTO `wms_shipment_order` VALUES (2021223519506804737, 'RK02104222', 1, 111, NULL, '1323123', 2, '3123123', '1828354153193836545', 1828364609002311682, 'admin', '2026-02-10 16:03:34.226', 'admin', '2026-02-10 16:03:34.226');
INSERT INTO `wms_shipment_order` VALUES (2021224190628999169, 'RK021042212', 1, 111, NULL, '1323123', 2, '3123123', '1828354153193836545', 1828364609002311682, 'admin', '2026-02-10 16:06:14.234', 'admin', '2026-02-10 16:06:14.234');

-- ----------------------------
-- Table structure for wms_shipment_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `wms_shipment_order_detail`;
CREATE TABLE `wms_shipment_order_detail`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `shipment_id` bigint NULL DEFAULT NULL COMMENT '出库单id',
  `warehouse_id` bigint NULL DEFAULT NULL COMMENT '所属仓库',
  `sku_id` bigint NULL DEFAULT NULL COMMENT '规格id',
  `quantity` bigint NULL DEFAULT NULL COMMENT '数量',
  `storage_shelf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '货架',
  `unit_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '金额',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(3) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(3) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2021225271392079874 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '出库单详情' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wms_shipment_order_detail
-- ----------------------------
INSERT INTO `wms_shipment_order_detail` VALUES (1843920133354508289, 1843920133316759553, 1828364609002311682, 1840282974629265410, 1, NULL, NULL, NULL, 'ck', '2024-10-09 15:43:12.830', 'ck', '2024-10-09 15:43:12.830');
INSERT INTO `wms_shipment_order_detail` VALUES (2021223519506804738, 2021223519506804737, 1828364609002311682, 1840282974696374273, 111, '111111', NULL, NULL, 'admin', '2026-02-10 16:03:34.236', 'admin', '2026-02-10 16:03:34.236');
INSERT INTO `wms_shipment_order_detail` VALUES (2021224190628999170, 2021224190628999169, 1828364609002311682, 1840282974696374273, 111, '111111', NULL, NULL, 'admin', '2026-02-10 16:06:14.236', 'admin', '2026-02-10 16:06:14.236');

-- ----------------------------
-- Table structure for wms_warehouse
-- ----------------------------
DROP TABLE IF EXISTS `wms_warehouse`;
CREATE TABLE `wms_warehouse`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `warehouse_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '编号',
  `warehouse_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '名称',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `sort` int NULL DEFAULT 0 COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(3) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(3) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1840317750635581442 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '仓库' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of wms_warehouse
-- ----------------------------
INSERT INTO `wms_warehouse` VALUES (1828364609002311682, NULL, '神洲一号仓', NULL, 1, 'admin', '2024-08-27 17:31:06.000', 'admin', '2026-02-13 19:08:35.664');

SET FOREIGN_KEY_CHECKS = 1;
