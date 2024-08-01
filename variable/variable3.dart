import 'dart:io';

void main() {
  print('Calcular Distancia en Movimiento Rectilíneo');

  stdout.write('Ingrese la velocidad en Km/h: ');
  String? inputVelocidad = stdin.readLineSync();

  stdout.write('Ingrese el tiempo en horas: ');
  String? inputTiempo = stdin.readLineSync();

  if (inputVelocidad != null && inputTiempo != null && inputVelocidad.isNotEmpty && inputTiempo.isNotEmpty) {
    try {
      double velocidad = double.parse(inputVelocidad);
      double tiempo = double.parse(inputTiempo);

      double distancia = velocidad * tiempo;

      print('La distancia recorrida en movimiento rectilíneo es de $distancia kilómetros');
    } catch (e) {
      print('Por favor, ingrese valores numéricos válidos para velocidad y tiempo.');
    }
  } else {
    print('No se ingresaron valores válidos para velocidad y tiempo.');
  }
}
