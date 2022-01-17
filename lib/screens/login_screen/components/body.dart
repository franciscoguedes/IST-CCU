// ignore_for_file: deprecated_member_use

import 'package:bins/screens/homepage/homepage.dart';
import 'package:flutter/material.dart';


class Body extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [ 
                  const Text(
                  "Login",
                  style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RobotoMono',
                  fontSize: 70,
                ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              width: size.width * 0.7,
              decoration: BoxDecoration(
                color: Colors.lightGreen,
                borderRadius: BorderRadius.circular(29),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: "Email",
                  border: InputBorder.none,
                ),
              ),
            ),
           //  SizedBox(height: size.height * 0.3),
           Container(
              margin: EdgeInsets.symmetric(vertical: 3),
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              width: size.width * 0.7,
              decoration: BoxDecoration(
                color: Colors.lightGreen,
                borderRadius: BorderRadius.circular(29),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  icon: 
                    Icon(
                      Icons.lock,
                    //color: Colors.white,
                    
                  ),
                  hintText: "Password",
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              width: size.width * 0.7,
              margin: EdgeInsets.symmetric(vertical: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29) ,
                child: FlatButton(
                  // ignore: prefer_const_constructors
                  padding: EdgeInsets.symmetric(vertical: 20,  horizontal: 40) ,
                  color: Colors.green,
                  onPressed: () {
                    Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MyHomePage(title:"HomePage");
                      },
                    ),
                    );
                  }, 
                  child: 
                    const Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                    ),
                )
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Don't have an account?",
                style: TextStyle(color: Colors.green),
                ),
              ],
            )
          ],
        ),
    );
  }
}
