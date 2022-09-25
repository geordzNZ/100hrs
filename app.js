console.log('hi from app.js')
require('dotenv').config({path: './config/.env'})


//Set up connection
const knex = require('knex')({
    client: 'mssql',
    connection: {
      server : process.env.DB_SERVER,
      port : 1433,
      user : process.env.DB_USER,
      password : process.env.DB_PASSWORD,
      database : 'BuildingApp'
    }
});

knex.select('*')
  .from('tblTest')
  .where('Name', 'StartConn')
    .then(returnedRecords => {
      returnedRecords.forEach(record => {
        console.log(`DB Says:  ${record.Comment}`)
      })
    }).finally(function () {
        knex.destroy()
    })