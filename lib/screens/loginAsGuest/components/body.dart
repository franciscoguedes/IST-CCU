// ignore_for_file: deprecated_member_use

import 'package:bins/screens/homepage/homepage.dart';
import 'package:bins/screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Body extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
               children: [
                 Ink (
                   height: size.height * 0.1,
                    decoration:  ShapeDecoration(
                     color: Colors.white,
                     shape: CircleBorder(),
                    ),
                    child: IconButton(
                      onPressed:(){
                        Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginScreen();
                          },
                        ),
                        );
                      } ,
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                      ),
                      iconSize: 30,
                    ),
                 ),
               ],
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [ 
                   Padding(
                     padding: const EdgeInsets.only( bottom: 100, left: 40),
                     child: Text(
                      "Login" + "\n" + "as Guest",
                      maxLines: 2,
                      style: GoogleFonts.roboto(
                          fontSize: 60,
                          fontWeight: FontWeight.w900,
                      ),
                    ),
                   ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 20),
              width: size.width * 0.84,
              decoration: BoxDecoration(
                color: Colors.lightGreen,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  icon: 
                    Icon(
                      Icons.verified_user,
                  ),
                  hintText: "Tax Number (NIF)",
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              width: size.width * 0.84,
              margin: EdgeInsets.symmetric(vertical: 40),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10) ,
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
                    Text(
                      "Sign in",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(color: Colors.white),
                        fontSize: 15,
                       fontWeight: FontWeight.w600,
                      ),
                    ),
                )
              ),
            ),
            SizedBox(height: 245,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [ 
                   //Padding(
                   //  padding: const EdgeInsets.only(top: 200.0),
                   //  child: 
                     Text(
                      "Already have an account?",
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(color: Colors.grey.shade700),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                      ),
                    ),
                   //),
                   GestureDetector(
                    onTap: () {
                    Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                    );

                    },
                    child: Text(
                      " Sign in",
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(color: Colors.green),
                          fontSize: 12,
                          fontWeight: FontWeight.w800,
                      ),
                    )
                   ),
              ],
            ),
          ],
        ),
    );
  }
}
