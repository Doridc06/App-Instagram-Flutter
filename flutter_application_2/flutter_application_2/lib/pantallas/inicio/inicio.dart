import 'package:flutter/material.dart';
import 'package:flutter_application_2/pantallas/inicio/menuLateralDrawer.dart';
import 'cabecera.dart';

class Inicio extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Inicio({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Esto elimina el banner de "Debug"
      title: 'Drawer',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Instagram'),
          ),
        ),
        drawer: const MenuLateral(),
        body: const Center(
          child: Text(
            '¡Bienvenidos!',
            style: TextStyle(
              fontSize: 24,
              color: Color.fromARGB(255, 243, 33, 208),
            ),
          ),
        ),
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
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
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
