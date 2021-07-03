import 'package:flutter/material.dart';
import 'package:testing/home_page.dart'; //import this package

void main() {
  runApp(
      MyApp()); // Then call this but remember to make it in the class below....
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
