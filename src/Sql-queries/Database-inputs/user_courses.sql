-- CREATE TABLE user_courses (
--                               user_id INT NOT NULL,
--                               FOREIGN KEY (user_id) REFERENCES users(user_id),
--                               course_id INT NOT NULL,
--                               FOREIGN KEY (course_id) REFERENCES courses(course_id),
--                               is_obligatory BIT,
--                               is_started BIT,
--                               is_finished BIT,
--                               is_enrolled_in BIT
-- );

--  These are the setup inserts for location table
INSERT INTO user_courses (user_id, course_id, is_obligatory, is_started, is_finished, is_enrolled_in)
VALUES (1, 1, true, true),
       (1, 2, true),
       (1, 3, true),
       (1, 5, true),
       (1, 8, true, false,false, true),
       (1, 10, false, false, true, false);