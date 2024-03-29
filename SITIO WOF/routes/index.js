var express = require('express');
var router = express.Router();
var nodemailer = require('nodemailer');
var novedadesModel = require('../models/novedadesModel');
var cloudinary = require('cloudinary').v2;



/* GET home page. */
router.get('/', async function(req, res, next) {

var novedades = await novedadesModel.getNovedades();

novedades = novedades.splice(0, 5); //seleccionamos los primeros 5 elementos del array
novedades = novedades.map(novedad => {
  if (novedad.img_id) {
    const imagen = cloudinary.url(novedad.img_id, {
      width: 460,
      crop: 'fill'
    });
    return {
      ...novedad,
      imagen
    }
  } else {
    return {
      ...novedad,
      imagen: '/images/novedades/imgnodisponible.jpg'
    }
  }
});

  res.render('index', { novedades
   });
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
