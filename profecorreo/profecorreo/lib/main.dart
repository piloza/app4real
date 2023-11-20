import 'package:flutter/material.dart';
import 'package:profecorreo/pantalla1.dart';
import 'package:profecorreo/pantalla2.dart';
import 'package:profecorreo/pantalla3.dart';
import 'package:profecorreo/splashcreen.dart';
import 'package:profecorreo/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme(),
      home: const SplashScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Inicio(),
    );
  }
}

//PANTALLA 2
//LOGRÉ MODULARLO SOY ALEGRÍA PURA

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Pantalla2(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Following',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.content_copy_outlined),
            label: 'Browse',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
        currentIndex: 1, // El índice del ícono seleccionado
        selectedItemColor: Colors.blue[900], // Color del ícono seleccionado
        unselectedItemColor: Colors.black, // Color del ícono no seleccionado
        onTap: (int index) {
          // Lógica para manejar el cambio de ícono
          // Puedes cambiar el valor de currentIndex para actualizar el ícono seleccionado
          switch (index) {
            case 0:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Inicio()));
              break;
            case 1:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Discover()));
              break;
            case 2:
              break;
            case 3:
              break;
          }
        },
      ),
    );
  }
}

//PANTALLA3
class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Pantalla3(),
    );
  }
}

//PANTALLA 1
class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Pantalla1(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Following',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.content_copy_outlined),
            label: 'Browse',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
        currentIndex: 0, // El índice del ícono seleccionado
        selectedItemColor: Colors.blue[900], // Color del ícono seleccionado
        unselectedItemColor: Colors.black, // Color del ícono no seleccionado
        onTap: (int index) {
          // Lógica para manejar el cambio de ícono
          // Puedes cambiar el valor de currentIndex para actualizar el ícono seleccionado
          switch (index) {
            case 0:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Inicio()));
              break;
            case 1:
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Discover()));
              break;
            case 2:
              break;
            case 3:
              break;
          }
        },
      ),
    );
  }
}
