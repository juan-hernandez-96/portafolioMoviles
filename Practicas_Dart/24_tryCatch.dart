import 'dart:io';

// Factorial usando recursividad
int factorial(int num){
  if (num < 0){ // Si el número es negativo, lanzamos una excepción
    throw Exception("El número no puede ser negativo"); // Lanzamos una excepción personalizada con un mensaje de error
  }
  if (num == 0 || num == 1){ // El factorial de 0 y 1 es 1
    return 1; // Retornamos 1 para el caso base de la recursión
  }
  return num * factorial(num - 1); // Llamada recursiva para calcular el factorial de num, multiplicando num por el factorial de num - 1
}

void main(){
  stdout.writeln('Ingrese un numero para calcular su factorial: '); // Solicitamos al usuario que ingrese un número para calcular su factorial

  try { // Intentamos ejecutar el bloque de código que puede lanzar una excepción
    int num = int.parse(stdin.readLineSync()!); // Leemos la entrada del usuario y la convertimos a un entero, si la conversión falla, se lanzará una excepción

    int resultado = factorial(num); // Llamamos a la función factorial con el número ingresado por el usuario y almacenamos el resultado

    stdout.writeln('El factorial de $num es: $resultado'); // Imprimimos el resultado del factorial calculado para el número ingresado por el usuario

  } catch (e) { // Si ocurre una excepción durante la ejecución del bloque try, se captura aquí y se maneja
    stdout.writeln('Error: $e'); // Imprimimos un mensaje de error que incluye la información de la excepción capturada, lo que ayuda al usuario a entender qué salió mal
  }
}
