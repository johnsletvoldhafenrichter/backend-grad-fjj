CREATE TABLE users (
                       user_id SERIAL,
                       first_name VARCHAR(100) NOT NULL,
                       last_name VARCHAR(100) NOT NULL,
                       phone_number INT NOT NULL,
                       email VARCHAR(100) NOT NULL  ,
                       password VARCHAR(100) NOT NULL,
                       position_id INT,
                       location_id INT,
                       specialization_id INT,
                       PRIMARY KEY (user_id),
                       FOREIGN KEY (position_id)
                           REFERENCES position (position_id),
                       FOREIGN KEY (location_id)
                           REFERENCES location (location_id),
                       FOREIGN KEY (specialization_id)
                           REFERENCES specialization (specialization_id),
                       user_name VARCHAR(25) UNIQUE NOT NULL,
                        profile_picture VARCHAR(250)
);

CREATE TABLE position (
                          position_id SERIAL PRIMARY KEY,
                          position_name VARCHAR(100) NOT NULL
);

CREATE TABLE location (
                          location_id SERIAL PRIMARY KEY,
                          location_name VARCHAR(100) NOT NULL
);

CREATE TABLE category (
                          category_id SERIAL PRIMARY KEY,
                          category_name VARCHAR(100) NOT NULL
);

CREATE TABLE specialization (
                                specialization_id SERIAL PRIMARY KEY,
                                specialization_name VARCHAR(100) NOT NULL
);

CREATE TABLE courses (
                         course_id SERIAL PRIMARY KEY,
                         image_url VARCHAR(250),
                         image_description VARCHAR(250),
                         course_description VARCHAR(1000),
                         course_name VARCHAR(50),
                         start_date DATE,
                         end_date DATE,
                         enrollment_start DATE,
                         enrollment_end DATE,
                         org VARCHAR(100)
);

RELATIONAL:

CREATE TABLE location_courses (
                                  location_id INT NOT NULL,
                                  FOREIGN KEY (location_id) REFERENCES location(location_id),
                                  course_id INT NOT NULL,
                                  FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

CREATE TABLE position_courses (
                                  position_id INT NOT NULL,
                                  FOREIGN KEY (position_id) REFERENCES position(position_id),
                                  course_id INT NOT NULL,
                                  FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

CREATE TABLE category_courses (
                              category_id INT NOT NULL,
                              FOREIGN KEY (category_id) REFERENCES category(category_id),
                              course_id INT NOT NULL,
                              FOREIGN KEY (course_id) REFERENCES courses(course_id)
);


CREATE TABLE specialization_courses (
                                        specialization_id INT NOT NULL,
                                        FOREIGN KEY (specialization_id) REFERENCES specialization(specialization_id),
                                        course_id INT NOT NULL,
                                        FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

CREATE TABLE user_courses (
                              user_id INT NOT NULL,
                              FOREIGN KEY (user_id) REFERENCES users(user_id),
                              course_id INT NOT NULL,
                              FOREIGN KEY (course_id) REFERENCES courses(course_id),
                              is_obligatory BIT,
                              is_started BIT,
                              is_finished BIT,
                              is_enrolled_in BIT
);




