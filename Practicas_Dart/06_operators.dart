import 'dart:io';

main() {

  // Assignment Operators
  int a = 30;
  int? b;
  b ??= 20;
  print(b); // Output: 20


  // Conditional Operators
  int c = (a > b) ? a : b;
  print(c); // Output: 20

  int d = 27;
  String response = (d > 25)
      ? 'd is greater than 25'
      : 'd is not greater than 25';
  print(response); // Output: d is not greater than 25


  // Relational Operators :: Always return boolean values
  String people1 = 'Luis';
  String people2 = 'Alberto';
  print(people1 == people2); // Output: false
  print(people1 != people2); // Output: true

  int x = 20;
  int y = 30;

  print(x > y);  // Output: false
  print(x < y);  // Output: true
  print(x >= y); // Output: false
  print(x <= y); // Output: true


  // Type Test Operators
  int i = 10;
  String j = '10';
  print(i is int);       // Output: true
  print(j is int);       // Output: false
  print(i is String);    // Output: false
  print(j is String);    // Output: true
}