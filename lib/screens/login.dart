import 'package:flutter/material.dart';
import 'package:google_sign_in1/screens/register.dart';
import 'package:google_sign_in1/stylingWidgets/button.dart';
import 'package:google_sign_in1/stylingWidgets/textField.dart';
import 'package:google_sign_in1/widget/google_signup_button_widget.dart';

import 'home.dart';

class Login extends StatefulWidget {
  static String pageTitle = "Login";
  static String routeName = "/login";

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // void backButton() {
  //   Navigator.pop(context);
  // }

  @override
  Widget build(BuildContext context) {
    // return WillPopScope(
    //     // child: Welcome(),
    //     onWillPop: () {
    //   backButton();
    //   return Future.value(false);
    // });
    // final user = FirebaseAuth.instance.currentUser;
    final screen = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Image(
              image: AssetImage(
                'images/login-top-paw.png',
              ),
              width: MediaQuery.of(context).size.height / 4.1,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image(
              image: AssetImage(
                'images/login-bottom-paw.png',
              ),
              width: MediaQuery.of(context).size.height / 6.0,
            ),
          ),
          Align(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 2.5,
                    child: Image(
                      image: AssetImage(
                        'images/DogTag_logo2.png',
                      ),
                      width: MediaQuery.of(context).size.height / 4.1,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 1.1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.themeColor,
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.width / 10,
                          ),
                        ),
                        SizedBox(height: 25),
                        Text(
                          "Username",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: screen.width / 1.1,
                          decoration: textFeildBoxDeco(),
                          child:
                              textFieldDesign("Enter Your Name", Icons.person),
                        ),
                        SizedBox(height: 25),
                        Text(
                          "Password",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: screen.width / 1.1,
                          decoration: textFeildBoxDeco(),
                          child: textFieldDesign("your Password", Icons.lock),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              "Forgot password?",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            width: MediaQuery.of(context).size.width / 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                buildSignUp(),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        ElevatedButton(
                          style: buttonDesign,
                          child: button_design(screen, "Sign in"),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home()));
                          },
                        ),
                        SizedBox(height: 10),
                        Center(
                          child: Column(
                            children: [
                              Text(
                                "Don't have an account",
                              ),
                              TextButton(
                                onPressed: () {
                                  // Navigator.of(context).pushNamed('/register');
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Register()));
                                },
                                child: Text(
                                  "Create Account",
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "terms and conditions / Privacy policy",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSignUp() => Column(
        children: [
          GoogleSignupButtonWidget(),
        ],
      );
}
