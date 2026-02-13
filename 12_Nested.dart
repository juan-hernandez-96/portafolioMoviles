import 'dart:io';

void main() {

  stdout.write('Enter a number: ');
  int? a = int.parse(stdin.readLineSync()!);

  stdout.write('Enter the second number: ');
  int? b = int.parse(stdin.readLineSync()!);

  stdout.write('Enter the third number: ');
  int? c = int.parse(stdin.readLineSync()!);

  stdout.write('Enter the last number: ');
  int? d = int.parse(stdin.readLineSync()!);

  if (a > b) {
    if (a > c) {
      if (a > d) {
        print('The largest number is $a');
      }
    } 
  }
  if (b > a) {
    if (b > c) {
      if (b > d) {
        print('The largest number is $b');
      }
    } 
  }
  if (c > a) {
    if (c > b) {
      if (c > d) {
        print('The largest number is $c');
      }
    } 
  }
  if (d > a) {
    if (d > b) {
      if (d > c) {
        print('The largest number is $d');
      }
    } 
  }

  int temp;

  if (a < b) { temp = a; a = b; b = temp; }
  if (a < c) { temp = a; a = c; c = temp; }
  if (a < d) { temp = a; a = d; d = temp; }

  if (b < c) { temp = b; b = c; c = temp; }
  if (b < d) { temp = b; b = d; d = temp; }

  if (c < d) { temp = c; c = d; d = temp; }
  
  print('Ordered from biggest to smallest: $a, $b, $c, $d');
}
