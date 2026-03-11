import 'dart:io';

void Prime(int n) {
  bool isPrime = true;
  outerhaven:
  if (n <= 1) {
    isPrime = false;
  } else {
    for (int i = 2; i <= n ~/ 2; i++) {
      if (n % i == 0) {
        isPrime = false;
        break outerhaven;
      }
    }
  }
  if (isPrime) {
    print("$n es un numero primo.");
  } else {
    print("$n no es un numero primo.");
  }
} 

main() {
  int i = 0;
  stdout.write("Ingresa un numero para saber si es primo: ");
  i = int.parse(stdin.readLineSync()!);
  Prime(i);
}
