DROP TABLE IF EXISTS user_group;

CREATE TABLE user_group (
  group_id VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  group_name VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  group_desc VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  tags TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  created_by VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  created_time TIMESTAMP COLLATE utf8mb4_bin NULL DEFAULT NULL,
  updated_by VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  updated_time TIMESTAMP COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (group_id) USING BTREE,
  UNIQUE KEY id (group_id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

ALTER TABLE user_group COMMENT '用户群表';
ALTER TABLE user_group MODIFY COLUMN group_id VARCHAR(64) COMMENT '用户群ID';
ALTER TABLE user_group MODIFY COLUMN group_name VARCHAR(64) COMMENT '用户群名称';
ALTER TABLE user_group MODIFY COLUMN group_desc VARCHAR(64) COMMENT '用户群名称';
ALTER TABLE user_group MODIFY COLUMN tags TEXT COMMENT '用户群标签JSON';
ALTER TABLE user_group MODIFY COLUMN created_by VARCHAR(64) COMMENT '创建人';
ALTER TABLE user_group MODIFY COLUMN created_time TIMESTAMP COMMENT '创建时间';
ALTER TABLE user_group MODIFY COLUMN updated_by VARCHAR(64) COMMENT '更新人';
ALTER TABLE user_group MODIFY COLUMN updated_time TIMESTAMP COMMENT '更新时间';

ALTER TABLE user_group ADD INDEX idx_group_id(group_id);