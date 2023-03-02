var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});

router.post("/", async(req, res, next) => {

  console.log(req.body); //saber si estoy tomando bien los datos

  var mascota = req.body.mascota;
  var sexo = req.body.sexo;
  var nombremascota = req.body.nombremascota;
  var fecha = req.body.fecha;
  var nombre = req.body.nombre;
  var email = req.body.email;
  var celular = req.body.celular;
  

  var obj = {
    to: 'analauraugo@gmail.com',
    subject: 'Contacto desde la Web' ,
    html: nombre + " se contacto a través de la web y quiere notificar que perdió a su : " + mascota + " se trata de un/una " + sexo + " llamado/a: " + nombremascota + " Se perdió el día: " + fecha + " Su mail es: " + email + " Su celular: " + celular
  };

  var transport = nodemailer.createTransport ({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS,
    }
  });

  var info = await transport.sendMail(obj);

  res.render('index', {
    message: 'Recibimos tu solicitud, nos contactaremos con vos a la brevedad.'
  });
});
  



module.exports = router;
