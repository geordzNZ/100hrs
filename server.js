console.log('hi from server.js')

const express = require('express')
const app = express()
const expressLayouts = require('express-ejs-layouts')
const routeMain = require('./routes/main')
const knex = require('./config/database')
// require('dotenv').config({ path: './config/.env' })


//Test Connection
knex('tblTest')
  .select('Comment')
  .where('Name', 'StartConn')
  .then(returnedRecords => console.log(`DB_ServerJS Says:  ${returnedRecords[0].Comment}`))
  .finally(function () { knex.destroy() })


app.set('view engine', 'ejs')
app.use(express.static('public'))
app.use(express.urlencoded({ extended: true }))
app.use(express.json())
app.use(expressLayouts)
app.set('layout', './layouts/default')

// Route(s)
app.use('/', routeMain)

app.listen(process.env.SERVER_PORT, ()=>{
  console.log(`PORT ${process.env.SERVER_PORT} ENGAGED  -->  Lets go get 🍕!!!!`)
})