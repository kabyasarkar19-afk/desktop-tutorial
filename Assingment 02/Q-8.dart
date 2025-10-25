import 'dart:io';

void main() {
  stdout.write('Enter first number: ');
  double a = double.parse(stdin.readLineSync()!);
  stdout.write('Enter operator (+, -, *, /): ');
  String op = stdin.readLineSync()!;
  stdout.write('Enter second number: ');
  double b = double.parse(stdin.readLineSync()!);

  double result;

  switch(op) {
    case '+':
      result = a + b;
      break;
    case '-':
      result = a - b;
      break;
    case '*':
      result = a * b;
      break;
    case '/':
      if (b != 0)
        result = a / b;
      else {
        print('Division by zero not allowed');
        return;
      }
      break;
    default:
      print('Invalid operator');
      return;
  }

  print('Result: $result');
}
