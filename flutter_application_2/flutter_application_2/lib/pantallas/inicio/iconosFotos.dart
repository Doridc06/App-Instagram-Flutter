import 'package:flutter/material.dart';
import 'imagenesVerticales.dart';

class IconosFotos extends StatelessWidget {
  const IconosFotos({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
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
        CuadriculaDeImagenes(),
      ],
    );
  }
}
