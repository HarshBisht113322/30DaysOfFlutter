// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "Codepur";

    return Scaffold(
      //change material eith Scaffold

      appBar: AppBar(
        title: Text('Catalog App'),
      ),

      body: Center(
        //ctrl + shift + R = to erap things accordingly (for ex in the center)
        child: Container(
          child: Text(
              'Welcome to $days days of flutter by $name!'), //$days --> antropolation
        ),
      ),
      drawer: Drawer(), //That 3 line side icon to open a list.
    );
  }
}
