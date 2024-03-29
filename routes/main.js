const express = require('express')
const router = express.Router()
const homeController = require('../controllers/home')
const authController = require('../controllers/auth')
const adminController = require('../controllers/admin')
const deliveryController = require('../controllers/delivery')
const keystoreController = require('../controllers/keystore')


router.get('/', homeController.getIndex)
router.get('/login', authController.getLogin)
router.post('/login', authController.postLogin)
router.get('/signUp', authController.getSignUp)
router.post('/signUp', authController.postSignUp)
router.get('/dashboardPage', homeController.getdashboardPage)
router.get('/Deliveries', deliveryController.getDeliveryIndex)
router.get('/KeyStore', keystoreController.getkeyStoreIndex)
router.get('/Admin', adminController.getAdminIndex)

// router.get('/logout', authController.logout)

module.exports = router