ALTER TABLE base_label ADD COLUMN label_type VARCHAR(16) COMMENT '标签类型';

UPDATE base_label SET label_type = 'S'