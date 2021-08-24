import 'package:flutter/material.dart';

class Product {
  final String Name;
  final String subTitle;
  final String describtion;
  final String imageUrl;
  final double smallPrice;
  final double mediumPrice;
  final double bigPrice;
  final int ID;

  Product(
      {@required this.Name,
      @required this.subTitle,
      @required this.describtion,
      @required this.imageUrl,
      @required this.smallPrice,
      @required this.mediumPrice,
      @required this.bigPrice,
      @required this.ID});
}

List<Product> myProduct = [
  Product(
      Name: 'Passta meet',
      subTitle: 'godzela',
      describtion: 'ma3krona with souce meet el3zeeem ',
      imageUrl:
          'https://static.remove.bg/remove-bg-web/207b10c4ce48e7dca1441ee119b7f52754f487fd/assets/start-0e837dcc57769db2306d8d659f53555feb500b3c5d456879b9c843d1872e7baa.jpg',
      smallPrice: 20,
      mediumPrice: 40,
      bigPrice: 60,
      ID: 1),

];
