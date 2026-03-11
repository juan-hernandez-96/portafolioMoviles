
import 'dart:io';   //importa la librería para entrada/salida en consola (leer y escribir datos)
import 'dart:math';

//función principal del programa
void main() {
  while (true) { //bucle q se repite hasta que se decida salir
    print('\n=== Menú Principal ==='); // Muestra el título del menú para q se vae coqueto
    print('Tickets (1)');        // Opción 1: calcular área
    print('Tecnico (2)');     // Opción 2: calcular volumen
    print('Salir (3)');                // Opción 3: salir del programa
    stdout.write('Seleccione una opción ingresando un número del 1 al 3: '); //pide ingresar una opción
    String? opcion = stdin.readLineSync(); //lee la opción ingresada por el usuario
    print('\n'); //salto de línea

    //condicionales según la opción q se elegio
    if (opcion == '1') {
      tickets(); //llama a la función
    } else if (opcion == '2') {
      tecnico(); //llama a la función
    } else if (opcion == '3') {
      mostrarsistema(); //llama a la función      
    } else if (opcion == '4') { 
      print('Salir');  //mensaje de confirmacion 
      break;          //sale del bucle y termina el programa
    } else {
      print('opción inválida, intenta de nuevo.'); //mensaje de error si la opción no es válida
    }
  }
}

void mostrarsistema(){
  print("\n Estado del sistema: \n");

  var cola;
  cola.showQueue();


}

//función para calcular áreas
void tecnico() {
  print('\n=== Menú De Tecnico ===');
  print('Círculo (1)');            // Opción 1: círculo
  print('Triángulo (2)');          // Opción 2: triángulo
  print('Rectángulo (3)');         // Opción 3: rectángulo
  stdout.write('Selecciona una figura ingresando un número del 1 al 3: '); // Elegir la figura
  String? figura = stdin.readLineSync(); //lee la opcion seleccionada
  print('\n'); //salto de línea

  //selección según la figura
  switch (figura) {
    case '1': // Círculo
      stdout.write('Ingrese el radio (u): '); //pide el radio
      double radio = double.parse(stdin.readLineSync()!); //convierte entrada a número
      double area = pi * pow(radio, 2); //fórmula del área del círculo
      print('El área del círculo es: $area unidades cuadradas'); //muestra el resultado
      break;

    case '2': // Triángulo
      stdout.write('Ingrese la base (u): '); //pide base
      double base = double.parse(stdin.readLineSync()!);
      stdout.write('Ingrese la altura (u): '); //pide altura
      double altura = double.parse(stdin.readLineSync()!);
      double area = (base * altura) / 2; //fórmula del área del triángulo
      print('El área del triángulo es: $area unidades cuadradas');
      break;

    case '3': // Rectángulo
      stdout.write('Ingrese la base (u): ');
      double base = double.parse(stdin.readLineSync()!);
      stdout.write('Ingrese la altura (u): ');
      double altura = double.parse(stdin.readLineSync()!);
      double area = base * altura; //fórmula del área del rectángulo
      print('El área del rectángulo es: $area unidades cuadradas');
      break;

    default: //si la opción no es válida
      print('Opción inválida.');
  }
}

/// Clase Queue 
class Queue<T> {
  List<T> _items = [];

  /// Agregar un elemento al final de la cola
  void enqueue(T item) {
    _items.add(item);
    print("ticket $item agregado a la cola.");
  }

  /// Quitar el primer elemento de la cola
  T? dequeue() {
    if (_items.isEmpty) {
      print("La cola está vacía, no se puede hacer dequeue.");
      return null;
    }
    T removed = _items.removeAt(0);
    print("Elemento $removed eliminado de la cola.");
    return removed;
  }

  /// Mostrar el estado actual de la cola
  void showQueue() {
    if (_items.isEmpty) {
      print("La cola está vacía.");
    } else {
      print("Estado actual de la cola: $_items");
    }
  }

  /// Verificar si la cola está vacía
  bool isEmpty() => _items.isEmpty;
}

void tickets() {
  Queue<String> cola = Queue<String>();

  print("===== Tickets =====");
  print("Ingresa nombres de tickets para agregarlos a la cola.");
  print("Usa 'atender', 'mostrar' o 'salir' para interactuar.");

  while (true) {
    stdout.write("Ingrese un nombre de ticket o comando: ");
    String? input = stdin.readLineSync();

    if (input == null) continue;

    if (input.toLowerCase() == "salir") {
      print("byebye");
      break;
    } else if (input.toLowerCase() == "atender") {
      cola.dequeue();
    } else if (input.toLowerCase() == "mostrar") {
      cola.showQueue();
    } else {
      // Intentamos convertir el input a string
      try {
        String nombreTicket = input;
        cola.enqueue(nombreTicket);
      } catch (e) {
        print("Entrada inválida. Usa nombres de tickets, 'atender', 'mostrar' o 'salir'.");
      }
    }

    // Mostrar automáticamente el estado de la cola
    cola.showQueue();
  }
}