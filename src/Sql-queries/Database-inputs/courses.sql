-- Table layout
-- CREATE TABLE courses (
--                          course_id SERIAL PRIMARY KEY,
--                          image_url VARCHAR(250),
--                          image_description VARCHAR(250),
--                          course_description VARCHAR(1000),
--                          course_name VATRCHAR(50),
--                          start_date DATE,
--                          end_date DATE,
--                          enrollment_start DATE,
--                          enrollment_end DATE,
--                          org VARCHAR(100)
-- );

-- Courses inserted into database
INSERT INTO courses (
    image_url,
    image_description,
    course_description,
    course_name,
    start_date,
    end_date,
    enrollment_start,
    enrollment_end,
    org)
VALUES (
           'https://media.istockphoto.com/photos/personality-is-as-important-as-knowledge-and-expertise-picture-id694432298?k=6&m=694432298&s=612x612&w=0&h=YI4i7rsp-d_jRqbF5WK-98o3Fh-XXuDUw6p07F3fRJE=',
           'image2',
           'Why do you think that she is a witch? He hasn''t got shit all over him. Shh! Knights, I bid you welcome to your new home. Let us ride to Camelot! Shh! Knights, I bid you welcome to your new home. Let us ride to Camelot!',
           'Hvordan omgå barn',
           '2021-08-15',
           '2021-12-20',
           '2021-04-15',
           '2021-07-01',
           'UiO'
       ),
       (
           'https://media.istockphoto.com/photos/human-heart-and-vascular-system-picture-id182043494?k=6&m=182043494&s=612x612&w=0&h=VfzWL65biXDnuo3XM-tizY7SKcpAKOk2QQFU8GaE6p0=',
           'image3',
           'Kid, I''ve flown from one side of this galaxy to the other. I''ve seen a lot of strange stuff, but I''ve never seen anything to make me believe there''s one all-powerful Force controlling everything. There''s no mystical energy field that controls my destiny. It''s all a lot of simple tricks and nonsense. All right. Well, take care of yourself, Han. I guess that''s what you''re best at, ain''t it?',
           'Anatomi',
           '2021-08-15',
           '2021-12-10',
           '2021-04-15',
           '2021-07-20',
           'UiO'
       ),
       (
           'https://media.istockphoto.com/photos/healthcare-concept-heart-care-picture-id503165360?k=6&m=503165360&s=612x612&w=0&h=dl-xAL8MDM0DKDT0W6Eixn-o6qqgkrUjHaxRQqIyzY8=',
           'image4',
           'Army had half a day. Whoa, this guy''s straight? Marry me. Whoa, this guy''s straight?',
           'Kariologi',
           '2021-08-25',
           '2021-11-20',
           '2021-03-10',
           '2021-07-15',
           'UiB'
       ),
       (
           'https://media.istockphoto.com/photos/vegetables-in-heart-shaped-bowl-on-blackboard-picture-id649441494?k=6&m=649441494&s=612x612&w=0&h=ly64mYDgtbzYWRYSAXy9zaEGPvg5uDHO-yRL7jIhB8o=',
           'image5',
           'Uh, no, you got the wrong number. This is 9-1…2. I''m a Spalding Gray in a Rick Dees world. You know, the one with all the well meaning rules that don''t work out in real life, uh, Christianity. Your questions have become more redundant and annoying than the last three "Highlander" movies.',
           'Moderne kosthold',
           '2022-01-05',
           '2022-05-04',
           '2021-09-15',
           '2021-12-01',
           'UiB'
       ),
       (
           'https://media.istockphoto.com/photos/pharmacists-hands-taking-medicines-from-shelf-picture-id537309906?k=6&m=537309906&s=612x612&w=0&h=lTz0RgqAyv6HsHoGsHYXtdnhhNUmMEMlzqrXVKqOjIs=',
           'image6',
           'The Force is strong with this one. I have you now. I need your help, Luke. She needs your help. I''m getting too old for this sort of thing. Oh God, my uncle. How am I ever gonna explain this? I''m surprised you had the courage to take the responsibility yourself.',
           'Apotekerteknikk',
           '2021-08-13',
           '2021-12-18',
           '2021-04-15',
           '2021-07-01',
           'UiB'
       ),
       (
           'https://media.istockphoto.com/photos/medical-team-preparing-equipment-for-surgery-picture-id507756350?k=6&m=507756350&s=612x612&w=0&h=VNxs0oCrFBguI2VLEugJBCbwunJ3Rt47jIoF4e53EU4=',
           'image7',
           'Well, he''s kind of had it in for me ever since I accidentally ran over his dog. Actually, replace "accidentally" with "repeatedly" and replace "dog" with "son." Aaah! Natural light! Get it off me! Get it off me!',
           'Operasjonsteknikk 101',
           '2021-08-15',
           '2021-12-10',
           '2021-04-15',
           '2021-08-10',
           'UiB'
       ),
       (
           'https://media.istockphoto.com/photos/stethoscope-on-white-background-picture-id506896404?k=6&m=506896404&s=612x612&w=0&h=zyicYZphx7Iefr4LQCXJpoGf49A-y_hKZ4Cl0ONGUIo=',
           'image8',
           'You don''t believe in the Force, do you? I find your lack of faith disturbing. Obi-Wan is here. The Force is with him. I care. So, what do you think of her, Han? In my experience, there is no such thing as luck.',
           'Hva bruken man et stetoskop til?',
           '2021-08-15',
           '2021-12-20',
           '2021-04-15',
           '2021-07-01',
           'NTNU'
       ),
       (
           'https://media.istockphoto.com/photos/surgeon-picking-up-surgical-tool-from-tray-picture-id913784822?k=6&m=913784822&s=612x612&w=0&h=bJfLVLyKqc6To1ri7-vCTS95T_tbjGOthQrex7hMJiY=',
           'image9',
           'First place chick is hot, but has an attitude, doesn''t date magicians. Now, when you do this without getting punched in the chest, you''ll have more fun. That''s what it said on ''Ask Jeeves.'' Not tricks, Michael, illusions.',
           'Valg av operasjonsverktøy',
           '2022-01-18',
           '2022-11-20',
           '2021-04-15',
           '2021-11-01',
           'NTNU'
       ),
       (
            'https://media.istockphoto.com/photos/japanese-female-get-acupuncture-treatment-in-kyoto-japan-picture-id542806712?k=6&m=542806712&s=612x612&w=0&h=a8z-r7lXD3w9cpp_3IV2MJ2kdFyrhwM0O2sWNBbVsZw=',
            'image10',
            'The swallow may fly south with the sun, and the house martin or the plover may seek warmer climes in winter, yet these are not strangers to our land. Bloody Peasant! Ni! Ni! Ni! Ni! It''s only a model.',
            'Når akupunktur er rikig',
            '2021-01-05',
            '2021-03-30',
            '2020-10-15',
            '2020-11-30',
            'UiT'
       );



INSERT INTO courses (
    image_url,
    image_description,
    course_description,
    course_name,
    start_date,
    end_date,
    enrollment_start,
    enrollment_end,
    org)
VALUES (
        'https://media.istockphoto.com/photos/dermatologist-examining-patient-for-signs-of-skin-cancer-picture-id514880133?k=6&m=514880133&s=612x612&w=0&h=VO5krlOJzoqMP6efeiZ_gjSztV9Ap9DpuUuCh-s4rvQ=',
        'image11',
        'Be quiet! Well, I didn''t vote for you. Why? And this isn''t my nose. This is a false one.',
        'Dermatologi',
        '2021-01-05',
        '2021-01-05',
        '2021-01-05',
        '2021-01-05',
        'UiO'
       ),
       (
           'https://media.istockphoto.com/photos/spa-woman-female-enjoying-massage-in-spa-centre-picture-id492676582?k=6&m=492676582&s=612x612&w=0&h=m6eDprJYt5GdNz1vujwZtR-fCIw7RXNi5BpuGRiFZN4=',
           'image12',
           'I''m surprised you had the courage to take the responsibility yourself. Your eyes can deceive you. Don''t trust them. Leave that to me. Send a distress signal, and inform the Senate that all on board were killed.',
           'Massering',
           '2021-01-05',
           '2021-01-05',
           '2021-01-05',
           '2021-01-05',
           'UiO'
       ),
       (
           'https://media.istockphoto.com/photos/brain-activity-picture-id497487570?k=6&m=497487570&s=612x612&w=0&h=o12S9Kxe6OoTXSi6yW3Esp7z-tH7q_vRGVvDYr54Ubg=',
           'image13',
           'And here I am using my own lungs like a sucker. Brace yourselves gentlemen. According to the gas chromatograph, the secret ingredient is… Love!? Who''s been screwing with this thing? Lisa, vampires are make-believe, like elves, gremlins, and Eskimos.',
           'Nevrologi 102',
           '2021-01-05',
           '2021-01-05',
           '2021-01-05',
           '2021-01-05',
           'UiO'
       ),
       (
           'https://media.istockphoto.com/photos/female-surgeon-wearing-surgical-mask-in-operation-theater-at-hospital-picture-id1155608121?k=6&m=1155608121&s=612x612&w=0&h=6o6qpTKxbnLZYBSbtu8w6ukYoRB4JTicF-5J9Ull5PA=',
           'image14',
           'Uh, no, you got the wrong number. This is 9-1…2. I prefer a vehicle that doesn''t hurt Mother Earth. It''s a go-cart, powered by my own sense of self-satisfaction. Our differences are only skin deep, but our sames go down to the bone.',
           'Bekledning for operasjoner',
           '2021-01-05',
           '2021-01-05',
           '2021-01-05',
           '2021-01-05',
           'UiO'
       ),
       (
           'https://media.istockphoto.com/photos/surgeons-working-in-operating-room-picture-id493216361?k=6&m=493216361&s=612x612&w=0&h=N0eZtiu0l4UPrc5y4UNlxAK_tdyQhvfNyKPs-bIElYU=',
           'image15',
           'When I held that gun in my hand, I felt a surge of power…like God must feel when he''s holding a gun. I''m going to the back seat of my car, with the woman I love, and I won''t be back for ten minutes!',
           'Operasjonsteknikk 102',
           '2021-01-05',
           '2021-01-05',
           '2021-01-05',
           '2021-01-05',
           'UiO'
       ),
       (
           'https://media.istockphoto.com/photos/team-of-research-scientists-working-on-computer-with-medical-blood-picture-id1140779754?k=6&m=1140779754&s=612x612&w=0&h=SIojweO1OqaHrYFFcFOHw80eoW6aHRgxxHZM0ezJXyw=',
           'image16',
           'It''s called ''taking advantage.'' It''s what gets you ahead in life. Guy''s a pro. What''s Spanish for "I know you speak English?" He''ll want to use your yacht, and I don''t want this thing smelling like fish.',
           'Laboriatoie-etikkette',
           '2021-01-05',
           '2021-01-05',
           '2021-01-05',
           '2021-01-05',
           'UiO'
       ),
       (
           'https://media.istockphoto.com/photos/putting-test-tubes-into-the-holder-picture-id946264212?k=6&m=946264212&s=612x612&w=0&h=CqTOqEYk5yfpl4sKE5sh__RGWvl2bM9voF4qp9J_wBM=',
           'image17',
           'I''m a monster. Michael! I''m a monster. That''s why you always leave a note!',
           'Tolkning av testsvar',
           '2021-01-05',
           '2021-01-05',
           '2021-01-05',
           '2021-01-05',
           'UiO'
       ),
       (
           'https://media.istockphoto.com/photos/scientists-in-laboratory-working-on-research-picture-id1012405368?k=6&m=1012405368&s=612x612&w=0&h=-37LrYH7a38ywgNg6RZSgJvfDwhtN6p2M_smjPFaNx4=',
           'image18',
           'As you may or may not know, Lindsay and I have hit a bit of a rough patch. No! I was ashamed to be SEEN with you. I like being with you. I don''t criticize you! And if you''re worried about criticism, sometimes a diet is the best defense.',
           'Mikroskopi',
           '2021-01-05',
           '2021-01-05',
           '2021-01-05',
           '2021-01-05',
           'UiO'
       )
       ;