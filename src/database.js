const pg = require('pg');
// Adding ssl requirements to the database connection
pg.defaults.ssl = {rejectUnauthorized: false};
const {Pool} = require('pg');
const databaseUrl = process.env.DATABASE_URL;


const database = new Pool({
  connectionString: databaseUrl
});

function getUserProfile(userId) {
  return database.query(`
      SELECT first_name,
             last_name,
             phone_number,
             profile_picture,
             email,
             user_name,
             position_name,
             specialization_name,
             location_name
      FROM users
               LEFT JOIN position
                         ON position.position_id = users.position_id
               LEFT JOIN location
                         ON location.location_id = users.location_id
               LEFT JOIN specialization
                         ON specialization.specialization_id = users.specialization_id
      WHERE user_id = $1;
  `, [userId])
    .then(results => results.rows[0])
}


function getALlCourses() {
  return database.query(`
      SELECT *
      FROM courses
  `).then((results) => results.rows)
};

function getUserByUserName(userName) {
  return database.query(`
      SELECT *
      FROM users
      WHERE user_name = $1
  `, [userName])
    .then((results) => results.rows[0])
}

module.exports = { getALlCourses, getUserByUserName, getUserProfile};