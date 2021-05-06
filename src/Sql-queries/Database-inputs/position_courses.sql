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
       (7,6),
       (3, 10),
       (5, 10)
;

INSERT INTO position_courses (position_id, course_id)
VALUES
(1,11),
(2,11),
(3,11),
(4,12),
(5,12),
(6,13),
(7,13),
(1,14),
(2,14),
(3,14),
(4,15),
(5,15),
(6,15),
(7,16),
(1,16),
(2,16),
(3,17),
(4,17),
(5,17),
(6,18),
(7,18),
(1,18);

