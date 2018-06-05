var express = require('express');
var bodyParser = require('body-parser');
var mysql = require('mysql');
var path = require('path');
var cookieParser = require('cookie-parser');
var cors = require('cors');

var Login = require('./routes/login');
var Register = require('./routes/register');
const app = express();
const port = 3000;

const server = app.listen(port, () => {
	console.log('Express listening on port', port);
});


app.use(cors());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(cookieParser());
app.use('/login', Login);
app.use('/register', Register);
