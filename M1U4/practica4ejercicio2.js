
// // Ejercicio 2

// // Haciendo uso de los bucles, recorrer un array de números y determinar cual es el mayor


// // array de números
var numeros = [1,2, 3,4,5,6,7,8,9,10];



var max = 0;


// Con el bucle For recorremos el valor del array "numeros":
for ( var numero of numeros ) {
  

if (max < numero)
    max = numero;
}


// muestra en la consola el valor numérico más grande dentro del array
console.log(max);
