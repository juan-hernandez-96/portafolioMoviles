import 'dart:io';
import 'dart:math';

main() {
  int i = 1;
  while (i > 0) {
    print("Desea calcular un Area o Volumen? \n Area = '1' - Volumen = '2'\n");
    int? Eleccion = int.parse(stdin.readLineSync()!);
    if (Eleccion == 1) {
      print(
        "Desea calcular el Area de un Circulo, Triangulo o Rectangulo? \n Circulo = '1' - Triangulo = '2' - Rectangulo = '3'\n",
      );
      int? Areas = int.parse(stdin.readLineSync()!);
      if (Areas == 1) {
        print("Ingresa el radio del circulo");
        double? radio = double.parse(stdin.readLineSync()!);
        double Area1 = (3.1416 * (pow(radio, 2)));
        print("El Area del Circulo es de: $Area1 m²\n");
      } else if (Areas == 2) {
        print("Ingresa el valor de la base del triangulo");
        double? base1 = double.parse(stdin.readLineSync()!);
        print("Ingresa el valor de la altura del triangulo");
        double? altura1 = double.parse(stdin.readLineSync()!);
        double Area2 = (base1 * altura1) / 2;
        print("El Area del Triangulo es de: $Area2 m²\n");
      } else {
        print("Ingresa el valor de la base del Rectangulo");
        double? base2 = double.parse(stdin.readLineSync()!);
        print("Ingresa el valor de la altura del Rectangulo");
        double? altura2 = double.parse(stdin.readLineSync()!);
        double Area3 = (base2 * altura2);
        print("El Area del Rectangulo es de: $Area3 m²\n");
      }
    } else {
      print(
        "Desea calcular el Volumen de un Esfera, Piramide o Cubo? \n Esfera = '1' - Piramide = '2' - Cubo = '3'\n",
      );
      int? Volumenes = int.parse(stdin.readLineSync()!);
      if (Volumenes == 1) {
        print("Ingresa el Radio de la Esfera");
        double? radioEsfera = double.parse(stdin.readLineSync()!);
        double Volumen1 = (4 / 3) * pi * pow(radioEsfera, 3);
        print("El Volumen de la Esfera es de: $Volumen1 m³\n");
      } else if (Volumenes == 2) {
        print("Ingresa el valor de la base de la Piramide");
        double? basePiramide = double.parse(stdin.readLineSync()!);
        print("Ingresa el valor de la altura de la Piramide");
        double? alturaPiramide = double.parse(stdin.readLineSync()!);
        double Volumen2 = (1 / 3) * basePiramide * alturaPiramide;
        print("El Volumen de la Piramide es de: $Volumen2 m³\n");
      } else {
        print("Ingresa la Longitud de la arista del Cubo");
        double? arista = double.parse(stdin.readLineSync()!);
        double Volumen3 = pow(arista, 3).toDouble();
        print("El Volumen del Cubo es de: $Volumen3 m³\n");
      }
    }
    i = i + 1;
  }
}
