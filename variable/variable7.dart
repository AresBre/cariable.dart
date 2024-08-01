import 'dart:io';

void main() {
  print('CALCULAR EL ÁREA DE UN CUADRADO');

  // Solicitar el lado del cuadrado al usuario
  stdout.write('Ponga un lado: ');
  String? inputLado = stdin.readLineSync();

  // Validar y procesar la entrada del usuario
  if (inputLado != null && inputLado.isNotEmpty) {
    try {
      // Convertir la entrada a un número
      double lado = double.parse(inputLado);

      // Calcular el área del cuadrado
      double area = lado * lado;

      // Mostrar el resultado
      print('El área del cuadrado es: $area');
    } catch (e) {
      print('Por favor, ingrese un número válido.');
    }
  } else {
    print('No se ingresó ningún número.');
  }
}
