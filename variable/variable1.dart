import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formulario de Multiplicación',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiplicationForm(),
    );
  }
}

class MultiplicationForm extends StatefulWidget {
  @override
  _MultiplicationFormState createState() => _MultiplicationFormState();
}

class _MultiplicationFormState extends State<MultiplicationForm> {
  final _formKey = GlobalKey<FormState>();
  final _controllerA = TextEditingController();
  final _controllerE = TextEditingController();
  final _controllerI = TextEditingController();

  String _result = "";

  void _calculateResult() {
    if (_formKey.currentState!.validate()) {
      final double c = double.parse(_controllerA.text);
      final double v = double.parse(_controllerE.text);
      final double b = double.parse(_controllerI.text);

      final double resultado = c * v * b;

      setState(() {
        _result = "El resultado de la multiplicación: $resultado";
      });
    }
  }

  @override
  void dispose() {
    _controllerA.dispose();
    _controllerE.dispose();
    _controllerI.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulario de Multiplicación'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('PONGA NÚMEROS', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              TextFormField(
                controller: _controllerA,
                decoration: InputDecoration(labelText: 'Ingrese un primer número:'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese un número';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _controllerE,
                decoration: InputDecoration(labelText: 'Ingrese un segundo número:'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese un número';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _controllerI,
                decoration: InputDecoration(labelText: 'Ingrese un tercer número:'),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor ingrese un número';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _calculateResult,
                child: Text('Calcular'),
              ),
              SizedBox(height: 20),
              Text(_result, style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
      ),
    );
  }
}
