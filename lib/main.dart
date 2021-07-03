import 'package:flutter/material.dart';   //import this package

void main(){        
  runApp(MyApp());    // Then call this but remember to make it in the class below....

}

class MyApp extends StatelessWidget {           //type stl and it will automatically suggest this code and add the name of the app
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {        //build is the main for UI
    return MaterialApp(
      home: Material(
        child: Center(          //ctrl + shift + R = to erap things accordingly (for ex in the center)
          child: Container(
            child: Text('Welcome to 30 days of flutter!'),
          ),
        ),
      ),
    );
  }
}