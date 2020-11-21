ALTER TABLE base_label ADD COLUMN label_hot DECIMAL(10, 1) DEFAULT 3 COMMENT  '标签热度';

UPDATE base_label SET label_type = 3
