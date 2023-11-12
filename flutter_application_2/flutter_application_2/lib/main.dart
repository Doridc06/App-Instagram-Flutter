import 'package:flutter/material.dart';
import 'package:flutter_application_2/pantallas/inicio/inicio.dart';

// Método main: Punto de entrada principal para la aplicación Flutter.
// Aquí se ejecuta la aplicación llamando al método runApp() con una instancia de MyApp.
void main() {
  runApp(const MyApp());
}

// Clase MyApp: Representa la aplicación Flutter.
// Esta clase es un StatelessWidget, lo que significa que su contenido no cambia durante el ciclo de vida de la aplicación.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner:
          false, // Oculta la bandera de modo de depuración en la esquina superior derecha
      home:
          Inicio(), // Establece la página principal de la aplicación como Inicio
    );
  }
}
