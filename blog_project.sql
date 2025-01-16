CREATE TABLE authors(
id INT AUTO_INCREMENT PRIMARY KEY,
author_name varchar(255) NOT NULL,
 created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
 updated_at TIMESTAMP DEFAULT  CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP

);

CREATE TABLE categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE TABLE blogs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    body TEXT NOT NULL,
    category_id INT NOT NULL,
    author_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (author_id) REFERENCES authors(id) ON DELETE CASCADE ON UPDATE CASCADE
);


INSERT  INTO authors ( author_name) VALUE("jon due");
--write multipule data from authors
SELECT*FROM authors;
--write a single data in authors
SELECT*FROM authors where id=3;
--update a name in authors or rename in table 
UPDATE authors SET author_name = "jon dash" WHERE id=2;
--how to delete in a table 
DELETE FROM authors WHERE id=1;
INSERT INtO categories (category_name) VALUES ("my category");
--how to read all data in categories in categories in table 
SELECT *FROM categories;
--HOW TO READ ALL data in authors 
SELECT *FROM blogs;
--Hw to read all data in authors in the authors id
SELECT *FROM authors;
--specific categories in use id and the categories 
SELECT*FROM categories WHERE id=1;
--update a category name is now 
UPDATE categories SET category_name="our category" where id = 1;
DELETE FROM categories WHERE id=1;
--how to insert a new data in the blogs table in the sql
INSERT INTO blogs (title,body,category_id,author_id)
VALUES
('MONEY','ONE day it have already finished',2,2);
--current a id from blogsS
SELECT *FROM blogs WHERE id=1;
--all in one the blogs 
SELECT *FROM blogs;
--updated blogs in the blogs table
UPDATE blogs SET title="NO honey" WHERE id=1;
--how to delete in the blogs table 
DELETE FROM blogs WHERE id=1;
--



SELECT blogs.title,blogs.body,categories.category_name,authors.author_name
FROM blogs
JOIN categories ON blogs.category_id = categories.id
JOIN authors ON blogs.author_id = authors.id;

UPDATE blogs SET category_id = 4, author_id = 3 WHERE id = 10;

--for a specfic user

SELECT authors.author_name,blogs.title,blogs.body
FROM 
    blogs
    JOIN authors ON blogs.author_id = authors.id
    where author_id=3;
    --JOIN categories ON blogs.category_id = category.id;

--or that's for a legend
 --ther the form is so normally is the friendship just wow
 
 SELECT authors.author_name,blogs.title,blogs.title, blogs.body,categories.category_name

 FROM 
 blogs
 JOIN authors ON blogs.author_id = authors.id
 JOIN categories ON blogs.category_id=categories.id
 WHERE authors.id = 3;        