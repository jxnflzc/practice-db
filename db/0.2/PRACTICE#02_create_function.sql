DROP FUNCTION IF EXISTS get_seq_current;
CREATE FUNCTION get_seq_current(seq_name char(100))
    RETURNS BIGINT
    LANGUAGE SQL
    DETERMINISTIC
    CONTAINS SQL
    SQL	SECURITY DEFINER
    COMMENT ''
BEGIN
    DECLARE current_value BIGINT;
    SET current_value = 0;
    SELECT value into current_value FROM table_sequence WHERE name = seq_name;
    RETURN current_value;
END;

DROP FUNCTION IF EXISTS get_seq_max;
CREATE FUNCTION get_seq_max(seq_name char(100))
	RETURNS BIGINT
	LANGUAGE SQL
	DETERMINISTIC
	CONTAINS SQL
	SQL	SECURITY DEFINER
	COMMENT ''
BEGIN
	DECLARE max BIGINT;
	SET max = 0;
	SELECT max_value into max FROM table_sequence WHERE name = seq_name;
	RETURN max;
END;

DROP FUNCTION IF EXISTS get_seq_next;
CREATE FUNCTION get_seq_next(seq_name char(100))
    RETURNS VARCHAR(100)
    LANGUAGE SQL
    DETERMINISTIC
    CONTAINS SQL
    SQL	SECURITY DEFINER
    COMMENT ''
BEGIN
    DECLARE pre VARCHAR(100);
    SET pre = '';
    SELECT prefix into pre FROM table_sequence WHERE name = seq_name;
    IF(get_seq_current(seq_name) >= get_seq_max(seq_name))THEN
        update table_sequence SET value = min_value where name = seq_name;
    ELSE
        update table_sequence SET value = (value + increment) where name = seq_name;
    END IF;
    RETURN CONCAT(pre,get_seq_current(seq_name));
END;