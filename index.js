const mysql = require('mysql');
const pool = mysql.createPool({
  connectionLimit : 10,
  //todo
});