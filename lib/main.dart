import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testing/Pages/home_page.dart';
import 'package:testing/Pages/login_page.dart';
import 'package:testing/utils/routes.dart'; //import this package

void main() {
  runApp(
      // ignore: prefer_const_constructors
      MyApp()); // Then call this but remember to make it in the class below....
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      // ignore: prefer_const_constructors

      // home: HomePage(),  //removing this for route

      themeMode: ThemeMode.light, //can be light or dark both

      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),

      // darkTheme: ThemeData(
      //   brightness: Brightness
      //       .dark, //enabling this maked it dark all over overriding the red below
      // ),

      // initialRoute: "/home",    //without this the default first page of the app is "/" as specified below

      routes: {
        // ignore: prefer_const_constructors
        "/": (context) => LoginPage(), //make it like this so first file is the login page
        // ignore: prefer_const_constructors
        "/home": (context) => HomePage(),  //---------------------------this is ignored so that we can add the routes


        // ignore: prefer_const_constructors
        MyRoutes.homeRoute: (context) => HomePage(),
        // ignore: prefer_const_constructors
        "/login": (context) => LoginPage(), //---------------------------this is ignored so that we can add the routes
        // ignore: prefer_const_constructors
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}

// METHOD --> function outside class
bringVegetables({bool thaila = false, int rupees = 100}) {}
