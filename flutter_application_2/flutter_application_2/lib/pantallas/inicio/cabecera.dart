import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_2/pantallas/final/final.dart';
import 'package:flutter_application_2/pantallas/inicio/cerrandoApp.dart';
import 'cabecera2.dart';

class Cabecera extends StatelessWidget {
  const Cabecera({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 239, 237, 237),
        actions: <Widget>[
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
              const Padding(
                padding: EdgeInsets.all(6.0),
                child: Icon(
                  Icons.more_horiz,
                  color: Colors.black,
                  size: 28,
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Lógica para mostrar el diálogo
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
                          TextButton(
                            onPressed: () {
                              // Cierra el diálogo y abre una pantalla de "Cerrando"
                              Navigator.pop(context);
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
                          TextButton(
                            onPressed: () {
                              // Cancelar el cierre de la aplicación
                              Navigator.of(context).pop();
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
                  size: 36,
                ),
              ),
            ],
          ),
        ],
      ),
      body: const Column(
        children: [
          Expanded(
            child: Cabecera2(),
          ),
          PieDePagina(),
          // Agregar aquí el widget PieDePagina si es necesario
        ],
      ),
    );
  }
}
