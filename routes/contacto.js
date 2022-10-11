var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');

/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('contacto', {
    iscontacto: true
  });
});
router.post('/', async (req, res, next) => {

  //console.log(req.body);

  var nombre = req.body.nombre;
  var email = req.body.email;
  var telefono = req.body.tel;
  var mensaje = req.body.mensaje;

  var obj = {
    to: 'ivan_ruiz2301@hotmail.com',
    subject: 'contacto desde la web',
    html: nombre + "se contacto a la web y quiere mas info en este correo:"
     + email + ". <br> ademas, hizo el siguiente comenario:" 
     + mensaje + ". <br> su tel es"+telefono
  } 
  var transport = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user:process.env.SMTP_USER,
      pass:process.env.SMTP_PASS
    }
  })
//SMTP_HOST=smtp.mailtrap.io
//SMTP_PORT=2525
//SMTP_USER=04955a471d696a
//SMTP_PASS=4739515ff0185f


   
   
    var info = await transport.sendMail(obj);

    res.render ('contacto', { 
      iscontacto:true , 
      message: 'mensaje enviado correctamente'
    });

});
  
  
  




module.exports = router;
