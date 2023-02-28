CREATE TABLE IF NOT EXISTS `product_sku` (
    `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
    `spu_id` bigint NOT NULL COMMENT 'spu编号',
    `spu_name` varchar DEFAULT NULL COMMENT '商品 SPU 名字',
    `properties` varchar DEFAULT NULL COMMENT '规格值数组-json格式， [{propertId: , valueId: }, {propertId: , valueId: }]',
    `price` int NOT NULL DEFAULT '-1' COMMENT '销售价格，单位：分',
    `market_price` int DEFAULT NULL COMMENT '市场价',
    `cost_price` int NOT NULL DEFAULT '-1' COMMENT '成本价，单位： 分',
    `pic_url` varchar NOT NULL COMMENT '图片地址',
    `stock` int DEFAULT NULL COMMENT '库存',
    `warn_stock` int DEFAULT NULL COMMENT '预警库存',
    `volume` double DEFAULT NULL COMMENT '商品体积',
    `weight` double DEFAULT NULL COMMENT '商品重量',
    `bar_code` varchar DEFAULT NULL COMMENT '条形码',
    `status` tinyint DEFAULT NULL COMMENT '状态： 0-正常 1-禁用',
    `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `creator` varchar DEFAULT NULL COMMENT '创建人',
    `updater` varchar DEFAULT NULL COMMENT '更新人',
    `deleted` bit(1) NOT NULL DEFAULT 0 COMMENT '是否删除',
    PRIMARY KEY (`id`)
) COMMENT '商品sku';


CREATE TABLE IF NOT EXISTS `product_spu` (
    `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
    `tenant_id` bigint NOT NULL DEFAULT '0' COMMENT '租户编号',
    `brand_id` bigint DEFAULT NULL COMMENT '商品品牌编号',
    `category_id` bigint NOT NULL COMMENT '分类id',
    `spec_type` int NOT NULL COMMENT '规格类型：0 单规格 1 多规格',
    `code` varchar(128) DEFAULT NULL COMMENT '商品编码',
    `name` varchar(128) NOT NULL COMMENT '商品名称',
    `sell_point` varchar(128) DEFAULT NULL COMMENT '卖点',
    `description` text COMMENT '描述',
    `pic_urls` varchar(1024) DEFAULT '' COMMENT '商品轮播图地址数组，以逗号分隔最多上传15张',
    `video_url` varchar(128) DEFAULT NULL COMMENT '商品视频',
    `market_price` int DEFAULT NULL COMMENT '市场价，单位使用：分',
    `min_price` int DEFAULT NULL COMMENT '最小价格，单位使用：分',
    `max_price` int DEFAULT NULL COMMENT '最大价格，单位使用：分',
    `total_stock` int NOT NULL DEFAULT '0' COMMENT '总库存',
    `show_stock` int DEFAULT '0' COMMENT '是否展示库存',
    `sales_count` int DEFAULT '0' COMMENT '商品销量',
    `virtual_sales_count` int DEFAULT '0' COMMENT '虚拟销量',
    `click_count` int DEFAULT '0' COMMENT '商品点击量',
    `status` bit(1) DEFAULT NULL COMMENT '上下架状态： 0 上架（开启） 1 下架（禁用）-1 回收',
    `sort` int NOT NULL DEFAULT '0' COMMENT '排序字段',
    `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `creator` varchar DEFAULT NULL COMMENT '创建人',
    `updater` varchar DEFAULT NULL COMMENT '更新人',
    `deleted` bit(1) NOT NULL DEFAULT 0 COMMENT '是否删除',
PRIMARY KEY (`id`)
) COMMENT '商品spu';

CREATE TABLE IF NOT EXISTS `product_category` (
    `id` bigint NOT NULL AUTO_INCREMENT COMMENT '分类编号',
    `parent_id` bigint DEFAULT NULL COMMENT '父分类编号',
    `name` varchar(128) NOT NULL COMMENT '分类名称',
    `description` varchar(128) NOT NULL COMMENT '分类描述',
    `pic_url` varchar DEFAULT NULL COMMENT '分类图片',
    `sort` int NOT NULL DEFAULT '0' COMMENT '排序字段',
    `status` bit(1) DEFAULT NULL COMMENT '状态',
    `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `creator` varchar DEFAULT NULL COMMENT '创建人',
    `updater` varchar DEFAULT NULL COMMENT '更新人',
    `deleted` bit(1) NOT NULL DEFAULT 0 COMMENT '是否删除',
    PRIMARY KEY (`id`)
) COMMENT '商品分类';

CREATE TABLE IF NOT EXISTS `product_brand` (
    `id` bigint NOT NULL AUTO_INCREMENT COMMENT '品牌编号',
    `name` varchar(128) NOT NULL COMMENT '品牌名称',
    `pic_url` varchar DEFAULT NULL COMMENT '品牌图片',
    `sort` int NOT NULL DEFAULT '0' COMMENT '排序字段',
    `description` varchar(256) NOT NULL DEFAULT '0' COMMENT '品牌描述',
    `status` bit(1) DEFAULT NULL COMMENT '状态',
    `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    `creator` varchar DEFAULT NULL COMMENT '创建人',
    `updater` varchar DEFAULT NULL COMMENT '更新人',
    `deleted` bit(1) NOT NULL DEFAULT 0 COMMENT '是否删除',
    PRIMARY KEY (`id`)
) COMMENT '商品品牌';
