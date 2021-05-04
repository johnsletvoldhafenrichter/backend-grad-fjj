-- Table layout
-- CREATE TABLE users (
--                        user_id SERIAL,
--                        first_name VARCHAR(100) NOT NULL,
--                        last_name VARCHAR(100) NOT NULL,
--                        phone_number INT NOT NULL,
--                        email VARCHAR(100) NOT NULL,
--                        password VARCHAR(100) NOT NULL,
--                        position_id INT,
--                        location_id INT,
--                        category_id INT,
--                        user_name VARCHAR(25) UNIQUE NOT NULL,
--                        PRIMARY KEY (user_id),
--                        FOREIGN KEY (position_id)
--                            REFERENCES position (position_id),
--                        FOREIGN KEY (location_id)
--                            REFERENCES location (location_id),
--                        FOREIGN KEY (category_id)
--                            REFERENCES category (category_id)
-- );


-- Userbase
INSERT INTO users (first_name, last_name, phone_number, email, password, position_id, location_id, specialization_id, user_name, profile_picture)
VALUES ('Marthe', 'Nordnes', 42682942, 'marthe@nordnes.no', 'passord123', 2, 1, 1, 'marthenordnes', 'https://www.vid.no/site/assets/files/11206/bachelor-i-sykepleie-vid.1080x1080.jpg'),
       ('Marcus', 'Kleiven', 12121212 , 'marcus@kleiven.no', '123', 1, 10, 9, 'marcuskleiven', null),
       ('Ola', 'Nordmann', 12341234, 'ola@nordmann.se', 'abc', 6, 9, 15, 'olanordmann', null),
       ('Kari', 'Nordmann', 43214321, 'kari@nordmann.se', 'def', 2, 6, 8, 'karinordmann', null),
       ('Dina', 'Medeiros', 12345678, 'dina@medeiros.com', 'qwerty', 2, 8, 7, 'dina', null),
       ('a', 'a', 1, 'a', 'a', 1, 1, 1, 'a')
       ;




