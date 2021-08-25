import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/constant/constant.dart';

class HomeScreen extends StatefulWidget {


  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: size.height*0.1,),
        buildHeaderRow(),
        SearchWidget(size,context),
        SizedBox(height: size.height*0.02,),
        Itemproduct('Drink'),
        Container(
          height: size.height*0.25,

          color: Colors.grey,
          child: Container(
            margin: EdgeInsets.all(20),
            height: size.height*0.02,
            width: size.width*0.35,
            color: Colors.green,
          ),
        ),

      ],
    );
  }

  Padding Itemproduct(text) {
    return Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20),
        child: Text(text,style: TextStyle(fontSize: 30,color: KprimaryColor,fontWeight: FontWeight.w500),),
      );
  }

  Container SearchWidget(Size size,context) {
    return Container(

        height: size.height*0.05,
        margin: EdgeInsets.symmetric(horizontal: size.width*0.1,vertical: size.height*0.01),
        child: GestureDetector(
          onTap: (){},
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xffF6F6F2),
              labelText: 'Search',
              labelStyle: TextStyle(fontSize: 18,color: Colors.grey),
              contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal: 0),
              prefixIcon:  IconButton(icon: SvgPicture.asset('assets/icon/search.svg',color: Colors.grey,)),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.transparent),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),


              ),
            ),
          ),
        ),

      );
  }

  Row buildHeaderRow() {
    return Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text('Venus',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
          ),
          Spacer(),
          IconButton(icon: Icon(Icons.add_shopping_cart,size: 30,), onPressed: (){}),
        ],
      );
  }

}
