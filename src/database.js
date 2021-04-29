const pg = require('pg');
// Adding ssl requirements to the database connection
pg.defaults.ssl = {rejectUnauthorized: false};
const {Pool} = require('pg');
const databaseUrl = process.env.DATABASE_URL;


const database = new Pool({
    connectionString: databaseUrl
});

function getUsers() {
    return database.query(`
        SELECT *
        FROM users
    `).then((results) => results.rows).catch((err) => err)
}

function getUserProfile(userId) {
    return database.query(`
        SELECT *
        FROM users
        WHERE user_id = $1
    `, [userId])
      .then(results => results.rows[0])
}


function getALlCourses() {
    return database.query(`
        SELECT *
        FROM courses
    `).then((results) => results.rows).catch((err) => err)
}

function getUserByUserName(userName) {
    return database.query(`
    SELECT * FROM users WHERE user_name = $1
  `, [userName])
        .then((results) => results.rows[0])
}

module.exports = {getUsers, getALlCourses, getUserByUserName, getUserProfile};