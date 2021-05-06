-- Table layout
-- CREATE TABLE specialization_courses (
--                                         specialization_id INT NOT NULL,
--                                         FOREIGN KEY (specialization_id) REFERENCES specialization(specialization_id),
--                                         course_id INT NOT NULL,
--                                         FOREIGN KEY (course_id) REFERENCES courses(course_id)
-- );

-- Initiell input
INSERT INTO specialization_courses (specialization_id , course_id)
VALUES
    (3,1),
    (6,1),
    (9,1),
    (8,1),
    (17,1),
    (1,2),
    (2,2),
    (3,2),
    (18,2),
    (17,2),
    (9,2),
    (5,2),
    (14,2),
    (2,3),
    (4,3),
    (5,3),
    (9,3),
    (16,3),
    (5,4),
    (6,4),
    (9,4),
    (12,4),
    (16,4),
    (18,4),
    (1,5),
    (8,5),
    (9,5),
    (16,5),
    (1,6),
    (3,6),
    (8,6),
    (9,6),
    (10,6),
    (11,6),
    (2,7),
    (3,7),
    (9,7),
    (16,7),
    (5,8),
    (8,8),
    (10,8),
    (14,8),
    (15,8),
    (17,8),
    (18,8),
    (1,9),
    (4,9),
    (3,9),
    (17,9),
    (12,9),
    (10,9),
    (16,9),
    (3, 10),
    (5, 10)
;