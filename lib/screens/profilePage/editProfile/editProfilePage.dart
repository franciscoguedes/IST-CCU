import 'dart:html';

import 'package:bins/constants.dart';
import 'package:flutter/material.dart';
import 'components/body.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bins/components/sidebar.dart';


class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
            "Edit Profile",
            style: GoogleFonts.roboto(
                fontSize: 50,
                fontWeight: FontWeight.w900,
                color: Colors.black
            )),
        backgroundColor: primaryGreen,
        shadowColor: Colors.white,
        iconTheme: const IconThemeData(color:Colors.black, size: 35),

      ),
      body: EditPage(),
    );
  }
}
