import 'package:flutter/material.dart';
import 'descripcion.dart';
import 'contenido.dart';

/// Clase Cabecera2: Representa la cabecera de la pantalla de perfil.
/// Muestra la imagen del perfil, estadísticas y botones para "Promociones" y "Editar Perfil".
/// También incluye una descripción y contenido adicional.
class Cabecera2 extends StatelessWidget {
  const Cabecera2({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        const SizedBox(height: 16),
        // Sección de imagen del perfil y estadísticas
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Imagen del perfil
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
            // Estadísticas del perfil
            const SizedBox(width: 3),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Número de publicaciones, seguidores y seguidos
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // Número de publicaciones
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
                    // Número de seguidores
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
                    // Número de seguidos
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
                const SizedBox(height: 4),
                // Botones de "Promociones" y "Editar Perfil"
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    // Botón "Promociones"
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
                    // Botón "Editar Perfil"
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
                const SizedBox(height: 2),
              ],
            ),
          ],
        ),
        // Descripción del perfil
        const Descripcion(),
        const SizedBox(height: 4),
        // Contenido adicional del perfil
        Contenido(),
      ],
    );
  }
}
