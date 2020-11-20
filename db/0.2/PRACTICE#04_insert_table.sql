#批量插入标签
DELETE FROM base_label WHERE label_id IS NOT NULL;
INSERT INTO base_label (label_id, label_name, label_value, label_type, created_by, created_time, updated_by, updated_time)
    VALUES (get_seq_next('base_label.id'), '性别', '男、女', 'S', 'admin', NOW(), 'admin', NOW());
INSERT INTO base_label (label_id, label_name, label_value, label_type, created_by, created_time, updated_by, updated_time)
    VALUES (get_seq_next('base_label.id'), '年收入', '0-10万、10-50万、50万以上', 'S', 'admin', NOW(), 'admin', NOW());
INSERT INTO base_label (label_id, label_name, label_value, label_type, created_by, created_time, updated_by, updated_time)
    VALUES (get_seq_next('base_label.id'), '学历', '高中及以下、专科、本科、硕士、博士', 'S', 'admin', NOW(), 'admin', NOW());