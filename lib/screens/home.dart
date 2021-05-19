import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in1/provider/google_sign_in.dart';
import 'package:provider/provider.dart';

// Drawer _drawer(screen) {
//   return Drawer(
//     child: Container(
//       padding: EdgeInsets.only(top: 30, left: 15),
//       color: Colors.themeColor,
//       child: Column(
//         children: [
//           Row(
//               // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 CircleAvatar(
//                   backgroundColor: Colors.white,
//                   // backgroundImage: AssetImage(
//                   //   // '/images/shutterstock',
//                   //   // "images/bg_images/welcome_bg_image.png",
//                   //   'images/drawer-profile-pic.png',
//                   // ),
//                   child: Image(
//                     image: AssetImage(
//                       'images/drawer-profile-pic.png',
//                     ),
//                     width: 100,
//                     fit: BoxFit.fill,
//                   ),
//                   // radius: 20,
//                 ),
//                 SizedBox(width: 10),
//                 Column(
//                   // mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Spike',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                         letterSpacing: 1,
//                       ),
//                     ),
//                     Text(
//                       'Lorem ipsum',
//                       style: TextStyle(
//                         color: Colors.white,
//                         letterSpacing: 1,
//                       ),
//                     ),
//                   ],
//                 ),
//                 Align(
//                   alignment: Alignment.centerRight,
//                   child: IconButton(
//                     iconSize: 50,
//                     color: Colors.blueGrey,
//                     highlightColor: Colors.black,
//                     icon: Icon(
//                       Icons.cancel_presentation,
//                     ),
//                   ),
//                 )
//               ]),
//           SizedBox(height: 20),
//           Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
//             Text(
//               'Home',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             IconButton(icon: Icon(Icons.arrow_forward), onPressed: () {})
//           ]),
//           Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
//             Text(
//               'Inbox',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             IconButton(icon: Icon(Icons.arrow_forward), onPressed: () {})
//           ]),
//           Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
//             Text(
//               'My profile',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             IconButton(icon: Icon(Icons.arrow_forward), onPressed: () {})
//           ]),
//           Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
//             Text(
//               'My dog\'s',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             IconButton(icon: Icon(Icons.arrow_forward), onPressed: () {})
//           ]),
//           Divider(
//             thickness: 2.0,
//             color: Colors.black,
//             // indent: 2.0,
//             endIndent: screen.width / 8,
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               drawer_btn('The Dog Tag Mission'),
//               drawer_btn('Contact us'),
//               drawer_btn('Privacy policy'),
//               drawer_btn('Term and conditions'),
//             ],
//           ),
//           Divider(
//             thickness: 2.0,
//             color: Colors.black,
//             // indent: 2.0,
//             endIndent: screen.width / 8,
//           ),
//           // ElevatedButton(
//           //     onPressed: () {
//           //       final provider =
//           //           Provider.of<GoogleSignInProvider>(context, listen: false);
//           //       provider.logout();
//           //     },
//           //     child: Text('Logout')),
//         ],
//       ),
//     ),
//   );
// }

TextButton drawer_btn(String buttonText) {
  return TextButton(
    style: ButtonStyle(),
    onPressed: () {},
    child: Text(
      buttonText,
      style: TextStyle(color: Colors.white),
    ),
  );
}

class Home extends StatefulWidget {
  static String pageTitle = "Home";
  static String routeName = "/";

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screen = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.redAccent,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   leading: Image(
      //     image: AssetImage(
      //       'images/Dog_Tag-03.png',
      //     ),
      //   ),
      //   leadingWidth: screen.width,
      //   actions: <Widget>[
      //     IconButton(
      //       color: Colors.themeColor,
      //       icon: Icon(Icons.chat_bubble_outline),
      //       onPressed: () {
      //         // showSearch(context: context, delegate: searchBar());
      //       },
      //     ),
      //     IconButton(
      //       color: Colors.themeColor,
      //       icon: Icon(Icons.menu),
      //       onPressed: () {
      //         // showSearch(context: context, delegate: searchBar());
      //       },
      //     ),
      //   ],
      // ),
      drawer: Drawer(
        child: Container(
          padding: EdgeInsets.only(top: 30, left: 15),
          color: Colors.themeColor,
          child: Column(
            children: [
              Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      // backgroundImage: AssetImage(
                      //   // '/images/shutterstock',
                      //   // "images/bg_images/welcome_bg_image.png",
                      //   'images/drawer-profile-pic.png',
                      // ),
                      child: Image(
                        image: AssetImage(
                          'images/drawer-profile-pic.png',
                        ),
                        width: 100,
                        fit: BoxFit.fill,
                      ),
                      // radius: 20,
                    ),
                    SizedBox(width: 10),
                    Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Spike',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 1,
                          ),
                        ),
                        Text(
                          'Lorem ipsum',
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                        iconSize: 50,
                        color: Colors.blueGrey,
                        highlightColor: Colors.black,
                        icon: Icon(
                          Icons.cancel_presentation,
                        ),
                      ),
                    )
                  ]),
              SizedBox(height: 20),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(icon: Icon(Icons.arrow_forward), onPressed: () {})
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Text(
                  'Inbox',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(icon: Icon(Icons.arrow_forward), onPressed: () {})
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Text(
                  'My profile',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(icon: Icon(Icons.arrow_forward), onPressed: () {})
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Text(
                  'My dog\'s',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(icon: Icon(Icons.arrow_forward), onPressed: () {})
              ]),
              Divider(
                thickness: 2.0,
                color: Colors.black,
                // indent: 2.0,
                endIndent: screen.width / 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  drawer_btn('The Dog Tag Mission'),
                  drawer_btn('Contact us'),
                  drawer_btn('Privacy policy'),
                  drawer_btn('Term and conditions'),
                ],
              ),
              Divider(
                thickness: 2.0,
                color: Colors.black,
                // indent: 2.0,
                endIndent: screen.width / 8,
              ),
              ElevatedButton(
                  onPressed: () {
                    final provider = Provider.of<GoogleSignInProvider>(context,
                        listen: false);
                    provider.logout();
                  },
                  child: Text('Logout')),
            ],
          ),
        ),
      ),
      body: Container(
        color: Colors.red,
        child: Stack(
          children: [
            SizedBox(height: 50.0),
            Align(
              alignment: Alignment.center,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  width: screen.width / 1.1,
                  color: Colors.red,
                  margin: EdgeInsets.only(top: 105.0, bottom: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'My report',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: screen.width / 18,
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.shadowColor,
                                blurRadius: 5.0,
                              ),
                            ]),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 30.0),
                        child: Column(
                          children: [
                            Text(
                              'Add your lost dog report',
                              style: TextStyle(
                                color: Colors.themeColor,
                                fontSize: screen.width / 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'ADD YOUR DOG ->',
                              ),
                              style: ButtonStyle(
                                // padding: MaterialStateProperty.all<EdgeInsets>(
                                //     EdgeInsets.all(20.0)),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.black),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    side: BorderSide(
                                      color: Colors.themeColor,
                                      width: 2,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15),
                      RichText(
                        text: TextSpan(
                            text: 'Lost Dogs',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: screen.width / 18,
                            ),
                            children: [
                              TextSpan(
                                text: ' Near Me',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                ),
                              )
                            ]),
                      ),
                      SizedBox(height: 15),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Container(
                          color: Colors.red,
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                width: screen.width / 3,
                                height: screen.width / 2.2,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.shadowColor,
                                        blurRadius: 5.0,
                                      ),
                                    ]),
                                child: Column(
                                  children: [
                                    Container(
                                      width: screen.width / 3,
                                      height: screen.width / 4,
                                      child: Image(
                                        image: AssetImage(
                                          // 'images/shutterstock_153013052.png',
                                          'images/home-database-data.png',
                                          // 'images/Dog tag-01.png',
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Zoey, Female',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      // 'kfjghsdk lskdjf sdklfj',
                                      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod',
                                      style: TextStyle(
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                width: screen.width / 3,
                                height: screen.width / 2.2,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.shadowColor,
                                        blurRadius: 5.0,
                                      ),
                                    ]),
                                child: Column(
                                  children: [
                                    Container(
                                      width: screen.width / 3,
                                      height: screen.width / 4,
                                      child: Image(
                                        image: AssetImage(
                                          // 'images/shutterstock_153013052.png',
                                          'images/home-database-data.png',
                                          // 'images/Dog tag-01.png',
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Zoey, Female',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      // 'kfjghsdk lskdjf sdklfj',
                                      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod',
                                      style: TextStyle(
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                width: screen.width / 3,
                                height: screen.width / 2.2,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.shadowColor,
                                        blurRadius: 5.0,
                                      ),
                                    ]),
                                child: Column(
                                  children: [
                                    Container(
                                      width: screen.width / 3,
                                      height: screen.width / 4,
                                      child: Image(
                                        image: AssetImage(
                                          // 'images/shutterstock_153013052.png',
                                          'images/home-database-data.png',
                                          // 'images/Dog tag-01.png',
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Zoey, Female',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      // 'kfjghsdk lskdjf sdklfj',
                                      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod',
                                      style: TextStyle(
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                width: screen.width / 3,
                                height: screen.width / 2.2,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.shadowColor,
                                        blurRadius: 5.0,
                                      ),
                                    ]),
                                child: Column(
                                  children: [
                                    Container(
                                      width: screen.width / 3,
                                      height: screen.width / 4,
                                      child: Image(
                                        image: AssetImage(
                                          // 'images/shutterstock_153013052.png',
                                          'images/home-database-data.png',
                                          // 'images/Dog tag-01.png',
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Zoey, Female',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      // 'kfjghsdk lskdjf sdklfj',
                                      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod',
                                      style: TextStyle(
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                width: screen.width / 3,
                                height: screen.width / 2.2,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.shadowColor,
                                        blurRadius: 5.0,
                                      ),
                                    ]),
                                child: Column(
                                  children: [
                                    Container(
                                      width: screen.width / 3,
                                      height: screen.width / 4,
                                      child: Image(
                                        image: AssetImage(
                                          // 'images/shutterstock_153013052.png',
                                          'images/home-database-data.png',
                                          // 'images/Dog tag-01.png',
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Zoey, Female',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      // 'kfjghsdk lskdjf sdklfj',
                                      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod',
                                      style: TextStyle(
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(horizontal: 5.0),
                                width: screen.width / 3,
                                height: screen.width / 2.2,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.shadowColor,
                                        blurRadius: 5.0,
                                      ),
                                    ]),
                                child: Column(
                                  children: [
                                    Container(
                                      width: screen.width / 3,
                                      height: screen.width / 4,
                                      child: Image(
                                        image: AssetImage(
                                          // 'images/shutterstock_153013052.png',
                                          'images/home-database-data.png',
                                          // 'images/Dog tag-01.png',
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Zoey, Female',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      // 'kfjghsdk lskdjf sdklfj',
                                      'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod',
                                      style: TextStyle(
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: 40,
                                height: 40,
                                child: Text(
                                  'sdjkfh',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.shadowColor,
                                blurRadius: 5.0,
                              ),
                            ]),
                        padding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 30.0),
                        child: Column(
                          children: [
                            Text(
                              'Seen a dog that looks lost?',
                              style: TextStyle(
                                color: Colors.themeColor,
                                fontSize: screen.width / 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Report it and help get them home',
                            ),
                            SizedBox(height: 10.0),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'ADD REPORT ->',
                              ),
                              style: ButtonStyle(
                                // padding: MaterialStateProperty.all<EdgeInsets>(
                                //     EdgeInsets.all(20.0)),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.black),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    side: BorderSide(
                                      color: Colors.themeColor,
                                      width: 2,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            // ElevatedButton(
                            //   onPressed: () {},
                            //   child: Text('ADD YOUR DOG'),
                            // ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                padding:
                    EdgeInsets.only(left: 10, top: 30, right: 10, bottom: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.shadowColor,
                        blurRadius: 5.0,
                      ),
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image(
                      image: AssetImage(
                        'images/Dog_Tag-03.png',
                      ),
                      width: screen.width / 2,
                    ),
                    Row(
                      children: [
                        IconButton(
                            icon: Icon(Icons.chat_bubble_outline),
                            color: Colors.themeColor,
                            onPressed: () {}),
                        IconButton(
                            icon: Icon(Icons.menu),
                            color: Colors.themeColor,
                            onPressed: () {}),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//--------------------------------------------- Image TRANSITION -starts
//   body: SizedBox(
//   width: 300,
// child: Hero(
// tag: Image.asset(
//     'images/Dog tag-2.png',
//   ),
// child: Material(
// color: Colors.transparent,
// child:
// // InkWell(
// // onTap: (){
//   Image.asset(
//     'images/Dog tag-2.png',
//     fit: BoxFit.contain,
//   // );
//
// // }
// ),
// ),
// ),
// ),
//---------------------------------------------Image TRANSITION --------------------ends

// ------------------------------------ default flutter app -----------starts
// body: Center(
//   child: Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: <Widget>[
//       Text(
//         'You have pushed the button this many times:',
//       ),
//       Text(
//         '$_counter',
//         style: Theme.of(context).textTheme.headline4,
//       ),
//     ],
//   ),
// ),
// floatingActionButton: FloatingActionButton(
// onPressed: _incrementCounter,
// tooltip: 'Increment',
// child: Icon(Icons.add),
// ) // This trailing comma makes auto-formatting nicer for build methods.
// ------------------------------------ default flutter app ----------- ends

//------------------------------------------ RadientColor --- starts
// body: Container(
//       decoration: BoxDecoration(
//           gradient: RadialGradient(
//             colors: [
//               Colors.white,
//               Colors.themeColor,
//             ],
//           ),
//       ),
//------------------------------------------ RadientColor --- starts
