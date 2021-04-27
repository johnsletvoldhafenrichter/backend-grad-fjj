--  These are the setup inserts for position table
INSERT INTO position (position_name)
VALUES ('lege'),
       ('sykepleier'),
       ('radiograf'),
       ('helsesekretær'),
       ('fysioterapaut'),
       ('helsefagarbeider'),
       ('hjelpepleier');

--  These are the setup inserts for category table
INSERT INTO category (category_name)
VALUES ('allmenmedisin'),
       ('anatomi'),
       ('anestesiologi'),
       ('barnesykdommer'),
       ('ernering'),
       ('farmakologi'),
       ('fysilologi'),
       ('fødselshjelp'),
       ('immunologi'),
       ('indremedisin'),
       ('kirurgi'),
       ('klinisk_biokjemi'),
       ('nevrologi'),
       ('psykiatri'),
       ('radiologi'),
       ('øre_nese_hals');


--  These are the setup inserts for location table
INSERT INTO location(location_name)
VALUES ('Akershus Universitetssykehus'),
       ('Aker Sykehus'),
       ('Oslo Universitetssykehus'),
       ('St.Olavs Hospital'),
       ('Aalesund Sykehus'),
       ('Foerde Sentralsjukehus'),
       ('Haugesund Sjukehus'),
       ('Baerum Sykehus'),
       ('Drammen Sykehus'),
       ('Sykehuset Innlandet');

-- First user based on user stories
INSERT INTO users (first_name, last_name, phone_number, email, password, position_id, location_id, category_id)
VALUES ('Marthe', 'Nordnes', 42682942, 'marthe@nordnes.no', 'passord123', 2, 1, 17);



