require('dotenv').config({path: './config/.env'})
const { response } = require('express')
const knex = require('../config/database')


// const knexResp = () => {
//   knex('tblTest')
//   .select('Comment')
//   .where('Name', 'StartConn')
//   .then(returnedRecords => console.log(`DB4 Says:  ${returnedRecords[0].Comment}`))
//   .finally(function () { knex.destroy() })
// }


module.exports = {
  getLogin: (req, res) => {
    res.render('login.ejs')
  },
  getSignUp: (req, res) => {
    res.render('signUp.ejs')
  },
  postLogin: async (req,res) => {
    const data = await req.body.email
    console.log('Hi from postLogin')
    console.log(req.body)
  },
  postSignUp: async (req,res) => {
    console.log('Hi from postSignUp')
    console.log(req.body)

    // knexResp()

    // await knex('tblTest')
    // .select('Comment')
    // .where('Name', 'StartConn')
    // .then(returnedRecords => console.log(`DB3 Says:  ${returnedRecords[0].Comment}`))
    // .finally(function () { knex.destroy() })

    // knex('tblTest')
    //   .insert({
    //     Name: 'Slaughterhouse Five',
    //     Comment: 'Book'
    //   })

    res.render('landingPage.ejs')
  }
}