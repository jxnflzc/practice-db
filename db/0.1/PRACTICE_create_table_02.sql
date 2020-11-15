DROP TABLE IF EXISTS user_sign;

CREATE TABLE user_sign  (
  user_id VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  user_password VARCHAR(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  PRIMARY KEY (user_id) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

ALTER TABLE user_sign COMMENT '用户账号密码表';
ALTER TABLE user_sign MODIFY COLUMN user_id VARCHAR(64) COMMENT '用户ID';
ALTER TABLE user_sign MODIFY COLUMN user_password VARCHAR(64) COMMENT '用户密码';

ALTER TABLE user_sign ADD INDEX idx_user_id(user_id);