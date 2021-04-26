const {Pool} = require('pg');
const databaseUrl = process.env.DB_URI;

const database = new Pool({
    connectionString: databaseUrl
});

function getUsers() {
    return database.query(`
        SELECT *
        FROM category
    `).then((results: any) => results).catch((err: any) => {
        // tslint:disable-next-line:no-console
        console.log(err, err.message);
        return err;
    })
}

export {getUsers}