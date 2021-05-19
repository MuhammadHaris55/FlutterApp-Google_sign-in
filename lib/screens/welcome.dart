import 'package:flutter/material.dart';
import 'package:google_sign_in1/page/home_page.dart';
import 'package:google_sign_in1/screens/register.dart';
import 'package:google_sign_in1/stylingWidgets/button.dart';

class Welcome extends StatefulWidget {
  static String pageTitle = "Welcome";
  static String routeName = "/welcome";

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'images/welcome-bg-image.jpg',
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height / 15),
              // height: MediaQuery.of(context).size.height / 2.2,
              child: Center(
                child: Image(
                  image: AssetImage(
                    'images/Dog_Tag-02.png',
                  ),
                  width: MediaQuery.of(context).size.height / 4.1,
                ),
              ),
            ),

            Container(
              // height: MediaQuery.of(context).size.height / 1.6,
              height: MediaQuery.of(context).size.width * 1.05,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(52),
                  topLeft: Radius.circular(52),
                ),
              ),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          height: 153.09,
                          width: 148.05,
                          // width: MediaQuery.of(context).size.width / 2.9,
                          // height: MediaQuery.of(context).size.height / 4.7,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'images/welcome-content-border.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          width: MediaQuery.of(context).size.width / 1.1,
                          padding: EdgeInsets.only(top: 30, left: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Welcome!",
                                style: TextStyle(
                                  color: Colors.themeColor,
                                  // fontSize: 30,
                                  fontSize:
                                      MediaQuery.of(context).size.width / 10,
                                  fontFamily: "Popins",
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Lets get Started",
                                style: TextStyle(
                                  fontFamily: "Popins",
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      MediaQuery.of(context).size.width / 19,
                                ),
                              ),
                              SizedBox(height: 10),
                              Text(
                                "Dog tag is the warden patrolling over your pet anytime, anywhere.",
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: EdgeInsets.zero,
                    child: button_design(screen, "LOGIN"),
                    onPressed: () {
                      // Navigator.of(context).pushNamed('/login');
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                  ),
                  SizedBox(height: 5),
                  Text(
                    "or",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: EdgeInsets.zero,
                    child: button_design(screen, "SIGN UP"),
                    onPressed: () {
                      // Navigator.of(context).pushNamed('/register');
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Register()));
                    },
                  ),
                  SizedBox(height: 25),
                  Text(
                    "terms and conditions / Privacy policy",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // Container(
            //   // margin: EdgeInsets.only(top: 20),
            //   height: 400,
            //   child: Container(
            //     alignment: Alignment.topRight,
            //     decoration: BoxDecoration(
            //       //
            //       image: DecorationImage(
            //         image: AssetImage(
            //           'images/Dog tag-2.png',
            //         ),
            //       ),
            //       //
            //       color: Colors.themeColor,
            //       // borderRadius: BorderRadius.circular(50)),
            //       borderRadius: BorderRadius.only(
            //         topLeft: Radius.circular(60),
            //         topRight: Radius.circular(60),
            //       ),
            //     ),
            //     child: ClipRRect(
            //       // borderRadius: BorderRadius.circular(100),
            //       child: Align(
            //         child: Container(
            //           // alignment: Alignment.topRight,
            //           // child: Center(
            //           child: Container(
            //             height: 100,
            //             width: 100,
            //             decoration: BoxDecoration(
            //               image: DecorationImage(
            //                 image: AssetImage(
            //                   'images/Dog tag-2.png',
            //                 ),
            //               ),
            //             ),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
