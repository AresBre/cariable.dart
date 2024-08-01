import 'dart:io';

void main() {
  print('POTENCIACIÓN');
  print('Por favor, ingrese un número: ');

  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    try {
      double number = double.parse(input);

      double resultado = number * number;

      print('El resultado del cuadrado del número es: $resultado');
    } catch (e) {
      print('Por favor, ingrese un número válido.');
    }
  } else {
    print('No se ingresó ningún número.');
  }
}
