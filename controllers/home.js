module.exports = {
    getIndex: (req,res)=>{
        res.render('index.ejs')
  },
  getLandingPage: (req,res)=>{
    res.render('landingPage.ejs')
  }
}