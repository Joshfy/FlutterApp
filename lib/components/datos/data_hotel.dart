import 'package:flutter/material.dart';

class CardData {
  final String hotelName;
  final String city;
  final String price;
  final String imageUrl;

  CardData({
    required this.hotelName,
    required this.city,
    required this.price,
    required this.imageUrl,
  });
}

List<CardData> generateCardData() {
  return [
    CardData(
      hotelName: 'Hotel 1',
      city: 'Ciudad 1',
      price: '\$100',
      imageUrl:
          'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/02/36/d7/courtyard.jpg?w=1200&h=-1&s=1',
    ),
    CardData(
      hotelName: 'Hotel 2',
      city: 'Ciudad 2',
      price: '\$150',
      imageUrl:
          'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/02/36/d7/courtyard.jpg?w=1200&h=-1&s=1',
    ),
    CardData(
      hotelName: 'Hotel 3',
      city: 'Ciudad 3',
      price: '\$200',
      imageUrl:
          'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2b/02/36/d7/courtyard.jpg?w=1200&h=-1&s=1',
    ),
  ];
}
