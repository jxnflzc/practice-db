#批量插入标签
INSERT INTO base_label (label_id, label_name, label_value, created_by, created_time, updated_by, updated_time)
    VALUES (REPLACE(uuid(), '-', ''), '性别', '男、女', 'admin', NOW(), 'admin', NOW());
INSERT INTO base_label (label_id, label_name, label_value, created_by, created_time, updated_by, updated_time)
    VALUES (REPLACE(uuid(), '-', ''), '年收入', '0-10万、10-50万、50万以上', 'admin', NOW(), 'admin', NOW());
INSERT INTO base_label (label_id, label_name, label_value, created_by, created_time, updated_by, updated_time)
    VALUES (REPLACE(uuid(), '-', ''), '学历', '高中及以下、专科、本科、硕士、博士', 'admin', NOW(), 'admin', NOW());