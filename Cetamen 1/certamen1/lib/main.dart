import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});
//FLEX COLOR SCHEME
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: FlexThemeData.light(
        scheme: FlexScheme.sakura,
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 7,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 10,
          blendOnColors: false,
          useTextTheme: true,
          defaultRadius: 10.0,
          alignedDropdown: true,
          useInputDecoratorThemeInDialogs: true,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: false,
        // To use the Playground font, add GoogleFonts package and uncomment
        // fontFamily: GoogleFonts.notoSans().fontFamily,
      ),
      darkTheme: FlexThemeData.dark(
        scheme: FlexScheme.sakura,
        subThemesData: const FlexSubThemesData(
          blendOnColors: false,
          useTextTheme: true,
          defaultRadius: 10.0,
          alignedDropdown: true,
          useInputDecoratorThemeInDialogs: true,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: false,
        // To use the Playground font, add GoogleFonts package and uncomment
        // fontFamily: GoogleFonts.notoSans().fontFamily,
      ),
      home: const HomeApp(),
    );
  }
}

class HomeApp extends StatelessWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
//APP BAR
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            if (kDebugMode) {}
          },
        ),
        title: Text(
          'Muñoz',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        actions: <Widget>[
//BOTON MORE_VERT
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              if (kDebugMode) {}
            },
          ),
        ],
      ),
      body: ListView(
//BUILD LIST ITEM
        children: <Widget>[
          _buildListItem(
              'El Principito', 'Antoine de Saint-Exupéry', Colors.red),
          _buildListItem('Crepúsculo', 'Stephenie Meyer', Colors.orange),
          _buildListItem('El Hobbit', 'J.R.R. Tolkien', Colors.lightBlue),
          _buildListItem(
              'La Telaraña de Charlotte', 'Benjamin Spock', Colors.purple),
          _buildListItemWithIcon('Duna', 'Frank Herbert', 'assets/5.jpg'),
          _buildListItemWithIcon(
              'Harry Potter', 'J.K. Rowling', 'assets/1.jpg'),
          _buildListItemWithIcon(
              'El Señor de los Anillos', 'J.R.R. Tolkien', 'assets/2.jpg'),
          _buildListItemWithIcon(
              'Juego de Tronos', 'George R.R. Martin', 'assets/3.jpg'),
          _buildListItemWithIcon(
              'Juegos del Hambre', 'Suzanne Collins', 'assets/4.jpg'),
        ],
      ),
//NAVIGATION BAR
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                if (kDebugMode) {}
              },
            ),
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                if (kDebugMode) {}
              },
            ),
          ],
        ),
      ),
    );
  }

//WIDGET BUILDLISTITEM CON ICONO
  Widget _buildListItem(String title, String subtitle, Color color) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            backgroundColor: color,
            child: Text(
              title[0],
              style: const TextStyle(color: Colors.white),
            ),
          ),
          title: Text(title),
          subtitle: Text(subtitle),
          onTap: () {
            if (kDebugMode) {}
          },
        ),
        const Divider(),
      ],
    );
  }

//WIDGET BUILDLISTITEM CON IMAGEN
  Widget _buildListItemWithIcon(
      String title, String subtitle, String imagePath) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(imagePath),
          ),
          title: Text(title),
          subtitle: Text(subtitle),
          onTap: () {
            if (kDebugMode) {}
          },
        ),
        const Divider(),
      ],
    );
  }
}
