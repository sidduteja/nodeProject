var db = require('../dbconnection');


var login = {
    authCheck: function (data, callback) {
      console.log('data')
      console.log(data)
     db.query("Select * from users u  where u.email=? AND u.password = ?",
        [
            data.email,
            data.password
        ], function(err, rows){
            if(rows.length>0){
                callback({"response": "data", "success": true, data: rows})
            }else{
                callback({"response": "invalid login details.", "success": false, data: []})
            }

        });
    },

    getAllData: function (data, callback) {
      console.log('data')
      console.log(data)
     db.query("Select * from users u",
        [], function(err, rows){
            if(rows.length>0){
                callback({"response": "data", "success": true, data: rows})
            }else{
                callback({"response": "invalid login details.", "success": false, data: []})
            }

        });
    }
  };
  module.exports = login;
