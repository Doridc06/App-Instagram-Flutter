import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
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
          Ink(
            color: const Color.fromARGB(255, 181, 63, 148),
            child: const ListTile(
              title: Text(
                "Clase Inicial",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          ListTile(
            title: const Text("Clase Cabecera"),
            onTap: () {},
          ),
          const ListTile(
            title: Text("Clase Contenido"),
          ),
          const ListTile(
            title: Text("Clase Final"),
          ),
        ],
      ),
    );
  }
}
