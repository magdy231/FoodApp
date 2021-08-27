import 'package:flutter/material.dart';
import 'package:food_app/layout/home_layout.dart';
import 'package:food_app/moduels/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:WelcomeScreen() ,
    );
  }
}

