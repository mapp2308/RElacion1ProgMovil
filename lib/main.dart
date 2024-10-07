import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'screens/name_screen.dart';
import 'screens/photos_row_screen.dart';
import 'screens/photos_column_screen.dart';
import 'screens/icons_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Drawer Demo',
      theme: ThemeData(
        primaryColor: Color(0xFF3b605f),  // Color principal
        primarySwatch: Colors.teal, // Puedes usar esto para una combinación de colores predeterminada
        scaffoldBackgroundColor: Color(0xFF96bebc), // Fondo de la aplicación
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF3b605f),  // Color del AppBar
        ),
        drawerTheme: DrawerThemeData(
          backgroundColor: Color(0xFF698f8e),  // Fondo del Drawer
        ),
       
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Example"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'Menú de Navegación',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0xFF3b605f),  // Color del fondo del header del drawer
              ),
            ),
            ListTile(
              title: Text('Nombre y Apellidos', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => NameScreen()));
              },
            ),
            ListTile(
              title: Text('Fotos en Fila', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PhotosRowScreen()));
              },
            ),
            ListTile(
              title: Text('Fotos en Columna', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PhotosColumnScreen()));
              },
            ),
            ListTile(
              title: Text('Iconos', style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => IconsScreen()));
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Selecciona una opción del drawer',
          style: TextStyle(
            fontSize: 18,
            color: Color(0xFF3b605f),  // Color del texto principal
          ),
        ),
      ),
    );
  }
}
