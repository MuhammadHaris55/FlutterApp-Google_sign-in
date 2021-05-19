import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_sign_in1/screens/welcome.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => Welcome())));
    // context, MaterialPageRoute(builder: (context) => Routes())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.themeColor,
      body: Container(
        decoration: BoxDecoration(
            gradient: RadialGradient(
          colors: [
            Colors.white,
            Colors.themeColor,
          ],
        )),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'images/Dog tag-2.png',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// void main() => runApp(MyApp());
//
// class MyApp extends StatefulWidget {
//   @override
//   _MyAppState createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//     );
//   }
// }
// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   @override
//
//   void initState() {
//     super.initState();
//
//     Timer(
//         Duration(seconds: 3),
//         () => Navigator.push(
//             context, MaterialPageRoute(builder: (context) => FirstPage())));
//   }
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Center(
//         child: SpinKitRotatingCircle(color: Colors.teal,)
//       ),
//     );
//   }
// }
