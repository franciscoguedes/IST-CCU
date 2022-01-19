// ignore_for_file: deprecated_member_use

import 'package:bins/screens/createAccount/createAccount.dart';
import 'package:bins/screens/homepage/homepage.dart';
import 'package:bins/screens/loginAsGuest/loginAsGuest_screen.dart';
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
              // ignore: prefer_const_literals_to_create_immutables
              children: [ 
                   Padding(
                     padding: const EdgeInsets.only(bottom: 70.0, left: 40),
                     child: Text(
                      "Login",
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
                      Icons.person,
                    //color: Colors.white,
                    
                  ),
                  hintText: "Your Email",
                  border: InputBorder.none,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 3),
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
                      Icons.lock,
                    //color: Colors.white,
                    
                  ),
                  hintText: "Password",
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
                        return MyHomePage(title:"Home");
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
            Row(
               mainAxisAlignment: MainAxisAlignment.center,
              children: [ 
                   Padding(
                     padding: const EdgeInsets.only(top: 80.0),
                     child: Text(
                      "Don't have an account?",
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(color: Colors.grey.shade700),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                      ),
                    ),
                   ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
               Container(
                  margin: EdgeInsets.symmetric(vertical: 40),
                  child: TextButton(
                    // ignore: prefer_const_constructors
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) {
                            return CreateAccount();
                          },
                        ),
                      );
                    }, 
                    child: 
                      Text(
                        "Create Account",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(color: Colors.green),
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(vertical: 20,  horizontal: 40) ),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.green),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10) ,
                            side: BorderSide(color: Colors.green),
                          )
                        )
                      ),
                  )
                ),
                SizedBox(width: 15,),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 40),

                    child: TextButton(
                      // ignore: prefer_const_constructors
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context) {
                              return LoginAsGuestScreen();
                            },
                          ),
                        );
                      }, 
                      child: 
                        Text(
                          "Login as Guest",
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(color: Colors.green),
                            fontSize: 12,
                           fontWeight: FontWeight.w600,
                          ),
                        ),
                        style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(vertical: 20,  horizontal: 40) ),
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.green),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10) ,
                              side: BorderSide(color: Colors.green),
                            )
                          )
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
