import 'package:flutter/cupertino.dart';
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
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height * 0.1,
          ),
          buildHeaderRow(),
          SearchWidget(size, context),
          SizedBox(height: size.height * 0.02),
          Itemproduct('Drink'),
          SizedBox(height: size.height * 0.005),
          Container(
            margin: EdgeInsets.symmetric(horizontal: size.width * .01),
            height: size.height * 0.25,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (_, index) {
                return buildDrinkItem(size);
              },
            ),
          ),
          SizedBox(height: size.height * 0.005),
          Itemproduct('Food'),
          Container(

            height: size.height*.5,
            child: ListView.builder(
            itemCount: 10,
              itemBuilder: (_,index){
              return buildFoodItem(size);
              },
            ),
          ),

        ],
      ),
    );
  }

  Container buildFoodItem(Size size) {
    return Container(

          margin: EdgeInsets.symmetric(horizontal: 20,vertical: 7),
          width: size.width,
          height: size.height * .13,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: size.width * .23,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(
                  'assets/images/pngegg (9).png',
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(width: size.width*.06,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Ice cream',style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontSize: 24,
                  ),),
                  Text('Sup title',style: TextStyle(
                    fontSize: 18,
                    color: Colors.blueGrey,
                  ),),
                ],
              ),
              Spacer(),
              Text("200 \$",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800
              ),),
            ],
          ),
        );
  }

  Container buildDrinkItem(Size size) {
    return Container(
      margin: EdgeInsets.only(left: 15, top: 7, bottom: 7),
      height: size.height * 0.025,
      width: size.width * 0.35,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: size.width * .2,
            height: size.height * .15,
            child: Image.asset(
              'assets/images/pngegg (9).png',
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(height: 5),
          Text(
            'Drink',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.white,
              letterSpacing: 1,
            ),
          )
        ],
      ),
    );
  }

  Padding Itemproduct(text) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 30, color: KprimaryColor, fontWeight: FontWeight.w500),
      ),
    );
  }

  Container SearchWidget(Size size, context) {
    return Container(
      height: size.height * 0.05,
      margin: EdgeInsets.symmetric(
          horizontal: size.width * 0.1, vertical: size.height * 0.01),
      child: GestureDetector(
        onTap: () {},
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xffF6F6F2),
            labelText: 'Search',
            labelStyle: TextStyle(fontSize: 18, color: Colors.grey),
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            prefixIcon: IconButton(
                icon: SvgPicture.asset(
              'assets/icon/search.svg',
              color: Colors.grey,
            )),
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
          child: Text(
            'Venus',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
        Spacer(),
        IconButton(
            icon: Icon(
              Icons.add_shopping_cart,
              size: 30,
            ),
            onPressed: () {}),
      ],
    );
  }
}
