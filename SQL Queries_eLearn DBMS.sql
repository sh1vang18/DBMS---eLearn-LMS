CREATE TABLE Users (
userId INT PRIMARY KEY,
username VARCHAR(255) NOT NULL,
password VARCHAR(255) NOT NULL,
email VARCHAR(255),
firstName VARCHAR(255),
lastName VARCHAR(255)
);

CREATE TABLE Teacher (
teacherId INT PRIMARY KEY,
department VARCHAR(255),
userId INT UNIQUE,
FOREIGN KEY (userId) REFERENCES Users(userId)
);

CREATE TABLE Course (
courseId INT PRIMARY KEY,
title VARCHAR(255) NOT NULL,
description TEXT,
instructorId INT,
FOREIGN KEY (instructorId) REFERENCES Teacher(teacherId)
);

CREATE TABLE Material (
materialId INT PRIMARY KEY,
type VARCHAR(255) NOT NULL
);

CREATE TABLE Employees (
employeeId INT PRIMARY KEY,
grade VARCHAR(255),
userId INT UNIQUE,
FOREIGN KEY (userId) REFERENCES Users(userId)
);

CREATE TABLE Student (
studentId INT PRIMARY KEY,
grade VARCHAR(255),
userId INT UNIQUE,
FOREIGN KEY (userId) REFERENCES Users(userId)
);

CREATE TABLE Administrator (
adminId INT PRIMARY KEY,
department VARCHAR(255),
userId INT UNIQUE,
FOREIGN KEY (userId) REFERENCES Users(userId)
);

--User table
INSERT INTO Users (userId, username, password, email, firstName, lastName)
VALUES 
(1, 'user1', 'password1', 'user1@example.com', 'John', 'Doe'),
(2, 'user2', 'password2', 'user2@example.com', 'Jane', 'Smith'),
(3, 'user3', 'password3', 'user3@example.com', 'Michael', 'Johnson'),
(4, 'user4', 'password4', 'user4@example.com', 'Emily', 'Brown'),
(5, 'user5', 'password5', 'user5@example.com', 'William', 'Wilson'),
(6, 'user6', 'password6', 'user6@example.com', 'Olivia', 'Taylor'),
(7, 'user7', 'password7', 'user7@example.com', 'James', 'Martinez'),
(8, 'user8', 'password8', 'user8@example.com', 'Sophia', 'Anderson'),
(9, 'user9', 'password9', 'user9@example.com', 'Daniel', 'White'),
(10, 'user10', 'password10', 'user10@example.com', 'Ava', 'Lee');


--Teacher table
INSERT INTO Teacher (teacherId, department, userId)
VALUES 
(1, 'Mathematics', 1),
(2, 'Science', 2),
(3, 'English', 3),
(4, 'History', 4),
(5, 'Art', 5),
(6, 'Music', 6),
(7, 'Physical Education', 7),
(8, 'Computer Science', 8),
(9, 'Geography', 9),
(10, 'Economics', 10);


--Course table
INSERT INTO Course (courseId, title, description, instructorId)
VALUES 
(1, 'Math 101', 'Introduction to Algebra', 1),
(2, 'Biology 101', 'Cell Biology', 2),
(3, 'English Literature', 'Shakespearean Plays', 3),
(4, 'World History', 'Ancient Civilizations', 4),
(5, 'Art History', 'Renaissance Art', 5),
(6, 'Music Theory', 'Fundamentals of Music', 6),
(7, 'Physical Education', 'Basic Fitness', 7),
(8, 'Introduction to Programming', 'Java Basics', 8),
(9, 'Geography 101', 'World Geography', 9),
(10, 'Microeconomics', 'Principles of Microeconomics', 10);


--Material table
INSERT INTO Material (materialId, type)
VALUES 
(1, 'Textbook'),
(2, 'Video Lecture'),
(3, 'Presentation Slides'),
(4, 'Quiz'),
(5, 'Homework Assignment'),
(6, 'Lab Experiment'),
(7, 'Case Study'),
(8, 'Research Paper'),
(9, 'Interactive Simulation'),
(10, 'Worksheet');


--Employee table
INSERT INTO Employees (employeeId, grade, userId)
VALUES 
(1, 'Senior', 1),
(2, 'Junior', 2),
(3, 'Manager', 3),
(4, 'Supervisor', 4),
(5, 'Analyst', 5),
(6, 'Intern', 6),
(7, 'Consultant', 7),
(8, 'Associate', 8),
(9, 'Coordinator', 9),
(10, 'Specialist', 10);


--Student table
INSERT INTO Student (studentId, grade, userId)
VALUES 
(1, 'A', 1),
(2, 'B', 2),
(3, 'C', 3),
(4, 'D', 4),
(5, 'F', 5),
(6, 'A', 6),
(7, 'B', 7),
(8, 'C', 8),
(9, 'D', 9),
(10, 'F', 10);


--Administrator table
INSERT INTO Administrator (adminId, department, userId)
VALUES 
(1, 'Academic Affairs', 1),
(2, 'Student Services', 2),
(3, 'Finance', 3),
(4, 'Human Resources', 4),
(5, 'Information Technology', 5),
(6, 'Facilities Management', 6),
(7, 'Public Relations', 7),
(8, 'Marketing', 8),
(9, 'Legal', 9),
(10, 'Research and Development', 10);

