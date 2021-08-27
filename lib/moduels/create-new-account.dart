import 'dart:ui' show FontWeight, ImageFilter, Size;
import 'package:flutter/material.dart';
import 'package:food_app/constant/pallete.dart';
import 'package:food_app/layout/home_layout.dart';
import 'package:food_app/moduels/login-screen.dart';
import 'package:food_app/widgets/background-image.dart';
import 'package:food_app/widgets/password-input.dart';
import 'package:food_app/widgets/rounded-button.dart';
import 'package:food_app/widgets/text-field-input.dart';



//import '../pallete.dart';

class CreateNewAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        BackgroundImage(image: 'assets/images/register_bg.png'),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.width * 0.1,
                ),
                Stack(
                  children: [
                    Center(
                      child: ClipOval(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                          child: CircleAvatar(
                            radius: size.width * 0.14,
                            backgroundColor: Colors.grey.withOpacity(.6),
                            child: Icon(
                              Icons.person_outline,
                              color: kWhite,
                              size: size.width * 0.1,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: size.height * 0.08,
                      left: size.width * 0.56,
                      child: Container(
                        height: size.width * 0.1,
                        width: size.width * 0.1,
                        decoration: BoxDecoration(
                          color: Color(0xff86C100),
                          shape: BoxShape.circle,
                          border: Border.all(color: kWhite, width: 2),
                        ),
                        child: Icon(
                         Icons.arrow_upward_sharp,
                          color: kWhite,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: size.width * 0.1,
                ),
                Column(
                  children: [
                    TextInputField(
                      icon:Icons.person_outline,
                      hint: 'User',
                      inputType: TextInputType.name,
                      inputAction: TextInputAction.next,
                    ),
                    TextInputField(
                      icon:Icons.email,
                      hint: 'Email',
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.next,
                    ),
                    PasswordInput(
                      icon: Icons.lock,
                      hint: 'Password',
                      inputAction: TextInputAction.next,
                      inputType: TextInputType.name,
                    ),
                    PasswordInput(
                      icon: Icons.lock,
                      hint: 'Confirm Password',
                      inputAction: TextInputAction.done,
                      inputType: TextInputType.name,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    RoundedButton(buttonName: 'Register',
                    function: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (_) => HomeLayout()));
                    },),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account?',
                          style: kBodyText,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>LoginScreen()));
                          },
                          child: Text(
                            'Login',
                            style: kBodyText.copyWith(
                                color: Color(0xff86C100), fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
