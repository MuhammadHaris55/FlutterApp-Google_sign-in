import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in1/provider/google_sign_in.dart';
import 'package:google_sign_in1/screens/home.dart';
import 'package:google_sign_in1/screens/login.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: ChangeNotifierProvider(
          create: (context) => GoogleSignInProvider(),
          child: StreamBuilder(
            stream: FirebaseAuth.instance.authStateChanges(),
            builder: (context, snapshot) {
              final provider = Provider.of<GoogleSignInProvider>(context);
              if (provider.isSigningIn) {
                return buildLoading();
              } else if (snapshot.hasData) {
                return Home();
              } else {
                return Login();
              }
            },
          ),
        ),
      );

  // spining indicator
  Widget buildLoading() => Center(
        child: CircularProgressIndicator(),
      );
}
