CREATE TABLE authors (
    id INT PRIMARY KEY,
    author_name VARCHAR(50) NOT NULL
);


CREATE TABLE books (
    id INT PRIMARY KEY,
    book_title VARCHAR(50) NOT NULL,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(id)
);


INSERT INTO authors (id, author_name)
VALUES
    (1, 'Agatha Christie'),
    (2, 'Isaac Asimov'),
    (3, 'Yuval Noah Harari');


INSERT INTO books (id, book_title, author_id)
VALUES
    (1, 'Murder on the Orient Express', 1),
    (2, 'I, Robot', 2),
    (3, 'Foundation', 2),
    (4, 'Sapiens', 3),
    (5, 'And Then There Were None', 1);

SELECT *
FROM books
WHERE author_id = 2;

--לא הצלחתי את סעיף 4