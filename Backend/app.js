const express = require('express');
const UserRoutes = require('./Routes/user');
const app = express();
const cors = require('cors');
const port = process.env.PORT || 3000;

app.get('/users', UserRoutes);

app.use(express.json()); //For Parsing app/json
app.use(express.urlencoded({ extended: true })); //For parsing application

//404 message//
app.use(function(req,res,next) {
    return next (new ExpressError("Not Found", 404));
});


app.listen(3000, function () {
    console.log("Listening on 3000");
  });
