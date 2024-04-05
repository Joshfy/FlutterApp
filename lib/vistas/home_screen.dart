import 'package:flutter/material.dart';
import '../sidebar.dart';
import '../components/cards/card_widget_Inicio.dart';
import '../components/cards/card_widget_ciudades.dart';
import '../components/datos/data_hotel.dart';
import "../components/datos/data_ciudades.dart";

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<CardData> cardDataList = generateCardData();
    final List<CityData> cityDataList = generateCityData();

    return Scaffold(
      appBar: AppBar(
        title: Text('Resumen de lo mejor '),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(8),
                color: Colors.grey[200],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hoteles Destacados',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    SizedBox(
                      height: 350, // Altura fija para el HorizontalCardList
                      child: HorizontalCardList(cardDataList: cardDataList),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20), // Espacio entre el contenedor de hoteles y el contenedor de ciudades
              Container(
                padding: EdgeInsets.all(8),
                color: Colors.grey[200],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ciudades Destacadas',
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    HorizontalCityCardList(cityDataList: cityDataList),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Sidebar(selectedIndex: 0), // El índice por defecto es 0
    );
  }
}
