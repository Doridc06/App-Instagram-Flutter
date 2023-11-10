import 'package:flutter/material.dart';
import 'descripcion.dart';
import 'contenido.dart';

class Cabecera2 extends StatelessWidget {
  const Cabecera2({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        const SizedBox(height: 16),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  ClipOval(
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color.fromARGB(255, 178, 8, 169),
                          width: 3.0,
                        ),
                      ),
                      child: const CircleAvatar(
                        radius: 48,
                        backgroundImage: AssetImage('assets/images/neroo.png'),
                        backgroundColor: Color.fromARGB(255, 251, 247, 247),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 3),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Center(
                          child: Text(
                            '38',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          'Publicaciones',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 6),
                    Column(
                      children: <Widget>[
                        Center(
                          child: Text(
                            '67',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          'Seguidores',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 6),
                    Column(
                      children: <Widget>[
                        Center(
                          child: Text(
                            '85',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(
                          'Siguidos',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 4,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        // Lógica para ir a la pantalla de "Promociones"
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 245, 241, 241),
                      ),
                      child: const Text(
                        'Promociones',
                        style: TextStyle(
                          color: Colors
                              .black, // Configura el color del texto en negro
                        ),
                      ),
                    ),
                    const SizedBox(width: 4),
                    ElevatedButton(
                      onPressed: () {
                        // Lógica para editar el perfil
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 245, 241, 241),
                      ),
                      child: const Text(
                        'Editar Perfil',
                        style: TextStyle(
                          color: Colors
                              .black, // Configura el color del texto en negro
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 2,
                ),
              ],
            ),
          ],
        ),
        const Descripcion(),
        const SizedBox(height: 4),
        Contenido(),
      ],
    );
  }
}
