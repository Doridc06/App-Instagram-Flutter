import 'package:flutter/material.dart';
import 'package:flutter_application_2/pantallas/inicio/inicio.dart';

/// Clase PieDePagina: Representa la barra de navegación inferior de la aplicación.
/// Contiene iconos para navegar a la página de inicio, buscar, agregar contenido,
/// ver los favoritos y acceder al perfil del usuario.
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
          // Icono de inicio con navegación a la página de inicio
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const Inicio(),
              ));
            },
            child: const Icon(Icons.home, size: 30, color: Colors.grey),
          ),
          // Icono de búsqueda
          const Icon(Icons.search, size: 30, color: Colors.grey),
          // Icono para agregar contenido
          const Icon(Icons.add_circle_outline, size: 30, color: Colors.grey),
          // Icono de favoritos
          const Icon(Icons.favorite_border, size: 30, color: Colors.grey),
          // Círculo de perfil con imagen del usuario
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
