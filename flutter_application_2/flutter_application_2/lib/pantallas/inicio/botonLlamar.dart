import 'package:flutter/material.dart';
import 'iconosFotos.dart';

class BotonLlamar extends StatelessWidget {
  const BotonLlamar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
        const IconosFotos(),
      ],
    );
  }
}
