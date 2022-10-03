// require('dotenv').config({path: './.env'})
require('dotenv').config()


//Set up connection
const knex = require('knex')({
  client: 'mssql',
connection: {
    server : process.env.DB_SERVER,
    port : 1433,
    user : process.env.DB_USER,
    password : process.env.DB_PASSWORD,
    database : process.env.DB_NAME
  }
});

//Test Connection
knex('tblTest')
.select('Comment')
.where('Name', 'StartConn')
.then(returnedRecords => console.log(`DB1 Says:  ${returnedRecords[0].Comment}`))
  .finally(function () { knex.destroy() })

module.exports = knex;