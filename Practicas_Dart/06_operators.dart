import 'dart:io';

void main() {
  stdout.writeln('Enter your name: ');
  String? name = stdin.readLineSync();
  stdout.writeln('Hello, $name!');

  stdout.write('Enter a number: ');
  int? number = int.parse(stdin.readLineSync()!);
  stdout.writeln('You entered: $number');

}
