INSERT INTO table_sequence (id, name, value, prefix, increment, min_value, max_value, create_time, update_time)
VALUES (2, 'user_group.id', 9999999, 'UG', 1, 1000000, 9999999, NOW(), NOW());

INSERT INTO user_group (group_id, group_name, group_desc, tags, created_by, created_time, updated_by, updated_time)
    VALUES (get_seq_next('user_group.id'), '基础用户群', '基础用户群',
            '[{"value":"BL1000000","label":"性别"},{"value":"BL1000001","label":"收入"},{"value":"BL1000002","label":"学历"}]',
            'admin', NOW(), 'admin', NOW())
