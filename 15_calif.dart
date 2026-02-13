import 'dart:io';

void main() {
  //Listas d cadad sistema y equivalencias
  List<String> usa = ['A+', 'A', 'B', 'C', 'D', 'F'];
  List<String> mex = ['10', '9', '8', '7', '6', '5'];

  String? entrada;
  bool valido = false;
  int indice = -1;

  print('Introduzca la calificación en el sistema Americano:');

  //bucle de validación
  while (!valido) {
    entrada = stdin.readLineSync();

    if (entrada != null) {
      entrada = entrada.trim().toUpperCase();

      //verificar si la entrada está en la lista usa
      if (usa.contains(entrada)) {
        valido = true;
        indice = usa.indexOf(entrada);
      } else {
        print('Ingrese una calificación valida:');
      }
    }
  }

  //muestra la conversión de un sistema a otro
  print('La calificación $entrada equivale a ${mex[indice]} en el sistema Mexicano.');
}