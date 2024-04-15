-- Procedure to register a new user
CREATE PROCEDURE registerUser (
    IN user_id INT,
    IN username VARCHAR(255),
    IN password VARCHAR(255),
    IN email VARCHAR(255),
    IN first_name VARCHAR(255),
    IN last_name VARCHAR(255)
)
BEGIN
    INSERT INTO User (userId, username, password, email, firstName, lastName)
    VALUES (user_id, username, password, email, first_name, last_name);
END;

-- Procedure to login
CREATE PROCEDURE login (
    IN username VARCHAR(255),
    IN password VARCHAR(255)
)
BEGIN
    DECLARE user_exists INT;
    SET user_exists = (SELECT COUNT(*) FROM User WHERE username = username AND password = password);
    IF user_exists = 1 THEN
        SELECT 1 AS login_success;
    ELSE
        SELECT 0 AS login_success;
    END IF;
END;

-- Procedure to get user details
CREATE PROCEDURE getUserDetails (
    IN user_id INT
)
BEGIN
    SELECT CONCAT(firstName, ' ', lastName) AS userDetails FROM User WHERE userId = user_id;
END;

-- Procedure to update user profile
CREATE PROCEDURE updateProfile (
    IN user_id INT,
    IN new_username VARCHAR(255),
    IN new_password VARCHAR(255),
    IN new_email VARCHAR(255),
    IN new_first_name VARCHAR(255),
    IN new_last_name VARCHAR(255)
)
BEGIN
    UPDATE User
    SET username = new_username, password = new_password, email = new_email, firstName = new_first_name, lastName = new_last_name
    WHERE userId = user_id;
END;

-- Procedure to create a new course
CREATE PROCEDURE createCourse (
    IN teacher_id INT,
    IN title VARCHAR(255),
    IN description VARCHAR(255)
)
BEGIN
    INSERT INTO Course (title, description, instructor)
    VALUES (title, description, teacher_id);
END;

-- Procedure to add material to a course
CREATE PROCEDURE addMaterial (
    IN course_id INT,
    IN material_id INT,
    IN material_type VARCHAR(255)
)
BEGIN
    INSERT INTO Material (materialId, type)
    VALUES (material_id, material_type);
    INSERT INTO CourseMaterial (courseId, materialId)
    VALUES (course_id, material_id);
END;

-- Procedure to enroll a student in a course
CREATE PROCEDURE enroll (
    IN student_id INT,
    IN course_id INT
)
BEGIN
    INSERT INTO StudentCourse (studentId, courseId)
    VALUES (student_id, course_id);
END;

-- Procedure to view courses
CREATE PROCEDURE viewCourses ()
BEGIN
    SELECT * FROM Course;
END;

-- Procedure to manage users
CREATE PROCEDURE manageUsers ()
BEGIN
    -- Your implementation to manage users
END;

-- Procedure to manage courses
CREATE PROCEDURE manageCourses ()
BEGIN
    -- Your implementation to manage courses
END;

-- Procedure to start a course
CREATE PROCEDURE startCourse (
    IN course_id INT
)
BEGIN
    UPDATE Course SET status = 'Active' WHERE courseId = course_id;
END;

-- Procedure to end a course
CREATE PROCEDURE endCourse (
    IN course_id INT
)
BEGIN
    UPDATE Course SET status = 'Ended' WHERE courseId = course_id;
END;

-- Procedure to add material to a course
CREATE PROCEDURE addMaterialToCourse (
    IN course_id INT,
    IN material_id INT
)
BEGIN
    INSERT INTO CourseMaterial (courseId, materialId)
    VALUES (course_id, material_id);
END;
