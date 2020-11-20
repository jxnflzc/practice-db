DROP TABLE IF EXISTS table_sequence;

CREATE TABLE table_sequence (
  id bigint(21) NOT NULL AUTO_INCREMENT COMMENT '序列号ID',
  name varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '序列名',
  value bigint(21) NOT NULL COMMENT '序列值',
  prefix varchar(100) NOT NULL DEFAULT '' COMMENT '序列值前綴',
  increment int(1) NOT NULL DEFAULT 1 COMMENT '序列自增值 1',
  min_value bigint(21) NOT NULL DEFAULT 1000000 COMMENT '最小序列值',
  max_value bigint(21) NOT NULL DEFAULT 9999999 COMMENT '最大序列值',
  create_time timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  update_time timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (id) USING BTREE,
  UNIQUE KEY id (id) USING BTREE,
  UNIQUE KEY name (name) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic COMMENT '序列表';