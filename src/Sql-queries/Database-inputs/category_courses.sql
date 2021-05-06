-- Table layout
-- CREATE TABLE category_courses (
--                                   category_id INT NOT NULL,
--                                   FOREIGN KEY (category_id) REFERENCES category(category_id),
--                                   course_id INT NOT NULL,
--                                   FOREIGN KEY (course_id) REFERENCES courses(course_id)
-- );

-- Initiell input
INSERT INTO category_courses (category_id, course_id)
VALUES
       (13, 1),
       (1,2),
       (2,3),
       (1,4),
       (1,5),
       (1,6),
       (1,7),
       (11,7),
       (16,8),
       (1,8),
       (11,9),
       (1,9),
       (2,7),
       (3,9),
       (3,7),
       (3,2),
       (3,1),
       (4,2),
       (5,5),
       (14,8),
       (11,3),
       (16,1),
       (16,2),
       (16,3),
       (8,9),
       (10,6),
       (10,7),
       (4,8),
       (11,3),
       (11,5),
       (3, 10),
       (5, 10)
;


INSERT INTO category_courses (category_id, course_id)
VALUES
        (1,11),
        (2,11),
        (3,11),
        (4,12),
        (5,12),
        (6,13),
        (7,13),
        (8,14),
        (9,14),
        (10,14),
        (11,15),
        (12,15),
        (13,15),
        (14,16),
        (15,16),
        (16,16),
        (1,17),
        (3,17),
        (5,17),
        (7,18),
        (9,18),
        (11,18);