import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_app/constant/constant.dart';

class DetailsProduct extends StatefulWidget {
  @override
  _DetailsProductState createState() => _DetailsProductState();
}

class _DetailsProductState extends State<DetailsProduct> {
  int _numPices = 0;
  int groupValue = -1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height,
      child: Stack(
        children: [
          buildContainerHeaderImage(size),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          buildContainerGeniralInfo(size),
          Positioned(
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(top: 30, left: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              width: size.width,
              height: size.height * .55,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Particulars",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontSize: 30),
                    ),
                    SizedBox(height: size.height * .02),
                    Text(
                      'A drink (or beverage) is a liquid intended for human consumption. In addition to their basic function of satisfying thirst,',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    SizedBox(height: size.height * .02),
                    buildRowStars(),
                    SizedBox(height: size.height * .02),
                    Row(
                      children: [
                        buildContainerOption(size,
                            text: '500ml', icon: Icons.local_drink),
                        buildContainerOption(size,
                            text: 'less ice', icon: Icons.ac_unit),
                        buildContainerOption(size,
                            text: 'sugar', icon: Icons.add_business_outlined),
                      ],
                    ),
                    buildContainerNumPices(size),
                    //SizedBox(height: size.height,)
                    buildRadioListTile('Small',200,0),
                    buildRadioListTile('Medium',400,1),
                    buildRadioListTile('Big',800,2),


                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton.icon(
                          onPressed: (){},
                          icon: Icon(Icons.add_shopping_cart_outlined),
                          label: Text('Add To Cart'),
                          style: TextButton.styleFrom(
                            backgroundColor: KprimaryColor,
                            padding: EdgeInsets.symmetric(horizontal: size.width*.25,vertical: size.width*.03),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))

                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 50,),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  RadioListTile<int> buildRadioListTile(String text,double price,int number) {
    return RadioListTile(
      value: number,
      groupValue: groupValue,
      onChanged: (value) {
        setState(() {
          groupValue = value;
        });
      },
      title: Text(
        '  ${text}',
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: groupValue == number ? KprimaryColor : Colors.grey),
      ),
      subtitle: Text(
        '  Price is ${price} Egp',
        style: TextStyle(fontSize: 15),
      ),
      activeColor: KprimaryColor,
      secondary: Icon(Icons.check_circle_outline,color: number==groupValue?KprimaryColor : Colors.grey,size: 30,),
    );
  }

  Container buildContainerNumPices(Size size) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Row(
        children: [
          Text(
            "Number of Items",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Container(
            width: size.width * .4,
            height: 55,
            decoration: BoxDecoration(
              color: KprimaryColor,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        if (_numPices > 1) _numPices--;
                      });
                    },
                    icon: Icon(
                      Icons.remove,
                      size: 30,
                      color: Colors.white,
                    )),
                Text(
                  "$_numPices",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _numPices++;
                    });
                  },
                  icon: Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding buildContainerOption(Size size, {icon, text}) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: Container(
        width: size.width * .18,
        height: size.height * .1,
        decoration: BoxDecoration(
          color: KprimaryColor.withOpacity(.2),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: KprimaryColor,
              size: 35,
            ),
            Text(
              text,
              style: TextStyle(
                color: KprimaryColor,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row buildRowStars() {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: KprimaryColor,
          size: 25,
        ),
        Icon(
          Icons.star,
          color: KprimaryColor,
          size: 25,
        ),
        Icon(
          Icons.star,
          color: KprimaryColor,
          size: 25,
        ),
        Icon(
          Icons.star,
          color: KprimaryColor,
          size: 25,
        ),
        Icon(
          Icons.star_half,
          color: KprimaryColor,
          size: 25,
        ),
      ],
    );
  }

  Container buildContainerGeniralInfo(Size size) {
    return Container(
      width: size.width * .6,
      height: size.height * .4,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height * .09,
          ),
          Text(
            'Ice Creme',
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Text(
            'Food',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
          ),
          SizedBox(
            height: size.height * .02,
          ),
          Text(
            '200\$',
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Container buildContainerHeaderImage(Size size) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      width: size.width,
      height: size.height * .5,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        child: Opacity(
          opacity: .6,
          child: Image.network(
            'https://i.pinimg.com/originals/f7/f7/5c/f7f75c87226c5cd29c07e2ebdc7425b2.jpg',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
