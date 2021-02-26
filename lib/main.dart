import 'package:flutter/material.dart';
import 'package:nubank_clone/views/home.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        buttonColor: Color(0xff9f33ca),
        cardColor: Colors.white,
        accentColor: Color(0xff9723c6),
        canvasColor: Color(0xff8a05be),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          title: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Color(0xff707070),
          ),
          subtitle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xff707070),
          ),
          body1: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xff25a0dd),
          ),
          body2: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          subhead: TextStyle(
            fontSize: 10,
            color: Colors.white,
          ),
        ),
      ),
      home: SplashScreenView(
        home: HomeScreen(),
        duration: 4000,
        imageSrc: "assets/images/Nubank_Logo@2x.png",
      ),
    );
  }
}
