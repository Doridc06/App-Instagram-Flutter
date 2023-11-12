import 'package:flutter/material.dart';
import 'imagenesVerticales.dart';

/// Clase IconosFotos: Representa una sección con iconos y una cuadrícula de imágenes verticales.
/// Utiliza iconos alineados horizontalmente seguidos por una cuadrícula de imágenes verticales.
class IconosFotos extends StatelessWidget {
  // Constructor de la clase IconosFotos
  const IconosFotos({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // Fila de iconos con espacio alrededor
        SizedBox(
          width: 360,
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Icon(Icons.apps, size: 30, color: Colors.grey),
              Icon(Icons.menu, size: 30, color: Colors.grey),
              Icon(Icons.assignment_ind_outlined, size: 30, color: Colors.grey),
            ],
          ),
        ),
        SizedBox(height: 4), // Espacio entre los contenedores
        CuadriculaDeImagenes(), // Cuadrícula de imágenes verticales
      ],
    );
  }
}
