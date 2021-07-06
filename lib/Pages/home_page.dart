// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "Codepur";

    return Scaffold(
      //change material with Scaffold

      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('Catalog App'),
      ),

      body: Center(
        //ctrl + shift + R = to erap things accordingly (for ex in the center)
        child: Container(
          child: Text(
              'Welcome to $days days of flutter by $name!'), //$days --> antropolation
        ),
      ),
      // ignore: prefer_const_constructors
      drawer: Drawer(), //That 3 line side icon to open a list.
    );
  }
}
