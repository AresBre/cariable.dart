import 'dart:io';

void main() {
  print('PORCENTAJE');

  stdout.write('Ponga un número: ');
  String? inputNum = stdin.readLineSync();

  if (inputNum != null && inputNum.isNotEmpty) {
    try {
      double num = double.parse(inputNum);

      double resultado = num * 0.2;

      print('El 20% de tu número es: $resultado');
    } catch (e) {
      print('Por favor, ingrese un número válido.');
    }
  } else {
    print('No se ingresó ningún número.');
  }
}
