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
      SELECT DISTINCT c.*,
                      l.location_name
      FROM courses as c
               LEFT JOIN location_courses as lc
                         ON c.course_id = lc.course_id
               LEFT JOIN location as l
                         ON lc.location_id = l.location_id
      WHERE c.course_id = $1;
  `, [courseId])
    .then(results => results.rows)
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
        SELECT user_courses.course_id,
               course_name,
               course_description,
               image_url,
               image_description,
               start_date,
               end_date,
               enrollment_start,
               enrollment_end,
               org,
               specialization_name
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

function getLocalUserCoursesByUserId(userId) {
    return database.query(`
        SELECT c.course_name,
               c.course_description,
               c.image_url,
               c.image_description,
               c.start_date,
               c.end_date,
               c.enrollment_start,
               c.enrollment_end,
               c.org,
               l.location_name,
               u.user_name
        FROM courses AS c,
             location_courses AS lc,
             location AS l,
             users AS u
        WHERE c.course_id = lc.course_id
          AND lc.location_id = l.location_id
          AND l.location_id = u.location_id
          AND u.user_id = $1;
    `, [userId])
        .then((results) => results.rows)
}

function getRecommendedUserCoursesByUserId(userId) {
  return database.query(`
      SELECT DISTINCT
          courses.course_id,
          course_name,
          image_url,
          image_description,
          start_date,
          end_date,
          enrollment_start,
          enrollment_end,
          org
      FROM courses
               LEFT JOIN specialization_courses AS sc
                         ON courses.course_id = sc.course_id
               LEFT JOIN location_courses AS lc
                         ON courses.course_id = lc.course_id
               LEFT JOIN location AS l
                         ON lc.location_id = l.location_id
      WHERE sc.specialization_id = (SELECT specialization_id FROM users WHERE user_id = $1)
         OR lc.location_id = (SELECT location_id FROM users WHERE user_id = $1);
  `, [userId])
    .then((results) => results.rows)
}


function getStartedCoursesByUserId(userId) {
    return database.query(`
                SELECT user_courses.course_id,
                       course_name,
                       course_description,
                       image_url,
                       image_description,
                       start_date,
                       end_date,
                       enrollment_start,
                       enrollment_end,
                       org,
                       specialization_name
                FROM courses
                         JOIN user_courses
                              ON user_courses.course_id = courses.course_id
                         JOIN users
                              ON users.user_id = user_courses.user_id
                         JOIN specialization
                              ON specialization.specialization_id = users.specialization_id
                WHERE is_started = true
                  AND user_courses.user_id = $1;`
        , [userId])
        .then((result) => result.rows)
}

function getEnrolledCoursesByUserId(userId) {
    return database.query(`
                SELECT user_courses.course_id,
                       course_name,
                       course_description,
                       image_url,
                       image_description,
                       start_date,
                       end_date,
                       enrollment_start,
                       enrollment_end,
                       org,
                       specialization_name
                FROM courses
                         JOIN user_courses
                              ON user_courses.course_id = courses.course_id
                         JOIN users
                              ON users.user_id = user_courses.user_id
                         JOIN specialization
                              ON specialization.specialization_id = users.specialization_id
                WHERE is_enrolled_in = true
                  AND user_courses.user_id = $1;`
        , [userId])
        .then((result) => result.rows)
}

function getCompletedCoursesByUserId(userId) {
    return database.query(`
                SELECT user_courses.course_id,
                       course_name,
                       course_description,
                       image_url,
                       image_description,
                       start_date,
                       end_date,
                       enrollment_start,
                       enrollment_end,
                       org,
                       specialization_name
                FROM courses
                         JOIN user_courses
                              ON user_courses.course_id = courses.course_id
                         JOIN users
                              ON users.user_id = user_courses.user_id
                         JOIN specialization
                              ON specialization.specialization_id = users.specialization_id
                WHERE is_finished = true
                  AND user_courses.user_id = $1;`
        , [userId])
        .then((result) => result.rows)
}

function getFilteredCourses(filter) {
    const query = {
        text: `SELECT ${filter}_name, ${filter}_id
               FROM ${filter};`,
        rowMode: 'array'
    }
    return database.query(query)
        .then((result) => result.rows)
}

function getFilteredCoursesByUser(filter, user_id) {
    const query = {
        text: `SELECT DISTINCT ${filter}.${filter}_name, ${filter}.${filter}_id
               FROM courses
                   JOIN user_courses
               ON user_courses.course_id = courses.course_id
                   JOIN users
                   ON users.user_id = user_courses.user_id
                   LEFT JOIN ${filter}_courses
                   ON ${filter}_courses.course_id = courses.course_id
                   LEFT JOIN ${filter}
                   ON ${filter}.${filter}_id = ${filter}_courses.${filter}_id
               WHERE users.user_id = ${user_id}`,
        rowMode: 'array'
    }
    return database.query(query)
        .then((result) => result.rows)
}

function getFilteredQueryAll(filter, selectedTags) {
    const query = {
        text: `
        SELECT *
        FROM courses
        JOIN ${filter}_courses
            ON ${filter}_courses.course_id = courses.course_id
        JOIN ${filter}
            ON ${filter}.${filter}_id = ${filter}_courses.${filter}_id
        JOIN location_courses as lc
            ON courses.course_id = lc.course_id
        JOIN location as l
            ON lc.location_id = l.location_id
        WHERE ${filter}.${filter}_id in (${selectedTags.join(',')})`,
    }
    return database.query(query)
        .then((result) => result.rows)
}

function getFilteredQueryByUser(filter, selectedTags, user_id) {
    const query = {
        text: `
        SELECT *
        FROM courses
        JOIN ${filter}_courses
            ON ${filter}_courses.course_id = courses.course_id
        JOIN ${filter}
            ON ${filter}.${filter}_id = ${filter}_courses.${filter}_id
        JOIN user_courses
            ON user_courses.course_id = courses.course_id
        JOIN location_courses as lc
            ON courses.course_id = lc.course_id
        JOIN location as l
            ON lc.location_id = l.location_id
        WHERE ${filter}.${filter}_id in (${selectedTags.join(',')})
            AND user_courses.user_id = ${user_id}`,
    }
    return database.query(query)
        .then((result) => result.rows)

}

module.exports = {
    getALlCourses,
    getUserByUserName,
    getUserProfile,
    getCourseById,
    getObligUserCoursesByUserId,
    getLocalUserCoursesByUserId,
    getRecommendedUserCoursesByUserId,
    getStartedCoursesByUserId,
    getEnrolledCoursesByUserId,
    getCompletedCoursesByUserId,
    getFilteredCourses,
    getFilteredCoursesByUser,
    getFilteredQueryAll,
    getFilteredQueryByUser
}