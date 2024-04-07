-- SQLite
select*from Authors


--new

CREATE TABLE Publishers(
Id int PRIMARY KEY,
NAME nvarchar(200),
Address nvarchar(400),
Phone varchar(10),
Registration nvarchar(100)

);

CREATE TABLE AuthorDetails(
Id int PRIMARY KEY,
Education nvarchar(200),
Publications nvarchar(400),
Organization varchar(10),
AuthorDetailId integer,
FOREIGN KEY(AuthorDetailId) REFERENCES Authors(Id)
);

INSERT INTO AuthorDetails
VALUES(1,'Bachelors','None','Appsoft',1);

INSERT INTO AuthorDetails
VALUES(2,'Computer Science','None','Appsoft',1);


select*from AuthorDetails

SELECT a.Name , a.Email, ad.Organization
FROM Authors a
JOIN AuthorDetails ad ON a.Id = ad.AuthorDetailId;


.tables
drop table Authors

--Relations: one to one , one to many, many to many
ALTER TABLE Authors
ADD FOREIGN KEY(AuthorDetails(Id) REFERENCES AuthorDetails(Id))

CREATE TABLE Books(
Id INTEGER PRIMARY KEY,
Title nvarchar(200),
Edition nvarchar(400),
Price int,
ISBN nvarchar(50),
Publication DATE
);

Insert into Books
VALUES(1,'Cloud Conputing','Second 2022',355,'984-3464-785-3','2022-04-06'),
(2,'Advanced database','First 2022',495,'985-2464-467-1','2023-03-06');
SELECT*FROM Books

CREATE TABLE Authors(
Id integer PRIMARY KEY,
Name varchar(50),
Gender varchar(50),
Address nvarchar(50),
Email nvarchar(50),
Dob nvarchar(50),
AuthorsId integer,
FOREIGN KEY(AuthorsId) REFERENCES Books(Id)
);

INSERT INTO Authors
VALUES(1, 'Bhupendra Singh Saud', 'Male', 'Nepal', 'kecpublication@gmail.com', '1980-03-09', 1),
    (2, 'Arjun Saud', 'Male', 'Nepal', 'kecpublication@gmail.com', '1985-09-04', 2);
INSERT INTO Authors
VALUES(3, 'Arjun Saud', 'Male', 'Nepal', 'kecpublication@gmail.com', '1980-03-09', 1);

SELECT Books.Title, Authors.Name
FROM Books
JOIN Authors ON Books.Id = Authors.AuthorsId;

SELECT Books.Title, COUNT(Authors.Id) AS AuthorCount
FROM Books
LEFT JOIN Authors ON Books.Id = Authors.AuthorsId
GROUP BY Books.Id, Books.Title;

SELECT Authors.Name, Books.Title
FROM Authors
JOIN Books ON Authors.AuthorsId = Books.Id;
