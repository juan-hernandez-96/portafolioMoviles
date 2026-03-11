import 'dart:io';

/// Clase Queue 
class Queue<T> {
  List<T> _items = [];

  /// Agregar un elemento al final de la cola
  void enqueue(T item) {
    _items.add(item);
    print("Elemento $item agregado a la cola.");
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

void main() {
  Queue<int> cola = Queue<int>();

  print("===== Queue =====");
  print("Ingresa números para agregarlos a la cola.");
  print("Usa 'dequeue', 'mostrar' o 'salir' para interactuar.");

  while (true) {
    stdout.write("Ingrese un número o comando: ");
    String? input = stdin.readLineSync();

    if (input == null) continue;

    if (input.toLowerCase() == "salir") {
      break;
    } else if (input.toLowerCase() == "dequeue") {
      cola.dequeue();
    } else if (input.toLowerCase() == "mostrar") {
      cola.showQueue();
    } else {
      // Intentamos convertir el input a número
      try {
        int numero = int.parse(input);
        cola.enqueue(numero);
      } catch (e) {
        print("Entrada inválida. Usa números, 'dequeue', 'mostrar' o 'salir'.");
      }
    }

    // Mostrar automáticamente el estado de la cola
    cola.showQueue();
  }
}
