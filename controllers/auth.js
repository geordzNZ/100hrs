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
    
    res.render('landingPage.ejs')
  }
}