var db = require('../dbconnection');


var register = {
    twoTables: function (data, callback) {
    //  console.log('data')
    //  console.log(data)
     db.query("INSERT INTO users (first_name, last_name,email, phone_no) VALUES (?,?,?,?)",
      [data.first_name, data.last_name,data.email,data.phone_no], function(err, result){
            if(result){
              console.log(result.insertId)
              db.query("INSERT INTO address_tables (user_id,address_1, address_2,area,state, city,country,zipcode) VALUES (?,?,?,?,?,?,?,?)",
               [result.insertId,data.address_1,data.address_2, data.area, data.state,data.city,data.country,data.zipcode]

                   , function(err, result){
                     if(result){
                       console.log(result.insertId)
                         callback({"response": "data", "success": true, data: []})
                     }else{
                       console.log(err)
                         callback({"response": "invalid login details.", "success": false, data: []})
                     }

                 });
            }else{
              console.log(err)
                callback({"response": "invalid login details.", "success": false, data: []})
            }

        });
    }
}
module.exports = register;
