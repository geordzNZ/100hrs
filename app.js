console.log('hi from main.js')
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

knex.select('*').from('tblTest')
    .then(tblTestRows => {
        tblTestRows.forEach(testRow => {
            console.log(testRow)
        })
        console.log('Records: ',tblTestRows.length)
    }).catch(err => {
        console.log('ERROR:',err)
    }).finally(function () {
        knex.destroy()
    })