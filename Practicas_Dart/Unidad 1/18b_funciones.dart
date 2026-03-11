import 'dart:io';

void multiply(int numero){
    for (int c = 0; c < 11; c++) {
      int r = 0;
      r = numero * c;
      stdout.write("$numero x $c = $r\n");
  }
}

main() {
  int n = 0;
  stdout.write("Dame el numero de la tabla de multiplicar: ");
  n = int.parse(stdin.readLineSync()!);
  multiply(n);
}
