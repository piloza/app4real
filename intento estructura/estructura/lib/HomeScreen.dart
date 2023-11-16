
import 'package:flutter/material.dart';

import 'componentes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                        color: const Color.fromARGB(255, 167, 167, 167),
                        child: InkWell(
                          onTap: () {
                            // Lógica que deseas ejecutar al hacer clic
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
                        color: const Color.fromARGB(255, 167, 167, 167),
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
                        color: const Color.fromARGB(255, 167, 167, 167),
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
                    child: ElevatedButton(
                      onPressed: () {
                        // Coloca aquí la lógica que deseas ejecutar cuando se haga clic
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 167, 167, 167),
                        padding: const EdgeInsets.only(bottom: 10.0),
                      ),
                      child: Image.asset(
                        "assets/fotocanal.png",
                        fit: BoxFit.fitHeight,
                      ),
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
                    child: ElevatedButton(
                      onPressed: () {
                        // Coloca aquí la lógica que deseas ejecutar cuando se haga clic
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 167, 167, 167),
                        padding: const EdgeInsets.only(bottom: 10.0),
                      ),
                      child: Image.asset(
                        "assets/fotocanal.png",
                        fit: BoxFit.fitHeight,
                      ),
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
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 167, 167, 167),
                        padding: const EdgeInsets.only(bottom: 10.0),
                      ),
                      child: Image.asset(
                        "assets/fotocanal.png",
                        fit: BoxFit.fitHeight,
                      ),
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
                        padding: EdgeInsets.only(left: 4.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 12.0,
                                  backgroundImage:
                                      AssetImage("assets/defaultpic.png"),
                                ),
                                SizedBox(width: 8.0),
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
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 167, 167, 167),
                        padding: const EdgeInsets.only(bottom: 10.0),
                      ),
                      child: Image.asset(
                        "assets/fotocanal.png",
                        fit: BoxFit.fitHeight,
                      ),
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
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                  ),
// PRIMERA TARJETA
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        // Puedes dejar vacío o no definir nada aquí, ya que no quieres que haga nada al ser clickeada
                      },
                      child: const Card1(),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                  ),
// SEGUNDA TARJETA
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        // Puedes dejar vacío o no definir nada aquí, ya que no quieres que haga nada al ser clickeada
                      },
                      child: const Card1(),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                  ),
// TERCERA TARJETA
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        // Puedes dejar vacío o no definir nada aquí, ya que no quieres que haga nada al ser clickeada
                      },
                      child: const Card1(), // Puedes usar Card2 si lo prefieres
                    ),
                  ),
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
      ), //Se cierra SCaffold
    ); //Se cierra MaterialApp
  } //Se cierra el Widget Build contexts
}
