CREATE TABLE help_requests (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    visitor_name VARCHAR(50) NOT NULL CHECK (visitor_name <> ''),
    urgency_level VARCHAR(6),
    wait_minutes INT
);


INSERT INTO help_requests (visitor_name, urgency_level, wait_minutes)
VALUES
    ('Yael', 'urgent', 12),
    ('Avi', 'normal', 45),
    ('Roni', 'urgent', 8),
    ('Tal', 'low', 60);

SELECT *
FROM help_requests
WHERE urgency_level = 'urgent';

--סעיף אחרון לא הצלחתי