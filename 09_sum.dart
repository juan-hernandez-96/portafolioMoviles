import 'dart:io';

void main() {
    stdout.write('Your first number is?: ');
    int? firstNumber = int.parse(stdin.readLineSync()!);
    stdout.write('Your second number is?: ');
    int? secondNumber = int.parse(stdin.readLineSync()!);

    int sum = firstNumber + secondNumber;
    print('The sum of $firstNumber and $secondNumber is: $sum');
}