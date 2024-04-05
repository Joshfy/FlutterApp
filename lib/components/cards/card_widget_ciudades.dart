import 'package:flutter/material.dart';
import '../datos/data_ciudades.dart'; // Asegúrate de importar correctamente tus datos de ciudades

class CardWidget extends StatelessWidget {
  final CityData cityData;

  const CardWidget({Key? key, required this.cityData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300, // Ajusta el ancho de cada tarjeta según tus preferencias
      child: Card(
        elevation: 4.0,
        color: Colors.yellow, // Color de fondo amarillo
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(8.0)),
              child: Image.network(
                cityData.imageUrl,
                fit: BoxFit.cover,
                height: 100.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cityData.cityName,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    cityData.country,
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    cityData.description,
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HorizontalCityCardList extends StatelessWidget {
  final List<CityData> cityDataList;

  const HorizontalCityCardList({Key? key, required this.cityDataList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: cityDataList.map((cityData) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CardWidget(cityData: cityData),
          );
        }).toList(),
      ),
    );
  }
}

class HalfScreenHorizontalCityCardList extends StatelessWidget {
  final List<CityData> cityDataList;

  const HalfScreenHorizontalCityCardList({Key? key, required this.cityDataList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2, // Anchura de la mitad de la pantalla
      child: HorizontalCityCardList(cityDataList: cityDataList),
    );
  }
}
