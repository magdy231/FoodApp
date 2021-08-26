import 'package:flutter/material.dart';

class ShopScreen extends StatefulWidget {
  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        Text(
          'dsgdg',
          style: TextStyle(fontSize: 40),
        ),
        Container(
          height: 100,
          child: ListView.builder(
            itemBuilder: (_, index) {
              return Text('dgds');
            },
            itemCount: 10,
          ),
        ),
      ],
    );
  }
}
