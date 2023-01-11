--- DDL (Data Definition Language)
--- CREATE TABLE
--- ALTER TABLE
--- DROP TABLE
CREATE TABLE pupils
(
    pupil_id SMALLINT PRIMARY KEY ,
    first_name VARCHAR(20) NOT NULL ,
    last_name VARCHAR(30) NOT NULL,
    gender CHARACTER NOT NULL ,
    phone_or_email VARCHAR(100) ,
    typing VARCHAR(10) NOT NULL ,
    address TEXT NOT NULL
);

--- DML (Data Manipulating Language)
--- INSERT
--- UPDATE
--- DELETE
INSERT INTO pupils(pupil_id, first_name, last_name, gender, phone_or_email, typing, address)
VALUES
(1, 'Marlen', 'Temirbaev', 'M', 'mouflon150@gmail.com', '50wpm', 'Zavodskaya street № ?'),
(2, 'Dastan', 'Abdullaev', 'M', 'dosyafree32@gmail.com', '50wpm', 'unknown'),
(3, 'Bekbolsun', 'Nasipbekov', 'M', 'nasipbekov01@gmail.com', '40wpm', 'unknown'),
(4, 'Daniel', 'Ahadzanov', 'M', 'danijelahatzanov@gmail.com', '90wpm', 'near an educational institution'),
(5, 'Sardor', 'Kalmurzaev', 'M', '+996771007806', '40wpm', 'Kolhoznaya street № ?');
