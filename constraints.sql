Create Table Users(ID int NOT NULL primary Key,FirstName VarChar(255),LastName VarChar(255),Email VarChar(255),City VarChar(255),Salary int,Designation VarChar(255),CreatedTime Time,ModifiedDate Date,IsActive BIT)

Create Table Groups(ID int NOT NULL primary Key, GroupName VarChar(255), Descriptions VarChar(255),CreatedDate Date,ModifiedDate Date,IsActive BIT)

Create Table UserGroups(ID int NOT NULL primary Key,GroupId int,fk_UserId int,
						CONSTRAINT fk_GroupId FOREIGN KEY (GroupId) REFERENCES Groups(ID),
                        CONSTRAINT fk_UserId FOREIGN KEY (fk_UserId) REFERENCES Users(ID),ModifiedDate Date,IsActive BIT)


insert into Users(ID,FirstName,LastName,Email,City,Salary,Designation,CreatedTime,ModifiedDate,IsActive) values(1,'Roja','Kubi','rojakubi2gmail.com','chennai',20000,'developer',Now(),Now(),'0')
insert into Users(ID,FirstName,LastName,Email,City,Salary,Designation,CreatedTime,ModifiedDate,IsActive) values(2,'Laksha','Kubi','rojakubi2gmail.com','chennai',22000,'developer',Now(),Now(),'1')
insert into Users(ID,FirstName,LastName,Email,City,Salary,Designation,CreatedTime,ModifiedDate,IsActive) values(3,'Bhuvaneswari','Kubi','rojakubi2gmail.com','chennai',24000,'developer',Now(),'2022-12-01','0')
insert into Users(ID,FirstName,LastName,Email,City,Salary,Designation,CreatedTime,ModifiedDate,IsActive) values(4,'Bharathi','Raja','rojakubi2gmail.com','chennai',23000,'developer',Now(),'2022-12-01','1')
insert into Users(ID,FirstName,LastName,Email,City,Salary,Designation,CreatedTime,ModifiedDate,IsActive) values(5,'Kavya','Vasu','rojakubi2gmail.com','chennai',30000,'developer',Now(),Now(),'0')

insert into Groups(ID,GroupName,Descriptions,CreatedDate,ModifiedDate,IsActive) values(1,'RojaKubi','developer',Now(),Now(),'0')
Insert into Groups(ID,GroupName,Descriptions,CreatedDate,ModifiedDate,IsActive) values(2,'LakshaKubi','developer',Now(),Now(),'1')
Insert into Groups(ID,GroupName,Descriptions,CreatedDate,ModifiedDate,IsActive) values(3,'BhuvaneswariKubi','developer',Now(),'2022-12-01','0')
Insert into Groups(ID,GroupName,Descriptions,CreatedDate,ModifiedDate,IsActive) values(4,'BharathiRaja','developer',Now(),'2022-12-01','1')
Insert into Groups(ID,GroupName,Descriptions,CreatedDate,ModifiedDate,IsActive) values(5,'KavyaVasu','developer',Now(),Now(),'0')

Insert Into UserGroups(ID,GroupId,fk_UserId,ModifiedDate,IsActive) values(10,1,1,Now(),'0')
Insert Into UserGroups(ID,GroupId,fk_UserId,ModifiedDate,IsActive) values(11,2,1,Now(),'1')
Insert Into UserGroups(ID,GroupId,fk_UserId,ModifiedDate,IsActive) values(12,1,3,Now(),'0')
Insert Into UserGroups(ID,GroupId,fk_UserId,ModifiedDate,IsActive) values(13,4,5,Now(),'0')
Insert Into UserGroups(ID,ModifiedDate,IsActive) values(14,Now(),'1')
select * from Users;
select * from Groups;
Select * FROM UserGroups

ALTER TABLE Groups
ALTER COLUMN Descriptions SET DEFAULT 'No description.';
UPDATE Groups
SET Descriptions = 'No description.'
WHERE Descriptions='developer';

