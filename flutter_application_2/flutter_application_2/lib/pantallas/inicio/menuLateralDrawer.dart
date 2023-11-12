import 'package:flutter/material.dart';

// Clase MenuLateral: Representa el menú lateral de la aplicación.
// Este menú se utiliza para mostrar opciones de navegación o acciones adicionales.
class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          // Encabezado del usuario con imagen de fondo
          const UserAccountsDrawerHeader(
            accountName: Text("DoriDc"),
            accountEmail: Text("doridacosta96@gmail.com"),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/dc.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Elemento de lista con fondo de tinta (Ink) para la clase inicial
          Ink(
            color: const Color.fromARGB(255, 181, 63, 148),
            child: const ListTile(
              title: Text(
                "Clase Inicial",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          // Elemento de lista para la clase Cabecera
          ListTile(
            title: const Text("Clase Cabecera"),
            onTap: () {
              // Acción a realizar al hacer clic en la clase Cabecera (puedes añadir funcionalidad aquí)
            },
          ),
          // Elemento de lista para la clase Contenido
          const ListTile(
            title: Text("Clase Contenido"),
          ),
          // Elemento de lista para la clase Final
          const ListTile(
            title: Text("Clase Final"),
          ),
        ],
      ),
    );
  }
}
