const express = require('express');
require('dotenv').config();

const bodyParser = require('body-parser');
const cors = require('cors');
const jwt = require('jsonwebtoken');

const {authenticate} = require('./authenticate');
const {getALlCourses,
  getUserByUserName,
  getUserProfile,
  getCourseById,
  getObligUserCoursesByUserId,
  getLocalUserCoursesByUserId,
  getStartedCoursesByUserId,
  getEnrolledCoursesByUserId,
  getCompletedCoursesByUserId
  } = require('./database.js');

const port = process.env.PORT || 3333; // default port to listen
const secret = process.env.SECRET;
const app = express();


app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));


// define a route handler for the default home page
app.get("/", (req, res) => {
    res.send("Hello World!");
})

app.post('/session', async (req, res, next) => {
  const {userName, password} = req.body;
  try {
    const user = await getUserByUserName(userName);

    if (!user) {
      return res.status(401).send('Unknown user');
    }
    if (user.password !== password) {
      return res.status(401).send('Wrong password');
    }

    const token = jwt.sign({
      id: user.user_id,
      userName: user.user_name
    }, secret);

    res.send({token, id: user.user_id});
  } catch
    (error) {
    next(error);
  }  
});

app.get('/authenticate', authenticate, (req, res) => {
    res.status(200).send("OK");
});

app.get('/courses', authenticate, async (req, res, next) => {
  try {
    const courses = await getALlCourses();
    if (!courses) {
      res.status(404).send('Nothing found in Database!')
      return;
    }
    res.send(courses);
  } catch (error) {
    next(error);
  }
})

app.post('/course', authenticate, async (req, res, next) => {
  try {
    const {courseId} = req.body;
    const course = await getCourseById(courseId)
    if (!course) {
      res.status(404).send('Could not find course, sorry')
      return;
    }
    res.send(course);
  } catch (error) {
    next(error);
  }
})

// Get obligatory courses for user (userId)
app.post('/obligatory', authenticate, async (req, res, next) => {
  try {
    const {userId} = req.body;
    const obligCourses = await getObligUserCoursesByUserId(userId)
    if (!obligCourses) {
      res.status(404).send('Could not find course, sorry')
      return;
    }
    res.send(obligCourses);
  } catch (error) {
    next(error);
  }
})

app.post('/local', authenticate, async (req, res, next) => {
  try {
    const {userId} = req.body;
    const localCourses = await getLocalUserCoursesByUserId(userId)
    if (!localCourses) {
      res.status(404).send('Could not find course, sorry')
      return;
    }
    res.send(localCourses);
  } catch (error) {
    next(error);
  }
})

app.post('/recommended', authenticate, async (req, res, next) => {
  try {
    const {userId} = req.body;
    const recommendedCourses = await getRecommendedUserCoursesByUserId(userId)
    if (!recommendedCourses) {
      res.status(404).send('Could not find course, sorry')
      return;
    }
    res.send(recommendedCourses);
  } catch (error) {
    next(error);
  }
})

app.post('/profile', authenticate, async (req, res, next) => {
  try {
    const {userId} = req.body;
    const userProfile = await getUserProfile(userId);
    if (!userProfile) {
      res.status(404).send('Nothing found in Database!')
      return;
    }
    res.send(userProfile);
  } catch (error) {
    next(error);
  }
})

app.post('/myStartedCourses', authenticate, async (req, res, next) => {
  try {
    const {userId} = req.body;
    const myStartedCourses = await getStartedCoursesByUserId(userId);
    if (!myStartedCourses) {
      res.status(404).send('No courses found in the Database')
      return;
    }
    res.send(myStartedCourses);
  } catch (error) {
    next(error);
  }
})

app.post('/myEnrolledCourses', authenticate, async (req, res, next) => {
  try {
    const {userId} = req.body;
    const myStartedCourses = await getEnrolledCoursesByUserId(userId);
    if (!myStartedCourses) {
      res.status(404).send('No courses found in the Database')
      return;
    }
    res.send(myStartedCourses);
  } catch (error) {
    next(error);
  }
})

app.post('/myCompletedCourses', authenticate, async (req, res, next) => {
  try {
    const {userId} = req.body;
    const myStartedCourses = await getCompletedCoursesByUserId(userId);
    if (!myStartedCourses) {
      res.status(404).send('No courses found in the Database')
      return;
    }
    res.send(myStartedCourses);
  } catch (error) {
    next(error);
  }
})



// start the Express server
app.listen(port, () => {
    console.log(`server started at http://localhost:${port}`);
});