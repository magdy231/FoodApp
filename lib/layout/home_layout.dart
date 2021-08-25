import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/constant/constant.dart';
import 'package:food_app/moduels/cart_screen.dart';
import 'package:food_app/moduels/home_screen.dart';
import 'package:food_app/moduels/shop_screen.dart';
 class HomeLayout extends StatefulWidget {


   @override
   _HomeLayoutState createState() => _HomeLayoutState();
 }

 class _HomeLayoutState extends State<HomeLayout> {
   int currentIndex=0;
   List<Widget> myScreens=[
     HomeScreen(),
     ShopScreen(),
     CartScreen(),
   ];
   @override
   Widget build(BuildContext context) {
     Size size=MediaQuery.of(context).size;
     return Scaffold(
       body: myScreens[currentIndex],
       bottomNavigationBar: BottomNavigationBar(
         currentIndex: currentIndex,
         onTap: (index){
           setState(() {
             currentIndex=index;
           });
         },
         items: [
           BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: 'Home'),
           BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),label: 'Shop'),
           BottomNavigationBarItem(icon: Icon(Icons.add_shopping_cart_sharp),label: 'cart'),

         ],
         unselectedItemColor: Colors.grey,
         selectedItemColor: KprimaryColor,
         type: BottomNavigationBarType.fixed,
       ),

     );
   }
 }
