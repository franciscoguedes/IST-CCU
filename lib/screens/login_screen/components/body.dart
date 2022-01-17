// ignore_for_file: deprecated_member_use

import 'package:bins/components/roundedButton.dart';
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
            const Text(
              "Login",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                // fontFamily: 'Roboto', - dar import!
                fontSize: 70,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              decoration: BoxDecoration(
                color: Colors.lightGreen,
                borderRadius: BorderRadius.circular(29),
              ),
            ),
           //  SizedBox(height: size.height * 0.3),
            /*RoundedButton(
              text: "Login",
              press
            )*/
            Container(
              width: size.width * 0.2,
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
                        return MyHomePage(title: "HomePage");
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
          ],
        ),
    );
  }
}
