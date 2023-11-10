import 'package:flutter/material.dart';

class CuadriculaDeImagenes extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const CuadriculaDeImagenes({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height:
              300, // Establece la altura de la cuadrícula según tus necesidades
          child: GridView.count(
            crossAxisCount: 3, // Define el número de columnas en la cuadrícula
            scrollDirection: Axis.vertical,
            children: <Widget>[
              _buildImagen('assets/images/neroVestido.png'),
              _buildImagen('assets/images/neroViendoComida.png'),
              _buildImagen('assets/images/neroCoche.png'),
              _buildImagen('assets/images/neroArropado.png'),
              _buildImagen('assets/images/neroRopita.png'),
              _buildImagen('assets/images/neroPlaya.png'),
              _buildImagen('assets/images/neroPortaretrato.png'),
              _buildImagen('assets/images/neroSaludando.png'),
              _buildImagen('assets/images/neroRoca.png'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildImagen(String imagePath) {
    return Container(
      width: 100, // Establece el ancho de las imágenes según tus necesidades
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
