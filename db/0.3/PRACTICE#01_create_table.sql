DROP TABLE IF EXISTS practice_log;

CREATE TABLE practice_log (
  log_id VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  log_type VARCHAR(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  log_content TEXT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  created_by VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  created_time TIMESTAMP COLLATE utf8mb4_bin NULL DEFAULT NULL,
  updated_by VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  updated_time TIMESTAMP COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (log_id) USING BTREE,
  UNIQUE KEY id (log_id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

ALTER TABLE practice_log COMMENT '日志表';
ALTER TABLE practice_log MODIFY COLUMN log_id VARCHAR(64) COMMENT '日志ID';
ALTER TABLE practice_log MODIFY COLUMN log_type VARCHAR(64) COMMENT '日志类型';
ALTER TABLE practice_log MODIFY COLUMN log_content VARCHAR(64) COMMENT '日志内容';
ALTER TABLE practice_log MODIFY COLUMN created_by VARCHAR(64) COMMENT '创建人';
ALTER TABLE practice_log MODIFY COLUMN created_time TIMESTAMP COMMENT '创建时间';
ALTER TABLE practice_log MODIFY COLUMN updated_by VARCHAR(64) COMMENT '更新人';
ALTER TABLE practice_log MODIFY COLUMN updated_time TIMESTAMP COMMENT '更新时间';

ALTER TABLE practice_log ADD INDEX idx_label_id(log_id);
