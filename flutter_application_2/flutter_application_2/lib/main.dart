import 'package:flutter/material.dart';
import 'package:flutter_application_2/pantallas/inicio/inicio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Inicio(), // Cambiamos la página principal a Inicio
    );
  }
}
