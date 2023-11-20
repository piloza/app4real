import 'package:flutter/material.dart';
import 'package:profecorreo/main.dart';

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

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
                      flex: 4,
                      child: Container(
                        height: 44.0,
                        color: Colors.transparent,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Botón de icono de "X"
                              IconButton(
                                icon: const Icon(Icons.close,
                                    color: Colors.black, size: 24),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Inicio()),
                                  );
                                },
                              ),
                              const SizedBox(width: 8.0), // Espaciador vertical
                              // El texto "Create" ha sido eliminado
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const Divider(
                //Nuevo separador horizontal
                height: 32.0,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
//CONTAINER 1
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                height: 90.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                ),
                child: InkWell(
                  onTap: () {},
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        // Imagen redondeada
                        CircleAvatar(
                          radius: 20.0,
                          backgroundImage: AssetImage("assets/defaultpic.png"),
                        ),
                        SizedBox(width: 8.0),
                        // Texto en negrita
                        Text(
                          "Nombre de Canal",
                          style: TextStyle(
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        // Icono de flecha a la derecha
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ),
              ),

              const Divider(
                //Nuevo separador horizontal
                height: 24.0,
                color: Color.fromARGB(255, 255, 255, 255),
              ),

//CONTAINER 2
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                ),
                child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.person_outline),
                        ),
                        const SizedBox(width: 8.0),
                        // Texto (segundo container)
                        const Text(
                          "My Channel",
                          style: TextStyle(
                            fontFamily: "Roboto",
                          ),
                        ),
                        const Spacer(),
                        // Icono arrow
                      ],
                    ),
                  ),
                ),
              ),
              const Divider(
                //Nuevo separador horizontal
                height: 24.0,
                color: Color.fromARGB(255, 255, 255, 255),
              ),

//CONTAINER 3
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                ),
                child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        // Icono clickeable
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.star_outline),
                        ),
                        const SizedBox(width: 8.0),
                        // Texto
                        const Text(
                          "Subscriptions",
                          style: TextStyle(
                            fontFamily: "Roboto",
                          ),
                        ),
                        const Spacer(),

                        const Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ),
              ),

              const Divider(
                //Nuevo separador horizontal
                height: 8.0,
                color: Color.fromARGB(255, 255, 255, 255),
              ),

//CONTAINER 4
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                ),
                child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        // Icono clickeable
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.inbox_outlined),
                        ),
                        const SizedBox(width: 8.0),
                        // Texto
                        const Text(
                          "Drops & Rewards",
                          style: TextStyle(
                            fontFamily: "Roboto",
                          ),
                        ),
                        const Spacer(),

                        const Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ),
              ),
              const Divider(
                //Nuevo separador horizontal
                height: 8.0,
                color: Color.fromARGB(255, 255, 255, 255),
              ),

//CONTAINER 5
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                ),
                child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        // Icono clickeable
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.settings_outlined),
                        ),
                        const SizedBox(width: 8.0),
                        // Texto
                        const Text(
                          "Settings",
                          style: TextStyle(
                            fontFamily: "Roboto",
                          ),
                        ),
                        const Spacer(),

                        const Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ),
              ),
              const Divider(
                //Nuevo separador horizontal
                height: 8.0,
                color: Color.fromARGB(255, 255, 255, 255),
              ),

//CONTAINER 6
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                ),
                child: InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        // Icono clickeable
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.dark_mode_outlined),
                        ),
                        const SizedBox(width: 8.0),
                        // Texto
                        const Text(
                          "Appearance",
                          style: TextStyle(
                            fontFamily: "Roboto",
                          ),
                        ),
                        const Spacer(),

                        const Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ),
              ),

              const Divider(
                //Nuevo separador horizontal
                height: 8.0,
                color: Color.fromARGB(255, 255, 255, 255),
              ),

//CONTAINER 7
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Creator Mode",
                            style: TextStyle(
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    // Texto informativo
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Creator preferences and stream manager have moved to Creator Mode",
                        style: TextStyle(
                          fontFamily: "Roboto",
                        ),
                      ),
                    ),
                    // Container azul clickeable
                    InkWell(
                      onTap: () {},
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 24),
                        padding: const EdgeInsets.all(16.0),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.blue,
                        ),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.sensors_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(width: 8.0),
                            Text(
                              "Switch to Creator Mode",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Roboto",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //NUEVA DECLARACIÓN DE FILA, tendrá 1 subdivisiones, la segunda invisible
            ],
          ),
        ), // Se cierra el body

        //NAVIGATION BAR
      ),
    );
  }
}
