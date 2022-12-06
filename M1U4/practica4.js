// Ejercicio 1

// Utilizando lo aprendido escribir el código necesario para que dada una distancia determine el medio de transporte apropiado de acuerdo a las siguientes reglas:

// 0 a 1000 metros = pie
// 1000 a 10000 metros = bicicleta
// 10000 a 30000 metros = colectivo
// 30000 a 100000 metros = auto
// +100000 = avión

var metros = 1000

if (metros <= 1000) {
    alert ('Transporte: Pie');
}
else if (metros <=10000) {
  alert ('Transporte: Bicicleta');
}
else if (metros <= 30000) {
  alert ('Transporte: Colectivo');
}
else if (metros <=100000) {
  alert ('Transporte: Auto');
}
else if (metros > 100000) {
  alert ('Transporte: Avión');
}





