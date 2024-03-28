Create database CC;
Use CC;
-- JobListing Table
Create table JobList(JobID int primary key,CompanyID int, JobTitle varchar(35),
JobDescription varchar(35) ,JobLocation varchar(35),Salary decimal(10,2),JobType varchar(35),PostedDate datetime,
foreign key (CompanyID) references Company(CompanyID));
-- Company Table
Create table Company(CompanyID int primary key, CompanyName varchar(35),Location varchar(35));
-- Applicant Table
Create table Applicant(ApplicantId int primary key,FirstName varchar(35),LastName varchar(35),
Email varchar(35),Phone int,Resume varchar(35));
-- JobApplication Table
Create table JobApplication(ApplicationID int primary key,JobID int,ApplicantID int,ApplicationDate datetime,
CoverLetter varchar(35),foreign key (JobID) references JobList(JobID),foreign key (ApplicantID) references Applicant(ApplicantID));


-- Table values

Insert into Company(CompanyID,CompanyName,Location)values
(1, 'ABC Corp', 'New York'),
(2, 'XYZ Inc.', 'Los Angeles'),
(3, 'PQR Ltd.', 'Chicago'),
(4, 'LMN Enterprises', 'San Francisco'),
(5, 'EFG Corp', 'Boston'),
(6, 'HIJ Inc.', 'Seattle'),
(7, 'STU Ltd.', 'Washington DC'),
(8, 'VWX Enterprises', 'Miami'),
(9, 'NOP Corp', 'Houston'),
(10, 'QRS Inc.', 'Denver');
Select * from Company;

Insert into Applicant(ApplicantID,FirstName,LastName,Email,Phone,Resume)values
(1, 'John', 'Doe', 'johndoe@example.com', 123456789, 'resume1.doc'),
(2, 'Jane', 'Smith', 'janesmith@example.com', 887654321, 'resume2.doc'),
(3, 'Michael', 'Johnson', 'michaeljohnson@example.com', 555555555, 'resume3.doc'),
(4, 'Emily', 'Davis', 'emilydavis@example.com', 1111111111, 'resume4.doc'),
(5, 'David', 'Anderson', 'davidanderson@example.com', 999999999, 'resume5.doc'),
(6, 'Sarah', 'Wilson', 'sarahwilson@example.com', 777777777, 'resume6.doc'),
(7, 'Matthew', 'Taylor', 'matthewtaylor@example.com', 444444444, 'resume7.doc'),
(8, 'Olivia', 'Thomas', 'oliviathomas@example.com', 222222222, 'resume8.doc'),
(9, 'Daniel', 'Moore', 'danielmoore@example.com', 888888888, 'resume9.doc'),
(10, 'Sophia', 'Clark', 'sophiaclark@example.com', 666666666, 'resume10.doc');
Select * from Applicant;

Insert into JobList(JobID,CompanyID,JobTitle,JobDescription,JobLocation,Salary,JobType,PostedDate) values
(1, 1, 'Software Engineer', 'Develop software applications', 'New York', 100000.00, 'Full-time', '2023-09-22 11:00:00'),
(2, 1, 'Data Analyst', 'Analyze data and provide insights', 'New York', 75000.00, 'Full-time', '2023-09-23 10:30:00'),
(3, 2, 'Marketing Manager', 'Develop marketing campaigns', 'Los Angeles', 90000.00, 'Full-time', '2023-09-24 15:45:00'),
(4, 3, 'Sales Representative', 'Sell products to potential customers', 'Chicago', 60000.00, 'Full-time', '2023-09-25 12:15:00'),
(5, 4, 'Human Resources Specialist', 'Manage employee records and benefits', 'San Francisco', 80000.00, 'Full-time', '2023-09-26 09:30:00'),
(6, 5, 'Product Manager', 'Manage product development and launch', 'Boston', 110000.00, 'Full-time', '2023-09-27 13:00:00'),
(7, 6, 'Web Developer', 'Build and maintain website functionality', 'Seattle', 85000.00, 'Full-time', '2023-09-28 16:45:00'),
(8, 7, 'UX Designer', 'Design and improve user experience', 'Washington DC', 95000.00, 'Full-time', '2023-09-29 10:00:00'),
(9, 8, 'Financial Analyst', 'Analyze financial statements and trends', 'Miami', 85000.00, 'Full-time', '2023-09-30 11:30:00'),
(10, 9, 'Graphic Designer', 'Develop visual communication materials', 'Houston', 65000.00, 'Full-time', '2023-10-01 14:30:00');
Select * from JobList;
ALTER TABLE JobList MODIFY COLUMN JobDescription VARCHAR(50);

Insert into JobApplication(ApplicationID,JobID,ApplicantID,ApplicationDate,CoverLetter) values
(1, 2, 1, '2023-09-23 10:30:00', 'Letter 1'),
(2, 4, 3, '2023-09-25 12:15:00', 'Letter 2'),
(3, 6, 5, '2023-09-27 13:00:00', 'Letter 3'),
(4, 8, 7, '2023-09-29 10:00:00', 'Letter 4'),
(5, 10, 9, '2023-10-01 14:30:00', 'Letter 5'),
(6, 1, 2, '2023-09-22 11:00:00', 'Letter 6'),
(7, 3, 4, '2023-09-24 15:45:00', 'Letter 7'),
(8, 5, 6, '2023-09-26 09:30:00', 'Letter 8'),
(9, 7, 8, '2023-09-28 16:45:00', 'Letter 9'),
(10, 9, 10, '2023-09-30 11:30:00', 'Letter 10');
Select * from JobApplication;