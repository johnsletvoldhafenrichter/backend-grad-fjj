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

export {getUsers}