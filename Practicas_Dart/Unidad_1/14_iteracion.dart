import 'dart:io';

int _readInt(String) {
  while (true) {
    final input = stdin.readLineSync();
    final value = int.tryParse(input ??"");
    if (value != null)
    return value;
    print("Entrada inválida. Intenta de nuevo.");
  }
}

void main() {
  while (true) {
    final x = _readInt("\nDame un número X (0 para salir): ");
    if (x == 0) {
      print("Programa finalizado.");
    }

    print(" ////Tabla de $x (1 a 50) ///");
    for (int i = 1; i <= 50; i++) {
      print("$x x $i = ${x * i}");
    }
  }
}
