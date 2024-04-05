import 'package:flutter/material.dart';

class CityData {
  final String cityName;
  final String country;
  final String description;
  final String imageUrl;

  CityData({
    required this.cityName,
    required this.country,
    required this.description,
    required this.imageUrl,
  });
}

List<CityData> generateCityData() {
  return [
    CityData(
      cityName: 'Lima',
      country: 'Perú',
      description: 'Lima, la capital de Perú, es una ciudad vibrante y llena de historia, conocida por su arquitectura colonial española, museos y deliciosa gastronomía.',
      imageUrl: 'https://elcomercio.pe/resizer/xOtSOpKs7ud-TTOCLhsirB8UVx0=/580x330/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/JLIGISAU4BF7XIQ7XRCEAPY4LY.jpg',
    ),
    CityData(
      cityName: 'Cusco',
      country: 'Perú',
      description: 'Cusco es una ciudad en el sureste de Perú, situada en la cordillera de los Andes. Es conocida por ser la antigua capital del Imperio Inca y por sus bien preservados restos arquitectónicos.',
      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWB0_UgqxgNdYl3xKXuk2DXi7aoAELGVx2G0xsjxH-Wcw5VyhdQiu-LF3zIOvyvpUpl7k&usqp=CAU',
    ),
    CityData(
      cityName: 'Arequipa',
      country: 'Perú',
      description: 'Arequipa, conocida como la Ciudad Blanca por sus edificios construidos en sillar blanco, es una ciudad en el sur de Perú. Es famosa por su arquitectura colonial española y su impresionante paisaje volcánico.',
      imageUrl: 'https://media.vogue.mx/photos/5e5c4a5b25623100081c4370/16:9/w_1280,c_limit/Arequipa--paisaje.jpg',
    ),
  ];
}
