-- SQLite
select*from Authors


--new
INSERT INTO Authors
VALUES(3,'TOM','F','NEPAL','AAA@GMAIL.COM','10/20');

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
Publication nvarchar(100)
);

PRAGMA table_info(Books);

CREATE TABLE AuthorDetails(
Id INTEGER PRIMARY KEY,
Name varchar(

