import 'dart:io';

main() {
  int n = 0;
  stdout.write("Dame el numero de la tabla de multiplicar: ");
  n = int.parse(stdin.readLineSync()!);
  for (int c = 0; c < 11; c++) {
      int r = 0;
      r = n * c;
      stdout.write("$n x $c = $r\n");
  }
}
