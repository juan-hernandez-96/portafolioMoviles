import 'dart:io';

main(){
  int n = 0, f = 1;
  stdout.writeln('Ingrese un numero para calcular su factorial: ');
  n = int.parse(stdin.readLineSync()!);
  for (int c = n; c > 1; c--){  
  f = f * c;
  }
  stdout.writeln('El factorial de $n es: $f');
  //for (int c = 1; c <= n; c++){
  //}
}
