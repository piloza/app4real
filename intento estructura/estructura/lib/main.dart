import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

bool switchValue =
    true; // Define una variable para controlar el estado del interruptor

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          //Permite eventualemnte desplazarse a un punto x en el scroll.
          child: Column(
            //será una columna vertical, navegamos verticalmente

            children: [
              //PRIMER SEGMENTO
              const Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 5,
                    0), // Margen izquierdo y derecho para el primer segmento
              ),
              const Divider(
                //para separar del siguiente container, es horizontal
                height: 4.0, //dos pixeles de alto
                color: Color.fromARGB(255, 255, 255, 255), //color
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16,
                    0), // Margen izquierdo y derecho para el TextField

                child: Row(
                  //una fila que tiene 4 columnas, separadas tres lineas, alto 33 píxeles
                  children: [
                    Expanded(
                      //cada expanded es una columna al interior del container, se construye el container en su interior
                      flex: 8, //primera división de la superficier, ROW
                      child: Container(
                        // acá se construye, el contenido de esa superficie previamente formateada.
                        height: 44.0, //con alto de 48 pixeles
                        color: const Color.fromARGB(
                            255, 167, 167, 167), // Color en formato hexadecimal
                      ),
                    ),

                    const SizedBox(width: 4.0), //separador vertical

                    Expanded(
                      flex: 2, //segunda división de la superficie, ROW
                      child: Container(
                        height: 44.0,
                        color: const Color.fromARGB(
                            255, 167, 167, 167), // Color en formato hexadecimal
                      ),
                    ),

                    const SizedBox(width: 4.0), //separador vertical

                    Expanded(
                      flex: 2, //segunda división de la superficie, ROW
                      child: Container(
                        height: 44.0,
                        color: const Color.fromARGB(
                            255, 167, 167, 167), // Color en formato hexadecimal
                      ),
                    ),

                    const SizedBox(width: 4.0), //separador vertical

                    Expanded(
                      flex: 3, //segunda división de la superficie, ROW
                      child: Container(
                        height: 44.0,
                        color: const Color.fromARGB(
                            255, 167, 167, 167), // Color en formato hexadecimal
                      ),
                    ),
                  ],
                ),
              ),

              const Divider(
                //Nuevo separador horizontal
                height: 8.0,
                color: Color.fromARGB(255, 255, 255, 255),
              ),

              //NUEVA DECLARACIÓN DE FILA, tendrá 1 subdivisiones, la segunda invisible
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(5, 5, 5,
                        0), // Margen izquierdo y derecho para el primer segmento
                  ),

                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 33.0,
                      color: const Color.fromARGB(
                          255, 167, 167, 167), // Color en formato hexadecimal
                    ),
                  ),

                  const SizedBox(width: 4.0), //separación vertical

                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 33.0,
                      color: Colors.transparent, // Color en formato hexadecimal
                    ),
                  ),

                  const SizedBox(width: 8.0), //separación vertical
                ],
              ),

              const Divider(
                //Nuevo separador horizontal
                height: 8.0,
                color: Color.fromARGB(255, 255, 255, 255),
              ),

              //YOUR LIVE CHANNELS

              //NUEVA DECLARACIÓN DE FILA, tendrá 1 subdivisiones, la segunda invisible
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(5, 5, 5,
                        0), // Margen izquierdo y derecho para el primer segmento
                  ),

                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 33.0,
                      color: const Color.fromARGB(
                          255, 167, 167, 167), // Color en formato hexadecimal
                    ),
                  ),

                  const SizedBox(width: 4.0), //separación vertical

                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 33.0,
                      color: Colors.transparent, // Color en formato hexadecimal
                    ),
                  ),

                  const SizedBox(width: 8.0), //separación vertical
                ],
              ),

              const Divider(
                //Nuevo separador horizontal
                height: 8.0,
                color: Color.fromARGB(255, 255, 255, 255),
              ),

              //ABAJO 4 CANALES EN VIVO

              //NUEVA DECLARACIÓN DE FILA, tendrá 2 subdivisiones
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(5, 5, 5,
                        0), // Margen izquierdo y derecho para el primer segmento
                  ),
                  //SEGUNDO SEGMENTO
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 96.0,
                      color: const Color.fromARGB(
                          255, 167, 167, 167), // Color en formato hexadecimal
                    ),
                  ),

                  const SizedBox(width: 4.0), //separación vertical

                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 96.0,
                      color: const Color.fromARGB(
                          255, 167, 167, 167), // Color en formato hexadecimal
                    ),
                  ),

                  const SizedBox(width: 8.0), //separación vertical
                ],
              ),

              const Divider(
                //Nuevo separador horizontal
                height: 8.0,
                color: Color.fromARGB(255, 255, 255, 255),
              ),

              //NUEVA DECLARACIÓN DE FILA, tendrá 2 subdivisiones
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(5, 5, 5,
                        0), // Margen izquierdo y derecho para el primer segmento
                  ),
                  //SEGUNDO SEGMENTO
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 96.0,
                      color: const Color.fromARGB(
                          255, 167, 167, 167), // Color en formato hexadecimal
                    ),
                  ),

                  const SizedBox(width: 4.0), //separación vertical

                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 96.0,
                      color: const Color.fromARGB(
                          255, 167, 167, 167), // Color en formato hexadecimal
                    ),
                  ),

                  const SizedBox(width: 8.0), //separación vertical
                ],
              ),

              const Divider(
                //Nuevo separador horizontal
                height: 8.0,
                color: Color.fromARGB(255, 255, 255, 255),
              ),

              //NUEVA DECLARACIÓN DE FILA, tendrá 2 subdivisiones
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(5, 5, 5,
                        0), // Margen izquierdo y derecho para el primer segmento
                  ),
                  //SEGUNDO SEGMENTO
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 96.0,
                      color: const Color.fromARGB(
                          255, 167, 167, 167), // Color en formato hexadecimal
                    ),
                  ),

                  const SizedBox(width: 4.0), //separación vertical

                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 96.0,
                      color: const Color.fromARGB(
                          255, 167, 167, 167), // Color en formato hexadecimal
                    ),
                  ),

                  const SizedBox(width: 8.0), //separación vertical
                ],
              ),

              const Divider(
                //Nuevo separador horizontal
                height: 8.0,
                color: Color.fromARGB(255, 255, 255, 255),
              ),

              //NUEVA DECLARACIÓN DE FILA, tendrá 2 subdivisiones
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(5, 5, 5,
                        0), // Margen izquierdo y derecho para el primer segmento
                  ),
                  //SEGUNDO SEGMENTO
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 96.0,
                      color: const Color.fromARGB(
                          255, 167, 167, 167), // Color en formato hexadecimal
                    ),
                  ),

                  const SizedBox(width: 4.0), //separación vertical

                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 96.0,
                      color: const Color.fromARGB(
                          255, 167, 167, 167), // Color en formato hexadecimal
                    ),
                  ),

                  const SizedBox(width: 8.0), //separación vertical
                ],
              ),

              //FOLLOWED CATEGORIES
              const Divider(
                //Nuevo separador horizontal
                height: 16.0,
                color: Color.fromARGB(255, 255, 255, 255),
              ),

              //NUEVA DECLARACIÓN DE FILA, tendrá 1 subdivisiones, la segunda invisible
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(5, 5, 5,
                        0), // Margen izquierdo y derecho para el primer segmento
                  ),

                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 33.0,
                      color: const Color.fromARGB(
                          255, 167, 167, 167), // Color en formato hexadecimal
                    ),
                  ),

                  const SizedBox(width: 4.0), //separación vertical

                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 33.0,
                      color: Colors.transparent, // Color en formato hexadecimal
                    ),
                  ),

                  const SizedBox(width: 8.0), //separación vertical
                ],
              ),
              const Divider(
                //Nuevo separador horizontal
                height: 16.0,
                color: Color.fromARGB(255, 255, 255, 255),
              ),

              //LAS CATEGORIAS ABAJO

              //NUEVA DECLARACIÓN DE FILA, tendrá 3 subdivisiones
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(5, 5, 5,
                        0), // Margen izquierdo y derecho para el primer segmento
                  ),
                  //SEGUNDO SEGMENTO
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 153.0,
                      color: const Color.fromARGB(
                          255, 167, 167, 167), // Color en formato hexadecimal
                    ),
                  ),

                  const SizedBox(width: 4.0), //separación vertical

                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 153.0,
                      color: const Color.fromARGB(
                          255, 167, 167, 167), // Color en formato hexadecimal
                    ),
                  ),

                  const SizedBox(width: 4.0), //separación vertical

                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 153.0,
                      color: const Color.fromARGB(
                          255, 167, 167, 167), // Color en formato hexadecimal
                    ),
                  ),
                  const SizedBox(width: 8.0), //separación vertical
                ],
              ),

              const Divider(
                //Nuevo separador horizontal
                height: 8.0,
                color: Color.fromARGB(255, 255, 255, 255),
              ),

              //LAS CATEGORIAS ABAJO

              //NUEVA DECLARACIÓN DE FILA, tendrá 3 subdivisiones
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(5, 5, 5,
                        0), // Margen izquierdo y derecho para el primer segmento
                  ),
                  //SEGUNDO SEGMENTO
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 48.0,
                      color: const Color.fromARGB(
                          255, 167, 167, 167), // Color en formato hexadecimal
                    ),
                  ),

                  const SizedBox(width: 4.0), //separación vertical

                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 48.0,
                      color: const Color.fromARGB(
                          255, 167, 167, 167), // Color en formato hexadecimal
                    ),
                  ),

                  const SizedBox(width: 4.0), //separación vertical

                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 48.0,
                      color: const Color.fromARGB(
                          255, 167, 167, 167), // Color en formato hexadecimal
                    ),
                  ),
                  const SizedBox(width: 8.0), //separación vertical
                ],
              ),

              const Divider(
                //Nuevo separador horizontal
                height: 24.0,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ],
          ),
        ), // Se cierra el body

        //NAVIGATION BAR

        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromARGB(255, 255, 255,
              255), //color de fondo, a mano, luego se puede integrar a flex_color

          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite,
                  color: Color.fromARGB(255, 0, 0, 0)), // Icono blanco
              label: 'Following',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore,
                  color: Color.fromARGB(255, 0, 0, 0)), // Icono blanco
              label: 'Discover',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.content_copy,
                  color: Color.fromARGB(255, 0, 0, 0)), // Icono blanco
              label: 'Browse',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search,
                  color: Color.fromARGB(255, 0, 0, 0)), // Icono blanco
              label: 'Search',
            ),
          ],
          selectedItemColor: Color.fromARGB(
              255, 90, 29, 255), // Color del texto seleccionado en blanco
          unselectedItemColor: const Color.fromARGB(
              255, 103, 102, 102), // Color de íconos no seleccionados
        ),
      ), //Se cierra SCaffold
    ); //Se cierra MaterialApp
  } //Se cierra el Widget Build contexts
} // se cierra la clase
