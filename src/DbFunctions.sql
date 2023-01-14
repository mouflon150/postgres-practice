--- DDL (Data Definition Language)
--- CREATE TABLE
--- INSERT
--- ALTER TABLE
--- DROP TABLE
CREATE TABLE students
(
    student_id SMALLINT PRIMARY KEY ,
    first_name VARCHAR(20) NOT NULL ,
    last_name VARCHAR(30) NOT NULL,
    gender CHARACTER NOT NULL CHECK ( gender = 'M' OR gender = 'F' ),
    phone_or_email VARCHAR(100) UNIQUE ,
    typing VARCHAR(10) NOT NULL ,
    address TEXT NOT NULL
);

DROP TABLE students;

ALTER TABLE students
RENAME TO pupils;

ALTER TABLE students
ADD COLUMN birth DATE;

INSERT INTO students(student_id, first_name, last_name, gender, birth, phone_or_email, typing, address)
VALUES
(1, 'Marlen', 'Temirbaev', 'M', '2005-04-27', 'mouflon150@gmail.com', '50wpm', 'Zavodskaya street № ?'),
(2, 'Dastan', 'Abdullaev', 'M', '2006-02-04', 'dosyafree32@gmail.com', '50wpm', 'unknown'),
(3, 'Bekbolsun', 'Nasipbekov', 'M', '2006-03-12', 'nasipbekov01@gmail.com', '40wpm', 'unknown'),
(4, 'Daniel', 'Ahadzanov', 'M', '2007-11-11', 'danijelahatzanov@gmail.com', '90wpm', 'unknown'),
(5, 'Sardor', 'Kalmurzaev', 'M', '2005-09-30', '+996771007806', '40wpm', 'Kolhoznaya street № ?');

INSERT INTO students(student_id, first_name, last_name, gender, birth, phone_or_email, typing, address)
VALUES
(6, 'Elbek', 'Mashrapov', 'M', '2006-08-02', 'elbekmashrapov@gmail.com', '90wpm', 'unknown');

SELECT *
FROM students
WHERE first_name LIKE 'Marlen';

SELECT *
FROM students
ORDER BY birth;
--- DML (Data Manipulating Language)
--- UPDATE
--- DELETE
UPDATE students
SET phone_or_email = 'neon0530@gmail.com'
WHERE student_id = 5;

DELETE FROM students
WHERE student_id = 6;