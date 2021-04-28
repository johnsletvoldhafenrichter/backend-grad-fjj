const pg = require('pg');
// Adding ssl requirements to the database connection
pg.defaults.ssl = {rejectUnauthorized: false};
const {Pool} = require('pg');
const databaseUrl = process.env.DB_URI;

const database = new Pool({
    connectionString: databaseUrl
});

function getUsers() {
    return database.query(`
        SELECT *
        FROM users
    `).then((results: any) => results.rows).catch((err: any) => err)
}

function getALlCourses() {
    return database.query(`
        SELECT *
        FROM courses
    `).then((results: any) => results.rows).catch((err: any) => err)
}

function getUserByUserName(userName: string) {
    return database.query(`
    SELECT * FROM users WHERE first_name = $1
  `, [userName])
      // tslint:disable-next-line:no-console
        .then((results: any) => results.rows[0])
}

export {getUsers, getALlCourses, getUserByUserName}