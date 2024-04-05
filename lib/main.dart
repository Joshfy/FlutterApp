import 'package:flutter/material.dart';
import './login_screen.dart';
import './vistas/home_screen.dart';
import './vistas/ciudades_screen.dart';
import './vistas/hoteles_screen.dart';
import './vistas/perfil_screen.dart';
import './sidebar.dart'; // Importa tu Sidebar aquí

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/ciudades': (context) => CiudadesScreen(),
        '/hoteles': (context) => HotelesScreen(),
        '/perfil': (context) => PerfilScreen(),
      },
      builder: (context, child) {
        return Scaffold(
          body: Row(
            children: [
              Expanded(
                child: child!,
              ),
            ],
          ),
        );
      },
    );
  }
}
