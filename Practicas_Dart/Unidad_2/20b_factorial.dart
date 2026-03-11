import 'dart:io';

int factorial(int f, int n){
  for (int c = n; c > 1; c--){  
  f = f * c;
  }
  return f;
}
main(){
  int n = 0, f = 1;
  stdout.writeln('Ingrese un numero para calcular su factorial: ');
  n = int.parse(stdin.readLineSync()!);
  f = factorial(f,n);
  stdout.writeln('El factorial de $n es: $f');
}
