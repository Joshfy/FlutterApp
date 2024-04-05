import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  final int selectedIndex;

  const Sidebar({
    Key? key,
    this.selectedIndex = 0, // Valor predeterminado para selectedIndex
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<String> routes = [
      '/home', // Ruta de la página de inicio
      '/ciudades',
      '/hoteles',
      '/perfil',
    ];

    return Container(
      color: Colors.red, // Color del contenedor
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent, // Hacer que el color de fondo del BottomNavigationBar sea transparente
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Container(
              color: Colors.black, // Color del contenedor del ítem "Inicio"
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.home),
                  Text(
                    'Inicio',
                    style: TextStyle(color: Colors.white), // Color del texto del label
                  ),
                ],
              ),
            ),
            label: '', // Vacío para ocultar el texto del label
          ),
          BottomNavigationBarItem(
            icon: Container(
              color: Colors.black, // Color del contenedor del ítem "Ciudades"
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.location_city),
                  Text(
                    'Ciudades',
                    style: TextStyle(color: Colors.white), // Color del texto del label
                  ),
                ],
              ),
            ),
            label: '', // Vacío para ocultar el texto del label
          ),
          BottomNavigationBarItem(
            icon: Container(
              color: Colors.black, // Color del contenedor del ítem "Hoteles"
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.hotel),
                  Text(
                    'Hoteles',
                    style: TextStyle(color: Colors.white), // Color del texto del label
                  ),
                ],
              ),
            ),
            label: '', // Vacío para ocultar el texto del label
          ),
          BottomNavigationBarItem(
            icon: Container(
              color: Colors.black, // Color del contenedor del ítem "Perfil"
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.person),
                  Text(
                    'Perfil',
                    style: TextStyle(color: Colors.white), // Color del texto del label
                  ),
                ],
              ),
            ),
            label: '', // Vacío para ocultar el texto del label
          ),
        ],
        currentIndex: selectedIndex,
        onTap: (index) {
          Navigator.pushNamed(context, routes[index]);
        },
        selectedLabelStyle: TextStyle(color: Colors.black), // Color de texto para ítem seleccionado
        unselectedLabelStyle: TextStyle(color: Colors.black), // Color de texto para ítems no seleccionados
      ),
    );
  }
}
