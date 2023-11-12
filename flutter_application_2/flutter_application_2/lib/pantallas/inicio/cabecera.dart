import 'package:flutter/material.dart';
import 'package:flutter_application_2/pantallas/final/final.dart';
import 'package:flutter_application_2/pantallas/inicio/cerrandoApp.dart';
import 'cabecera2.dart';

/// Clase Cabecera: Representa la pantalla principal del perfil de usuario.
/// Incluye una barra de navegación superior con acciones y el contenido del perfil.
class Cabecera extends StatelessWidget {
  const Cabecera({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 239, 237, 237),
        actions: <Widget>[
          // Nombre de usuario y acciones
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'nellamonero',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'DM Sans',
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
              // Icono y número de notificaciones
              Container(
                width: 14,
                height: 16,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
                child: const Center(
                  child: Text(
                    '1',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              // Iconos de acciones
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.restore,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.assessment_outlined,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(
                      Icons.bookmark_border,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Icon(
                      Icons.co_present_outlined,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                ],
              ),
              // Icono y número de mensajes
              Container(
                width: 14,
                height: 16,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
                child: const Center(
                  child: Text(
                    '1',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              // Icono "Más opciones"
              const Padding(
                padding: EdgeInsets.all(6.0),
                child: Icon(
                  Icons.more_horiz,
                  color: Colors.black,
                  size: 28,
                ),
              ),
              // Icono para cerrar la aplicación con un diálogo de confirmación
              GestureDetector(
                onTap: () {
                  // Lógica para mostrar el diálogo de confirmación
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text(
                            '¿Está seguro que quiere cerrar la aplicación?'),
                        content: const Column(
                          mainAxisSize: MainAxisSize.min,
                        ),
                        actions: [
                          // Botón "Aceptar" cierra la aplicación
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context); // Cierra el diálogo
                              // Abre una pantalla de "Cerrando" antes de cerrar la aplicación
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const PantallaCerrando(),
                                ),
                              );
                            },
                            child: const Text('Aceptar'),
                          ),
                          // Botón "Cancelar" cierra el diálogo
                          TextButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pop(); // Cancela el cierre de la aplicación
                            },
                            child: const Text('Cancelar'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Icon(
                  Icons.exit_to_app,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ],
          ),
        ],
      ),
      body: const Column(
        children: [
          // Contenido del perfil
          Expanded(
            child: Cabecera2(),
          ),
          // Pie de página
          PieDePagina(),
          // Agregar aquí el widget PieDePagina si es necesario
        ],
      ),
    );
  }
}
