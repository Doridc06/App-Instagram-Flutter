import 'package:flutter/material.dart';
import 'package:flutter_application_2/pantallas/inicio/menuLateralDrawer.dart';
import 'cabecera.dart';

/// Clase Inicio: Representa la pantalla principal de la aplicación.
/// Esta pantalla contiene un AppBar, un cuerpo central y un menú lateral.
class Inicio extends StatelessWidget {
  // Constructor de la clase Inicio
  // ignore: use_key_in_widget_constructors
  const Inicio({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Elimina el banner de "Debug"
      title: 'Drawer',
      home: Scaffold(
        // AppBar en la parte superior de la pantalla
        appBar: AppBar(
          title: const Center(
            child: Text('Instagram'),
          ),
        ),
        // Menú lateral deslizable desde el borde izquierdo
        drawer: const MenuLateral(),
        // Cuerpo central de la pantalla
        body: const Center(
          child: Text(
            '¡Bienvenidos!',
            style: TextStyle(
              fontSize: 24,
              color: Color.fromARGB(255, 243, 33, 208),
            ),
          ),
        ),
        // Botones persistentes en la parte inferior de la pantalla
        persistentFooterButtons: <Widget>[
          ElevatedButton(
            onPressed: () {},
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Icon(
              Icons.clear,
              color: Colors.white,
            ),
          ),
        ],
        // Configuración del botón flotante de acción
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Navegación a la pantalla Cabecera al hacer clic en el botón flotante de acción
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Cabecera()),
            );
          },
          child: const Icon(Icons.person),
        ),
      ),
    );
  }
}
