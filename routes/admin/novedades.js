var express = require('express');
var router = express.Router();
var novedadesModels = require ('../../models/novedadesModels');


router.get('/', async function(req, res, next) {

  //var novedades = await novedadesModels.getNovedades();
  var novedades
  if (req.query.q === undefined) {
    novedades = await novedadesModels.getNovedades();
  } else {
    novedades = await novedadesModels.buscarnovedades (req.query.q);
  }

  res.render('admin/novedades',{
    layout:'admin/layout',
    usuario: req.session.nombre,
    novedades,
    is_search: req.query.q !== undefined,
    q: req.query.q
  });
});

router.get('/eliminar/:id', async (req,res,next) => {
  var id = req.params.id ;

  await novedadesModels.deleteNovedadesbyid(id);
  res.redirect('/admin/novedades');
});

router.get('/agregar', function (req, res, next)  {
  res.render('admin/agregar',{
      layout:'admin/layout',
  })
});

router.post ('/agregar', async (req, res,next)=> {
  try {
    //console.log (req.body)
    if (req.body.titulo != "" && req.body.subtitulo != "" && req.body.cuerpo != ""){
      await novedadesModels.insertNovedad (req.body);
      res.redirect ('/admin/novedades')
    } else {
      res.render('admin/agregar', {
        layout: 'admin/layout',
        error: true, 
        message:'todos los campos son requeridos'
      })
    }
  } catch (error) {
    console.log (error) 
    res.render('admin/agregar', {
      layout:'admin/layout',
      error:true, 
      message:'no se cargo la novedad'

    })
  }
});
router.get('/modificar/:id', async (req, res, next) => {
  //console.log (req.params.id);
  var id = req.params.id;
  var novedad = await novedadesModels.getNovedadesbyid(id);

 
  res.render('admin/modificar', {
    layout:'admin/layout' , 
    novedad ,
    
  })
  });


router.post('/modificar', async (req,res,next) => {
  try {
    //console.log(obj)
    var obj={
    titulo: req.body.titulo,
    subtitulo: req.body.subtitulo,
    cuerpo: req.body.cuerpo
  }
  //console.log(obj)

  await novedadesModels.modificarNovedadesbyid(obj, req.body.id);
  res.redirect ('/admin/novedades');

}catch (error) {
    console.log (error) 
    res.render('admin/modificar', {
      layout:'admin/layout',
      error:true, 
      message:'no se modifico la novedad'

    })


  }});




module.exports = router;