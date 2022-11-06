var express = require('express');
var router = express.Router();
var novedadesmodel = require ('../models/novedadesModels')

/* GET home page. */
router.get('/', async function(req, res, next) {
  var efemerides = await novedadesmodel.getNovedades();
  res.render('efemerides',
  {isefemerides:true,
    efemerides
  });
});

module.exports = router;
