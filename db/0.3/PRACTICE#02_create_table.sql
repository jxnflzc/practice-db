DROP TABLE IF EXISTS user_permission;

CREATE TABLE user_permission  (
  user_id VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  permission VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT 'O',
  PRIMARY KEY (user_id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

ALTER TABLE user_permission COMMENT '用户权限表';
ALTER TABLE user_permission MODIFY COLUMN user_id VARCHAR(64) COMMENT '用户ID';
ALTER TABLE user_permission MODIFY COLUMN permission VARCHAR(64) DEFAULT 'O' COMMENT '用户权限';

ALTER TABLE user_permission ADD INDEX idx_user_id(user_id);
