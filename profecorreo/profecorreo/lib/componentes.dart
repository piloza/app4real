import 'package:flutter/material.dart';

class Card1 extends StatelessWidget {
  const Card1({super.key});

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
                'Bloodborne',
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
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: SizedBox(
        width: 400, // Ajusta el ancho según tus necesidades
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Contenido sin encabezado
            Container(
              height: 210, // Ajusta la altura según tus necesidades
              color: const Color.fromARGB(255, 195, 195, 195),
              child: Image.asset(
                'assets/fotocanal2.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 48,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 8.0, top: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'IslandGrowm - Pokémon Trading Card Game',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                        height:
                            4.0), // Espaciado entre el texto en negrita y el nuevo texto
                    Text(
                      'Pokémon - English',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.normal,
                      ),
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

class SmallCard extends StatelessWidget {
  const SmallCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      elevation: 4.0,
      child: Container(
        width: 170.0, // Ajusta el ancho según tus necesidades
        height: 45.0, // Ajusta la altura según tus necesidades
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.blue, // Cambia el color de fondo según tus necesidades
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Games',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.videogame_asset_outlined,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MediumCard extends StatelessWidget {
  const MediumCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: SizedBox(
        width: 300, // Ajusta el ancho según tus necesidades
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Contenido sin encabezado
            Container(
              height: 160, // Ajusta la altura según tus necesidades
              color: const Color.fromARGB(255, 195, 195, 195),
              child: Image.asset(
                'assets/canal2.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 48,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 8.0, top: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'IslandGrowm - Pokémon Trading Card Game',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                        height:
                            4.0), // Espaciado entre el texto en negrita y el nuevo texto
                    Text(
                      'Pokémon - English',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.normal,
                      ),
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

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: SizedBox(
        width: 150, // Ajusta el ancho según tus necesidades
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Contenido sin encabezado
            Container(
              height: 210, // Ajusta la altura según tus necesidades
              color: const Color.fromARGB(255, 195, 195, 195),
              child: Image.asset(
                'assets/juego.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 8.0, top: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bloodborne',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // Espaciado entre el texto en negrita y el nuevo texto
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
