import 'package:flutter/material.dart';
import 'persona.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<Persona> estudiantes = [
    Persona(nombre: 'kevin', apellido: 'Poma', edad: 20),
    Persona(nombre: 'Anderson', apellido: 'Arevalo', edad: 22),
    Persona(nombre: 'Dady', apellido: 'Acacho', edad: 25),
    Persona(nombre: 'Antony', apellido: 'Perez', edad: 21),
    // Puedes agregar más estudiantes aquí
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Datos de Estudiantes'),
        ),
        body: Center(
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: estudiantes.map((estudiante) {
                return Text(
                  estudiante.toString(),
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 24.0,
                  ),
                  textAlign: TextAlign.center,
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
