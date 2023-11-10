import 'package:flutter/material.dart';

class PantallaCerrando extends StatelessWidget {
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
            Text(
              'Cerrando la aplicación...',
              style: TextStyle(
                color: Colors.blue, // Establece el color azul
                fontSize: 24, // Establece el tamaño de fuente
                fontFamily: 'DM Sans',
              ),
            ),
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
