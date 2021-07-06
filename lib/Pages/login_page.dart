// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:testing/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        //this is to solve the small device problem
        child: Column(
          // ignore: duplicate_ignore

          children: [
            Image.asset(
              "assets/images/login_image.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              //use this to enter space
              height: 20.0,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(
                //style the text like this
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [


                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",

                    ),

                    onChanged: (value){
                      name = value;
                      setState(() {});
                    },
                  ),


                  TextFormField(
                    obscureText: true, //That dots in password
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),


                  SizedBox(
                    height: 40.0,
                  ),


                  InkWell(

                    onTap: () async{
                      // Navigator.pushNamed(context, MyRoutes.homeRoute);     //from onPress
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);

                    },
                    
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),

                      width: changeButton? 50:150,
                      height: 50,
                      // color: Colors.deepPurple,
                      alignment: Alignment.center,
                      
                      child: changeButton?Icon(Icons.done, color: Colors.white) : Text(
                        "Login",
                        style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18,),
                      ),
                  
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,

                        // shape: changeButton? BoxShape.circle:BoxShape.rectangle,
                        // borderRadius: BorderRadius.circular(8),
                        borderRadius: BorderRadius.circular(changeButton? 50:8),
                      ),
                    ),
                  ),

                  // ElevatedButton(
                  //   child: Text("Login"),
                    
                  //   style: TextButton.styleFrom(
                  //     minimumSize: Size(150, 40)
                  //   ),
                  //   onPressed: () {
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
