// const expressLayouts = require('express-ejs-layouts')

module.exports = {
  getIndex: (req,res)=>{
        res.render('index.ejs', { pageTitle: 'BMA', layout: './layouts/plain' })
  },
//   getSignUp: (req,res)=>{
//     res.render('signUp.ejs')
// },
  getdashboardPage: (req,res)=>{
    res.render('dashboardPage.ejs', { pageTitle: 'BMA - dashboard' })
  }
}