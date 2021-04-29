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

INSERT INTO specialization(specialization_name)
VALUES ('Akutt- og mottaksmedison'),
       ('Allmennmedisin'),
       ('Barnekirurgi'),
       ('Fødselshjelp og kvinnesykdommer'),
       ('Gastroenterologisk kirurgi'),
       ('Generell kirurgi'),
       ('Hjertesykdommer'),
       ('Medisinsk biokjemi'),
       ('Nevrologi'),
       ('Nyresykdommer'),
       ('Patologi'),
       ('Radioologi'),
       ('Revmatologi'),
       ('Samfunnsmedisin'),
       ('Urologi'),
       ('Øre-nese-halssykdommer')
       ;

-- Userbase based on user stories
INSERT INTO users (first_name, last_name, phone_number, email, password, position_id, location_id, category_id, user_name)
VALUES ('Marthe', 'Nordnes', 42682942, 'marthe@nordnes.no', 'passord123', 2, 1, 17, 'marthenordnes');

INSERT INTO users
    (first_name, last_name, phone_number, email, password, position_id, location_id, category_id, user_name)
VALUES
       ('Marcus', 'Kleiven', 12121212 , 'marcus@kleiven.no', '123', 1, 10, 9, 'marcuskleiven'),
       ('Ola', 'Nordmann', 12341234, 'ola@nordmann.se', 'abc', 6, 9, 15, 'olanordmann'),
       ('Kari', 'Nordmann', 43214321, 'kari@nordmann.se', 'def', 2, 6, 8, 'karinordmann'),
       ('Dina', 'Medeiros', 12345678, 'dina@medeiros.com', 'qwerty', 2, 8, 7, 'dina')
       ;




