import 'package:flutter/material.dart';
import 'botonLlamar.dart';

/// Clase Contenido: Representa el contenido principal de la aplicación.
/// Incluye una lista horizontal de imágenes con texto y un botón para llamar.
class Contenido extends StatelessWidget {
  Contenido({super.key});

  // Lista de rutas de imágenes
  final List<String> imagePaths = [
    'assets/images/paseo.png',
    'assets/images/neroRoca.png',
    'assets/images/neroPlaya.png',
    'assets/images/neroViendoComida.png',
    'assets/images/neroArropado.png',
  ];

  // Lista de textos asociados a las imágenes
  final List<String> imageTexts = [
    'Paseo',
    'Roca',
    'Playa',
    'Comer',
    'Arropado',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        // Lista horizontal de imágenes con texto
        Container(
          height: 100, // Ajusta la altura según tus necesidades
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              _buildAddImageButton(), // Botón para agregar una imagen
              const SizedBox(width: 16),
              for (int i = 0; i < imagePaths.length; i++)
                _buildImageWithText(
                  imagePaths[i],
                  imageTexts[i],
                  const Color.fromARGB(255, 139, 133, 133),
                ),
            ],
          ),
        ),
        // Espacio entre las imágenes y el botón de llamar
        const SizedBox(height: 8),
        const BotonLlamar(), // Utiliza la clase BotonLlamar
      ],
    );
  }

  // Método para construir el botón de agregar imagen
  Widget _buildAddImageButton() {
    return Column(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            // Lógica para agregar una imagen
          },
          child: Container(
            width: 70, // Tamaño igual al de las imágenes
            height: 70, // Tamaño igual al de las imágenes
            margin: const EdgeInsets.only(
                left: 10.0), // Margen a la derecha para separar del borde
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
              border: Border.all(
                color: const Color.fromARGB(255, 216, 213, 213),
                width: 1.0,
              ),
            ),
            child: const Center(
              child: Icon(
                Icons.add,
                size: 30, // Ajusta el tamaño del ícono
                color: Color.fromARGB(
                    255, 0, 0, 0), // Cambia el color del ícono a gris
              ),
            ),
          ),
        ),
        const Text(
          'Nuevo',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  // Método para construir una imagen con texto asociado
  Widget _buildImageWithText(String imagePath, String text, Color color) {
    return Column(
      children: <Widget>[
        Container(
          width: 70, // Tamaño igual al de las imágenes
          height: 70, // Tamaño igual al de las imágenes
          margin: const EdgeInsets.only(
              right: 25.0), // Margen a la derecha para separar del borde
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            border: Border.all(
              color: Colors.grey,
            ),
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 28.0),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
