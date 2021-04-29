-- Table layout
--CREATE TABLE position_courses (
-- position_id INT NOT NULL,
--                                   FOREIGN KEY (position_id) REFERENCES position(position_id),
--                                   course_id INT NOT NULL,
--                                   FOREIGN KEY (course_id) REFERENCES courses(course_id)
-- );

-- Initiell input
INSERT INTO position_courses (position_id , course_id)
VALUES
       (1,1),
       (1,2),
       (1,3),
       (1,4),
       (1,5),
       (1,6),
       (1,7),
       (1,8),
       (1,9),
       (2,2),
       (2,5),
       (2,6),
       (2,7),
       (2,9),
       (3,3),
       (3,5),
       (3,9),
       (4,3),
       (4,5),
       (4,9),
       (5,3),
       (5,8),
       (6,2),
       (6,3),
       (6,5),
       (6,6),
       (6,9),
       (7,3),
       (7,5),
       (7,6)
;

