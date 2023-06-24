const express = require("express");
const bodyParser = require("body-parser")
<<<<<<< HEAD
const userRoute = require("./routers/user.routers");


=======
const UserRoute = require("./routers/user.routers");

//const ToDoRoute = require('./routes/todo.router');
>>>>>>> 2a43947fceb538023eee0e897932a81db3c2f994

const app = express();

app.use(bodyParser.json())
<<<<<<< HEAD
app.use("/",userRoute);


=======
app.use("/",UserRoute);

//app.use("/",ToDoRoute);
>>>>>>> 2a43947fceb538023eee0e897932a81db3c2f994

module.exports = app;