INSERT INTO user_permission (user_id)
    SELECT user_id FROM user_info;

UPDATE user_permission SET permission = 'A' WHERE user_id = 'admin'
