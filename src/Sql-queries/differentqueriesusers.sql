SELECT first_name,
       last_name,
       email,
       phone_number,
       position_name,
       specialization_name,
       location_name,
       profile_picture,
       user_name
FROM users
         LEFT JOIN position ON position.position_id = users.position_id
         LEFT JOIN location ON location.location_id = users.location_id
         LEFT JOIN specialization ON specialization.specialization_id = users.specialization_id
WHERE user_name = 'marthenordnes';