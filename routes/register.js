var express = require('express');
var router = express.Router();
var Login = require('../models/login');
var Register = require('../models/register');

router.post('/', function(req, res, next) {

    Login.getAllData(req.body, function(err, rows) {

        if (err) {
            res.json(err);
        } else {

            res.json(rows); //or return count for 1 & 0
        }
    });


});

router.post('/twoTables', function(req, res, next) {

    Register.twoTables(req.body, function(err, rows) {
           console.log('body===',req.body)
        if (err) {
            res.json(err);
        } else {

            res.json(rows); //or return count for 1 & 0
        }
    });


});

module.exports = router;
