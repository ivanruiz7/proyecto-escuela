var express = require('express');
var md5 = require('md5');
var router = express.Router();
var usuariosModels = require('./../../models/usuariosModels');




router.get('/', function (req, res, next) {
    res.render('admin/newuser',{
    layout :'admin/layout',
    })
});
router.post ('/', async (req, res,next)=> {
    try {
      //console.log (req.body)
      if (req.body.usuario != "" && req.body.password != ""){
   
      await usuariosModels.insertusuario (req.body);
        res.redirect ('/admin/login');
        
      } else {
        res.render('admin/newuser', {
          layout: 'admin/layout',
          error: true, 
          message:'todos los campos son requeridos'
        })
      }
    } catch (error) {
      console.log (error) 
      res.render('admin/newuser', {
        layout:'admin/layout',
        error:true, 
        message:'error en la carga del usuario'
  
      })
    }
  });

module.exports = router ;