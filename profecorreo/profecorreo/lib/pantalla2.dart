import 'package:flutter/material.dart';
import 'package:profecorreo/componentes.dart';
import 'package:profecorreo/main.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

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
// FOTO DE PERFIL
                    Expanded(
                      flex: 8,
                      child: Container(
                        height: 44.0,
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Settings()),
                            );
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: CircleAvatar(
                                radius: 20.0, // Tamaño del CircleAvatar
                                backgroundImage:
                                    AssetImage("assets/defaultpic.png"),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 4.0), //separador vertical
//CHAT ICON
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 44.0,
                        color: Colors.transparent,
                        child: Center(
                          child: IconButton(
                            onPressed: () {
                              // Manejar la acción al hacer clic en el icono
                            },
                            icon: const CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: Icon(Icons.chat_bubble_outline,
                                  color: Colors.black, size: 24),
                            ),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 4.0), //separador vertical
//INBOX ICON
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 44.0,
                        color: Colors.transparent,
                        child: Center(
                          child: IconButton(
                            onPressed: () {
                              // Manejar la acción al hacer clic en el icono
                            },
                            icon: const Icon(Icons.inbox,
                                color: Colors.black, size: 24),
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 4.0), //separador vertical
//CREATE CONTAINER
                    Expanded(
                      flex: 4, //segunda división de la superficie, ROW
                      child: Container(
                          height: 44.0,
                          color: Colors
                              .transparent, // Color en formato hexadecimal
                          child: Center(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                icon: const Icon(Icons.sensors,
                                    color: Colors.black, size: 24),
                                onPressed: () {},
                              ),
                              const SizedBox(width: 0.0),
                              const Text("Create",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Roboto",
                                  ))
                            ],
                          ))),
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
//DISCOVER
                  Expanded(
                    flex: 2,
                    child: Container(
                        height: 33.0,
                        color:
                            Colors.transparent, // Color en formato hexadecimal
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "DISCOVER",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 32.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        )),
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
//CARRUSEL????

              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                  ),

                  // Carrusel de Card2
                  Expanded(
                    flex: 8,
                    child: Container(
                      height: 282.0, // Ajusta la altura según tus necesidades
                      color: Colors.transparent,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(5, (index) {
                            // Aquí se crea cada tarjeta del carrusel
                            return const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Card2(),
                            );
                          }),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //NUEVA DECLARACIÓN DE FILA, tendrá 2 subdivisiones

              const Divider(
                //Nuevo separador horizontal
                height: 2.0,
                color: Color.fromARGB(255, 255, 255, 255),
              ),

              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                  ),

//CARRUSEL DE CATEGORIAS
                  Expanded(
                    flex: 8,
                    child: Container(
                      height: 80.0, // Ajusta la altura según tus necesidades
                      color: Colors.transparent,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(5, (index) {
                            // Aquí se crea cada tarjeta del carrusel
                            return const Padding(
                              padding: EdgeInsets.all(2.0),
                              child: SmallCard(),
                            );
                          }),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(5, 5, 5,
                        0), // Margen izquierdo y derecho para el primer segmento
                  ),

                  Expanded(
                    flex: 4,
                    child: Container(
                        height: 33.0,
                        color:
                            Colors.transparent, // Color en formato hexadecimal
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Live Channels we think you'll like",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Roboto",
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(255, 0, 0, 0)),
                        )),
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
              const SizedBox(width: 8.0), //separación vertical
//CARRUSEL CON MEDIUM CARD
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                  ),

                  // Carrusel de Card2
                  Expanded(
                    flex: 8,
                    child: Container(
                      height: 282.0, // Ajusta la altura según tus necesidades
                      color: Colors.transparent,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(5, (index) {
                            // Aquí se crea cada tarjeta del carrusel
                            return const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: MediumCard(),
                            );
                          }),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ), // Se cierra el body

        //NAVIGATION BAR
      ),
    );
  }
}
