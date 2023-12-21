const express = require('express');
const router = express.Router();
const userController = require('../Controllers/userController');


router.get('/:id', userController.getUser);

module.exports =  router;