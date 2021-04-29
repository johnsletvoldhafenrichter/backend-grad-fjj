const express = require('express');
require('dotenv').config();

const bodyParser = require('body-parser');
const cors = require('cors');
const jwt = require('jsonwebtoken');

const { authenticate } = require('./authenticate');
const { getUsers, getALlCourses, getUserByUserName } = require('./database.js');

const port = process.env.PORT || 3333; // default port to listen
const secret = process.env.SECRET;
const app = express();


app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));




// define a route handler for the default home page
app.get("/", (req, res) => {
  res.send("Hello World!");
})

app.post('/session', async (req, res) => {
  const { userName, password } = req.body;
  try {
    const user = await getUserByUserName(userName);

    if (!user) {
      return res.status(401).send({ error: 'Unknown user' });
    }

    if (user.password !== password) {
      return res.status(401).send({ error: 'Wrong password' });
    }

    const token = jwt.sign({
      id: user.user_id,
      userName: user.user_name
    }, secret);

    res.send({token});
  } catch (error) {
    res.status(500).send({ error: error.message });
  }
});

app.get('/authenticate', authenticate, (req, res) => {
    res.status(200).send("OK");
});

app.get("/users", async (req, res) => {
  const users = await getUsers();
  res.send(users);
});

app.get('/courses', async (rec, res) => {
  const courses = await getALlCourses();
  res.send(courses);
});

// start the Express server
app.listen(port, () => {
  console.log(`server started at http://localhost:${port}`);
});