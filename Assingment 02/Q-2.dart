import 'dart:io';

void main() {
  stdout.write('Enter a character: ');
  String ch = stdin.readLineSync()!.toLowerCase();

  if('aeiouAEIOU'.contains(ch)) {
    print('$ch is a vowel');
  }
  else if(RegExp(r'^[a-z]$').hasMatch(ch)) {
    print('$ch is a consonant');
  }
  else {
    print('Invalid input');
  }
}
