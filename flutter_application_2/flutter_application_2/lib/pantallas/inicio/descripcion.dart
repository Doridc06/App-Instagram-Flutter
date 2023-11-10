import 'package:flutter/material.dart';

class Descripcion extends StatelessWidget {
  const Descripcion({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Nero',
            style: TextStyle(
              fontSize: 22,
              fontFamily: 'Playpen Sans',
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Business',
            style: TextStyle(
              fontSize: 18,
              fontFamily: 'Playpen Sans',
              color: Colors.grey,
            ),
          ),
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
