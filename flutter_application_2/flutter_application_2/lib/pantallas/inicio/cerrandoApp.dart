import 'package:flutter/material.dart';

/// Clase PantallaCerrando: Representa la pantalla que se muestra mientras la aplicación se está cerrando.
/// Muestra un mensaje de cierre y detalles del autor.
class PantallaCerrando extends StatelessWidget {
  // Constructor de la clase PantallaCerrando
  const PantallaCerrando({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cerrando'),
        backgroundColor: const Color.fromARGB(255, 181, 63, 148),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Mensaje de cierre
            Text(
              'Cerrando la aplicación...',
              style: TextStyle(
                color: Colors.blue, // Establece el color azul
                fontSize: 20, // Establece el tamaño de fuente
                fontFamily: 'DM Sans',
              ),
            ),
            // Detalles del autor
            Text(
              'Autor: Doriana Da Costa',
              style: TextStyle(
                color: Colors.blue, // Establece el color azul
                fontSize: 24, // Establece el tamaño de fuente
              ),
            ),
            // Puedes agregar más contenido si es necesario
          ],
        ),
      ),
    );
  }
}
