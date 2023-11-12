import 'package:flutter/material.dart';

/// Clase Descripcion: Representa un contenedor con información descriptiva.
/// Contiene un conjunto de Text widgets que muestran el nombre, título y una descripción.
class Descripcion extends StatelessWidget {
  // Constructor de la clase Descripcion
  const Descripcion({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5), // Márgenes alrededor del contenedor
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Texto del nombre con estilo personalizado
          Text(
            'Nero',
            style: TextStyle(
              fontSize: 22,
              fontFamily: 'Playpen Sans',
              fontWeight: FontWeight.bold,
            ),
          ),
          // Texto del título con estilo personalizado
          Text(
            'Business',
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Playpen Sans',
              color: Colors.grey,
            ),
          ),
          // Descripción con estilo personalizado
          Text(
            'Tú también tendrías esta cara si comieras el mismo pienso todos los días.',
            style: TextStyle(
              fontFamily: 'Playpen Sans',
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
