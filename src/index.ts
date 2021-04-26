import express from "express";
import { config } from 'dotenv';
import bodyParser from 'body-parser';
config();
import { getUsers } from './database';
const app = express();
const port = 3333; // default port to listen



// define a route handler for the default home page
app.get("/", (req, res) => {
    res.send("Hello World!");
})

app.get("/users", async (req, res) => {
    const users = await getUsers();
    res.send(users);
});

// start the Express server
app.listen(port, () => {
    // tslint:disable-next-line:no-console
    console.log(`server started at http://localhost:${port}`);
});