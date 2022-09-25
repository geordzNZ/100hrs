console.log('hi from server.js')
const express = require('express')
const app = express()
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
  
//Test Connection
knex('tblTest')
  .select('Comment')
  .where('Name', 'StartConn')
  .then(returnedRecords => console.log(`2) DB Says:  ${returnedRecords[0].Comment}`))
  .finally(function () { knex.destroy() })

app.set('view engine', 'ejs')
app.use(express.static('public'))
app.use(express.urlencoded({ extended: true }))
app.use(express.json())



// app.use('/', routeMain)
// app.use('/notes', routeNotes)

app.listen(process.env.PORT, ()=>{
  console.log('SERVER ENGAGED --> Lets go get 🍕!!')
})