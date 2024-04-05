import 'package:flutter/material.dart';
import "../datos/data_hotel.dart";

class CardWidget extends StatelessWidget {
  final CardData cardData;

  const CardWidget({Key? key, required this.cardData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300, // Ajusta el ancho de cada tarjeta según tus preferencias
      child: Card(
        elevation: 2.0,
        color: Colors.lightBlue, // Color de fondo celeste
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image.network(
                cardData.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cardData.hotelName,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    cardData.city,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Precio: ${cardData.price}',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
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

class HorizontalCardList extends StatelessWidget {
  final List<CardData> cardDataList;

  const HorizontalCardList({Key? key, required this.cardDataList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: cardDataList.map((cardData) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: CardWidget(cardData: cardData),
        );
      }).toList(),
    );
  }
}

class HalfScreenHorizontalCardList extends StatelessWidget {
  final List<CardData> cardDataList;

  const HalfScreenHorizontalCardList({Key? key, required this.cardDataList})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2, // Anchura de la mitad de la pantalla
      child: HorizontalCardList(cardDataList: cardDataList),
    );
  }
}
