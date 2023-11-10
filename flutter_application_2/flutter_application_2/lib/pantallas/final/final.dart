import 'package:flutter/material.dart';
import 'package:flutter_application_2/pantallas/inicio/inicio.dart';

class PieDePagina extends StatelessWidget {
  const PieDePagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              // Navegar a la página de inicio
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => Inicio(),
              ));
            },
            child: const Icon(Icons.home, size: 30, color: Colors.grey),
          ),
          const Icon(Icons.search, size: 30, color: Colors.grey),
          const Icon(Icons.add_circle_outline, size: 30, color: Colors.grey),
          const Icon(Icons.favorite_border, size: 30, color: Colors.grey),
          Container(
            width: 40, // Ajusta el ancho del círculo según tus necesidades
            height: 40, // Ajusta el alto del círculo según tus necesidades
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: const Color.fromARGB(255, 126, 125, 126),
                width: 2.0,
              ),
            ),
            child: const CircleAvatar(
              radius: 24, // Ajusta el radio del círculo según tus necesidades
              backgroundImage: AssetImage('assets/images/neroo.png'),
              backgroundColor: Color.fromARGB(255, 251, 247, 247),
            ),
          ),
        ],
      ),
    );
  }
}
