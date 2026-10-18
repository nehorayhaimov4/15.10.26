CREATE TABLE class_signups (
    id INT PRIMARY KEY,
    contact_email VARCHAR(50) UNIQUE NOT NULL,
    participant_name VARCHAR(50) NOT NULL,
    fitness_score INT CHECK (fitness_score BETWEEN 0 AND 50),
    payment_status VARCHAR(6) DEFAULT 'unpaid'
);


INSERT INTO class_signups
    (id, contact_email, participant_name, fitness_score, payment_status)
VALUES
    (1, 'maya@mail.com', 'Maya', 44, 'paid'),
    (2, 'tomer@mail.com', 'Tomer', 29, 'unpaid'),
    (3, 'noa2@mail.com', 'Noa', 38, 'paid'),
    (4, 'liam@mail.com', 'Liam', 47, 'unpaid');


SELECT *
FROM class_signups
WHERE payment_status = 'paid';

SELECT *
FROM class_signups
WHERE participant_name LIKE '%m';