import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  const Card1({Key? key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0, // Establecer la elevación a 0 para eliminar la sombra
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0), // Establecer el radio en 0.0
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Contenido sin encabezado
          Container(
            height: 210,
            color: const Color.fromARGB(255, 195, 195, 195),
            child: Image.asset(
              'assets/juego.jpg',
              fit: BoxFit.cover, // Ajustar la imagen para cubrir el contenedor
            ),
          ),
          Container(
            height: 48,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 8.0, top: 8.0),
              child: Text(
                'Descripción',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Card2 extends StatelessWidget {
  const Card2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      margin: const EdgeInsets.all(0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0), // Redondea las esquinas
      ),
      child: Container(
        height: 300, // Ajustar la altura
        color: const Color.fromARGB(255, 65, 62, 62),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  color: const Color.fromARGB(255, 195, 195, 195),
                  padding: const EdgeInsets.all(10),
                ),
              ),
            ),
            // Iconos en la parte inferior de la tarjeta
            Container(
              color: Colors.white,
              height: 100,
              child: Container(
                margin: const EdgeInsets.only(top: 12),
                alignment: Alignment.topLeft,
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 16),
                    Icon(
                      Icons.favorite_outline,
                      color: Colors.black,
                    ),
                    SizedBox(width: 12),
                    Icon(
                      Icons.chat_bubble_outline,
                      color: Colors.black,
                    ),
                    SizedBox(width: 12),
                    Icon(
                      Icons.send,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
