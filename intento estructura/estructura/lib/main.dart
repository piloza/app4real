import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

bool switchValue =
    true; // Define una variable para controlar el estado del interruptor

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  get fontSize => null;

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
                      //cada expanded es una columna al interior del container, se construye el container en su interior
                      flex: 8, //primera división de la superficier, ROW
                      child: Container(
                          // acá se construye, el contenido de esa superficie previamente formateada.
                          height: 44.0, //con alto de 48 pixeles
                          color: const Color.fromARGB(255, 167, 167,
                              167), // Color en formato hexadecimal
                          child: Image.asset("assets/defaultpic.png",
                              fit: BoxFit.fitHeight,
                              alignment: Alignment.centerLeft)),
                    ),

                    const SizedBox(width: 4.0), //separador vertical
//CHAT ICON
                    Expanded(
                        flex: 2, //segunda división de la superficie, ROW
                        child: Container(
                          height: 44.0,
                          color: const Color.fromARGB(255, 167, 167,
                              167), // Color en formato hexadecimal
                          child: const Center(
                              child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            child: Icon(Icons.chat_bubble,
                                color: Colors.black, size: 24),
                          )),
                        )),

                    const SizedBox(width: 4.0), //separador vertical
//INBOX ICON
                    Expanded(
                      flex: 2, //segunda división de la superficie, ROW
                      child: Container(
                          height: 44.0,
                          color: const Color.fromARGB(255, 167, 167,
                              167), // Color en formato hexadecimal
                          child: const Center(
                            child: Icon(Icons.inbox,
                                color: Colors.black, size: 24),
                          )),
                    ),

                    const SizedBox(width: 4.0), //separador vertical
//CREATE CONTAINER
                    Expanded(
                      flex: 4, //segunda división de la superficie, ROW
                      child: Container(
                          height: 44.0,
                          color: const Color.fromARGB(255, 167, 167,
                              167), // Color en formato hexadecimal
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
// FOLLOWING
                  Expanded(
                    flex: 2,
                    child: Container(
                        height: 33.0,
                        color: const Color.fromARGB(
                            255, 167, 167, 167), // Color en formato hexadecimal
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Following",
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
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Your Live Channels",
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
//PRIMERA IMAGEN
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 96.0,
                      color: const Color.fromARGB(
                          255, 167, 167, 167), // Color en formato hexadecimal
                    ),
                  ),

                  const SizedBox(width: 4.0), //separación vertical
//PRIMER TEXTO
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 96.0,
                      color: const Color.fromARGB(255, 167, 167, 167),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            left:
                                4.0), // Ajusta la cantidad de espacio según sea necesario
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius:
                                      12.0, // Ajusta el tamaño del círculo según sea necesario
                                  backgroundImage:
                                      AssetImage("assets/defaultpic.png"),
                                ),
                                SizedBox(
                                    width:
                                        8.0), // Espacio entre el icono y el texto
                                Text(
                                  "Streamer 1",
                                  style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                                height:
                                    4.0), // Espacio entre las líneas de texto
                            Text(
                              "Descripción del Stream",
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 16.0,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                                height:
                                    4.0), // Espacio entre las líneas de texto
                            Text(
                              "Juego al que está jugando",
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 16.0,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
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
//SEGUNDA IMAGEN
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 96.0,
                      color: const Color.fromARGB(
                          255, 167, 167, 167), // Color en formato hexadecimal
                    ),
                  ),

                  const SizedBox(width: 4.0), //separación vertical
//SEGUNDO TEXTO
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 96.0,
                      color: const Color.fromARGB(255, 167, 167, 167),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            left:
                                4.0), // Ajusta la cantidad de espacio según sea necesario
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius:
                                      12.0, // Ajusta el tamaño del círculo según sea necesario
                                  backgroundImage:
                                      AssetImage("assets/defaultpic.png"),
                                ),
                                SizedBox(
                                    width:
                                        8.0), // Espacio entre el icono y el texto
                                Text(
                                  "Streamer 2",
                                  style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                                height:
                                    4.0), // Espacio entre las líneas de texto
                            Text(
                              "Descripción del Stream",
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 16.0,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                                height:
                                    4.0), // Espacio entre las líneas de texto
                            Text(
                              "Juego al que está jugando",
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 16.0,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
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
//TERCERA IMAGEN
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 96.0,
                      color: const Color.fromARGB(
                          255, 167, 167, 167), // Color en formato hexadecimal
                    ),
                  ),

                  const SizedBox(width: 4.0), //separación vertical
//TERCER TEXTO
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 96.0,
                      color: const Color.fromARGB(255, 167, 167, 167),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            left:
                                4.0), // Ajusta la cantidad de espacio según sea necesario
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius:
                                      12.0, // Ajusta el tamaño del círculo según sea necesario
                                  backgroundImage:
                                      AssetImage("assets/defaultpic.png"),
                                ),
                                SizedBox(
                                    width:
                                        8.0), // Espacio entre el icono y el texto
                                Text(
                                  "Streamer 3 ",
                                  style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                                height:
                                    4.0), // Espacio entre las líneas de texto
                            Text(
                              "Descripción del Stream",
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 16.0,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                                height:
                                    4.0), // Espacio entre las líneas de texto
                            Text(
                              "Juego al que está jugando",
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 16.0,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
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
//CUARTA IMAGEN
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 96.0,
                      color: const Color.fromARGB(
                          255, 167, 167, 167), // Color en formato hexadecimal
                    ),
                  ),

                  const SizedBox(width: 4.0), //separación vertical
//CUARTO TEXTO
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 96.0,
                      color: const Color.fromARGB(255, 167, 167, 167),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            left:
                                4.0), // Ajusta la cantidad de espacio según sea necesario
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius:
                                      12.0, // Ajusta el tamaño del círculo según sea necesario
                                  backgroundImage:
                                      AssetImage("assets/defaultpic.png"),
                                ),
                                SizedBox(
                                    width:
                                        8.0), // Espacio entre el icono y el texto
                                Text(
                                  "Streamer 3 ",
                                  style: TextStyle(
                                    fontFamily: "Roboto",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                                height:
                                    4.0), // Espacio entre las líneas de texto
                            Text(
                              "Descripción del Stream",
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 16.0,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                                height:
                                    4.0), // Espacio entre las líneas de texto
                            Text(
                              "Juego al que está jugando",
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontSize: 16.0,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
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
//FOLLOWED CATEGORIES
                  Expanded(
                    flex: 2,
                    child: Container(
                        height: 33.0,
                        color: const Color.fromARGB(
                            255, 167, 167, 167), // Color en formato hexadecimal
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Followed Catergories",
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
              const Divider(
                //Nuevo separador horizontal
                height: 16.0,
                color: Color.fromARGB(255, 255, 255, 255),
              ),

//LAS CATEGORIAS SEGUIDAS

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
          backgroundColor: const Color.fromARGB(255, 255, 255,
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
          selectedItemColor: const Color.fromARGB(
              255, 90, 29, 255), // Color del texto seleccionado en blanco
          unselectedItemColor: const Color.fromARGB(
              255, 103, 102, 102), // Color de íconos no seleccionados
        ),
      ), //Se cierra SCaffold
    ); //Se cierra MaterialApp
  } //Se cierra el Widget Build contexts
} // se cierra la clase
