import 'dart:io';

void main() {
  stdout.write('First number: ');
  int? num1 = int.parse(stdin.readLineSync()!);
  stdout.write('Second number: ');
  int? num2 = int.parse(stdin.readLineSync()!);

  if (num1 > num2) {
    print('$num1 is greater than $num2');
  } 
  else {
    print('$num2 is greater than $num1');
  }
}