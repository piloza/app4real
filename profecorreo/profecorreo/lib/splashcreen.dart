import 'package:flutter/material.dart';
import 'package:profecorreo/theme.dart';
import 'package:profecorreo/main.dart'; // Importa MyTheme desde theme.dart

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(const Duration(seconds: 2)),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          // Espera completada, navega a la pantalla principal (Home)
          return const Inicio();
        } else {
          // Aún esperando, muestra la pantalla de carga con la imagen centrada
          return Scaffold(
            backgroundColor: MyTheme.lightTheme().colorScheme.primary,
            body: Center(
              child: Container(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/splash.png', // Ruta de tu imagen
                  width: 150, // Tamaño de la imagen
                  height: 150,
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
