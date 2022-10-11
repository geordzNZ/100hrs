require('dotenv').config({path: './config/.env'})
const { response } = require('express')
const knex = require('../config/database')

// function checkDB() {
//   console.log('Hi from checkDB')
//   knex('tblTest')
//   .select('Comment')
//   .where('Name', 'StartConn')
//   .then(returnedRecords => console.log(`DB3 Says:  ${returnedRecords[0].Comment}`))
//     .finally(function () { knex.destroy() })
//     .catch(console.log('caught'))
// }

module.exports = {
  getLogin: (req, res) => {
    console.log('Hi from getLogin')
    res.render('login.ejs', { pageTitle: 'BMA - Login', layout: './layouts/plain' })
  },
  getSignUp: (req, res) => {
    console.log('Hi from getSignUp')
    res.render('signUp.ejs', { pageTitle: 'BMA - Sign Up', layout: './layouts/plain' })
  },
  postLogin: async (req,res) => {
    console.log('Hi from postLogin')
    const data = await req.body.email
    console.log(req.body)

    // checkDB()
    
    res.render('landingPage.ejs')
  },
  postSignUp: async (req,res) => {
    console.log('Hi from postSignUp')
    console.log(req.body)

    res.render('landingPage.ejs')
  }
}