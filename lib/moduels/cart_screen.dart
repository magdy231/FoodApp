import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/constant/constant.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding:
          EdgeInsets.symmetric(vertical: size.height * .05, horizontal: 20),
      width: size.width,
      height: size.height,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Shopping cart",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "A total is 1 pieces",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: size.height * .03,
            ),
            Container(
              height: size.height*.59,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (_, index) {
                    return buildContainerCart(size);
                  }),
            ),
            SizedBox(height: 5,),
            Align(
              alignment: Alignment.center,
              child: Container(
                alignment: Alignment.center,
                width: size.width -size.width*.3,
                height: 55,
                decoration: BoxDecoration(
                  color: KprimaryColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextButton(
                  onPressed: () {},
                  child: Padding(
                    padding:  EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          'Total  20 EGY',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        Spacer(),
                        Text(
                          'next',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container buildContainerCart(Size size) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      width: size.width,
      height: size.height * .18,
      child: Row(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: Image.network(
                'https://thefoodcafe.com/wp-content/uploads/2018/03/Creamy-Spinach-Pasta-Salad-with-Chicken-3-700x1050.jpg',
                fit: BoxFit.fill,
              ),
            ),
            width: size.width * .25,
            height: size.height * .18,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ice Cream',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  'Food',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                Text(
                  '200EGY',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      color: KprimaryColor),
                ),
              ],
            ),
          ),
          Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  size: 30,
                  color: Colors.red,
                ),
              ),
              Text(
                'Remove',
                style: TextStyle(color: Colors.red),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding buildPaddingHeader(Size size) {
    return Padding(
      padding: EdgeInsets.only(top: size.height * .03),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
              size: 30,
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
