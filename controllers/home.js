// const expressLayouts = require('express-ejs-layouts')

module.exports = {
  getIndex: (req,res)=>{
        res.render('index.ejs', { pageTitle: 'BMA', layout: './layouts/plain' })
  },
//   getSignUp: (req,res)=>{
//     res.render('signUp.ejs')
// },
  getdashbaordPage: (req,res)=>{
    res.render('dashbaordPage.ejs')
  }
}