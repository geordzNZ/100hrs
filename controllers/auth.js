require('dotenv').config({path: './config/.env'})
const { response } = require('express')
const knex = require('../config/database')
const validator = require("validator");
// const User = require("../models/User");

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
    res.render('login.ejs', { pageTitle: 'BMA - Login', layout: './layouts/plain', errors: '' })
  },

  postLogin: async (req, res) => {
    console.log('Hi from postLogin')

    const data = await req.body.email
    console.log(req.body)

    const validationErrors = []
    if (!validator.isEmail(req.body.email)) {
      validationErrors.push({ msg: "Please enter a valid email address." })
    };
  if (validator.isEmpty(req.body.password)){
    validationErrors.push({ msg: "Password cannot be blank." })
    };

    console.log(validationErrors)

    
    // if (validationErrors.length) {
    //   req.flash("errors", validationErrors);
    //   return res.redirect("/login");
    // }

    req.body.email = validator.normalizeEmail(req.body.email)
    console.log(req.body)

    if (validationErrors.length) {
      res.render('login.ejs',{ pageTitle: 'BMA - Login - err', layout: './layouts/plain', errors:  validationErrors})
    }

    // res.render('dashboardPage.ejs', { pageTitle: 'BMA - dashboard1' })
  },
 
  getSignUp: (req, res) => {
    console.log('Hi from getSignUp')
    res.render('signUp.ejs', { pageTitle: 'BMA - Sign Up', layout: './layouts/plain' })
  },
 
  postSignUp: async (req,res) => {
    console.log('Hi from postSignUp')
    console.log(req.body)

    res.render('dashboardPage.ejs', { pageTitle: 'BMA - dashboard2' })
  }
}