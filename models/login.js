var db = require('../dbconnection');


var login = {
    authCheck: function (data, callback) {
      console.log('data123')
      console.log(data)
     db.query("Select * from users u  where u.first_name=?",
        [
            data.first_name,
            
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
     db.query("Select DISTINCT city from address_tables",
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
