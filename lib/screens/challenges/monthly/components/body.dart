
import 'package:bins/components/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(
              "Challenges",
              style: GoogleFonts.roboto(
                fontSize: 50,
                fontWeight: FontWeight.w900,
                color: Colors.black
              )),
          backgroundColor: Colors.white,
          shadowColor: Colors.white,
          iconTheme: const IconThemeData(color:Colors.black, size: 35),

        ),
        drawer: Sidebar(currentlySelected: pages.challenges,),
      );
  }
}