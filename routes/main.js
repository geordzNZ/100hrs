const express = require('express')
const router = express.Router()
const homeController = require('../controllers/home')
const authController = require('../controllers/auth')
const adminController = require('../controllers/admin')
const deliveryController = require('../controllers/delivery')
const keystoreController = require('../controllers/keystore')


router.get('/', homeController.getIndex)
router.get('/signUp', authController.getSignUp)
router.post('/signUp', authController.postSignUp)
router.get('/login', authController.getLogin)
router.post('/login', authController.postLogin)
router.get('/LandingPage', homeController.getLandingPage)
router.get('/Deliveries', deliveryController.getDeliveryIndex)
router.get('/KeyStore', keystoreController.getkeyStoreIndex)
router.get('/Admin', adminController.getAdminIndex)

// router.post('/login', authController.postLogin)
// router.get('/logout', authController.logout)
// router.get('/signup', authController.getSignup)
// router.post('/signup', authController.postSignup)

module.exports = router