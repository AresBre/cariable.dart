import 'dart:io';

void main() {
  print('PORCENTAJE DEL 30%, 60% Y 90%');

  stdout.write('Ponga un número: ');
  String? inputNum = stdin.readLineSync();

  if (inputNum != null && inputNum.isNotEmpty) {
    try {
      double num = double.parse(inputNum);

      double resultado30 = num * 0.3;
      double resultado60 = num * 0.6;
      double resultado90 = num * 0.9;

      print('El 30% de tu número es: $resultado30');
      print('El 60% de tu número es: $resultado60');
      print('El 90% de tu número es: $resultado90');
    } catch (e) {
      print('Por favor, ingrese un número válido.');
    }
  } else {
    print('No se ingresó ningún número.');
  }
}
