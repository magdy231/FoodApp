import 'package:flutter/material.dart';
class ShopScreen extends StatefulWidget {


  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Shop Screen',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
