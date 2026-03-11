import 'dart:io';

// Factorial usando recursividad
int factorial(int num){
  if (num == 1){
    return 1;
  } else {
    return num * factorial(num - 1);
  }
}

main(){
  int num = 0;
  stdout.writeln('Ingrese un numero para calcular su factorial: ');
  num = int.parse(stdin.readLineSync()!);

  int resultado = factorial(num);

  stdout.writeln('El factorial de $num es: $resultado');
}
