import 'dart:io';

void main() {
  const int fechaActual = 2024;

  print('PONGA SU AÑO DE NACIMIENTO');

  stdout.write('Ponga su año de nacimiento: ');
  String? inputEdad = stdin.readLineSync();

  if (inputEdad != null && inputEdad.isNotEmpty) {
    try {
      int anoNacimiento = int.parse(inputEdad);

      int edad = fechaActual - anoNacimiento;

      print('Tu edad según tu año de nacimiento es: $edad años');
    } catch (e) {
      print('Por favor, ingrese un año de nacimiento válido.');
    }
  } else {
    print('No se ingresó ningún año de nacimiento.');
  }
}
