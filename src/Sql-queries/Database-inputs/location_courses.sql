-- Table layout
-- CREATE TABLE location_courses (
--                                   location_id INT NOT NULL,
--                                   FOREIGN KEY (location_id) REFERENCES location(location_id),
--                                   course_id INT NOT NULL,
--                                   FOREIGN KEY (course_id) REFERENCES courses(course_id)
-- );

-- Initiell input
INSERT INTO location_courses (location_id, course_id)
VALUES
       (1,2),
       (1,1),
       (1,3),
       (1,6),
       (2,2),
       (2,9),
       (2,5),
       (2,3),
       (2,7),
       (3,1),
       (3,3),
       (3,4),
       (3,9),
       (4,5),
       (4,6),
       (4,7),
       (4,8),
       (5,5),
       (5,2),
       (6,1),
       (6,9),
       (7,5),
       (8,2),
       (8,3),
       (9,9),
       (10,2),
       (10,5),
       (3, 10),
       (5, 10)
;
