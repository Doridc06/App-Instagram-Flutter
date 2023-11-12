import 'package:flutter/material.dart';
import 'iconosFotos.dart';

/// Clase BotonLlamar: Representa un botón para llamar.
/// Incluye un contenedor con el texto "Llamar" y un estilo específico.
/// También incluye el widget IconosFotos después del botón.
class BotonLlamar extends StatelessWidget {
  const BotonLlamar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Contenedor del botón "Llamar"
        Container(
          width: 360,
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1.0,
              color: const Color.fromARGB(255, 216, 214, 214),
            ),
          ),
          child: const Center(
            child: Text(
              'Llamar',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ),
        const SizedBox(height: 2), // Espacio entre los contenedores
        // Widget IconosFotos para mostrar imágenes y otros elementos
        const IconosFotos(),
      ],
    );
  }
}
