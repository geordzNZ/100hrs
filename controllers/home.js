module.exports = {
  getIndex: (req,res)=>{
        res.render('index.ejs')
  },
//   getSignUp: (req,res)=>{
//     res.render('signUp.ejs')
// },
  getLandingPage: (req,res)=>{
    res.render('landingPage.ejs')
  }
}