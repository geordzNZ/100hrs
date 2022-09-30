const express = require('express')
const router = express.Router()
// const authController = require('../controllers/auth') 
const homeController = require('../controllers/home')
const adminController = require('../controllers/admin')
const deliveryController = require('../controllers/delivery')
const keystoreController = require('../controllers/keystore')
//const { ensureAuth, ensureGuest } = require('../middleware/auth')

router.get('/', homeController.getIndex)
router.get('/LandingPage', homeController.getLandingPage)
router.get('/Deliveries', deliveryController.getDeliveryIndex)
router.get('/KeyStore', keystoreController.getkeyStoreIndex)
router.get('/Admin', adminController.getAdminIndex)

// router.post('/login', authController.postLogin)
// router.get('/logout', authController.logout)
// router.get('/signup', authController.getSignup)
// router.post('/signup', authController.postSignup)

module.exports = router