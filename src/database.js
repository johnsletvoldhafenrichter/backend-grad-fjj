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

function getCourseById(courseId) {
  return database.query(`
    SELECT *
    FROM courses
    WHERE course_id = $1;
  `, [courseId])
    .then(results => results.rows[0])
}

function getUserByUserName(userName) {
  return database.query(`
      SELECT *
      FROM users
      WHERE user_name = $1
  `, [userName])
    .then((results) => results.rows[0])
}

function getObligUserCoursesByUserId(userId) {
  return database.query(`
    SELECT user_courses.course_id, course_name, course_description, image_url, image_description, start_date, end_date, enrollment_start, enrollment_end, org, specialization_name
    FROM courses
         JOIN user_courses
                   ON user_courses.course_id = courses.course_id
         JOIN users
                   ON users.user_id = user_courses.user_id
         JOIN specialization
                   ON specialization.specialization_id = users.specialization_id
    WHERE user_courses.user_id = $1;
  `, [userId])
    .then((results) => results.rows)
}
module.exports = { getALlCourses, getUserByUserName, getUserProfile, getCourseById, getObligUserCoursesByUserId};