import 'dart:io';

void main() {
    stdout.write('What is your first name?: ');
    String? firstName = stdin.readLineSync();
    stdout.write('What is your middle name?: ');
    String? middleName = stdin.readLineSync();
    stdout.write('What is your last name?: ');
    String? lastName = stdin.readLineSync();

    print('Hello, $firstName $middleName $lastName!');
}