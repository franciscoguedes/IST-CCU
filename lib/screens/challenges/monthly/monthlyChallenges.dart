import 'dart:html';

import 'package:bins/components/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:bins/screens/challenges/monthly/components/body.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bins/constants.dart';


class MonthlyChallenges extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
            "Challenges",
            style: GoogleFonts.roboto(
              fontSize: appBarFontTitle,
              fontWeight: FontWeight.w900,
              color: Colors.black
            )),
        backgroundColor: primaryGreen,
        shadowColor: appBarShadowColor,
        iconTheme: const IconThemeData(color:Colors.black, size: 35),

      ),
      body: Body(),
      drawer: Sidebar(currentlySelected: pages.challenges)
      );
  }
}