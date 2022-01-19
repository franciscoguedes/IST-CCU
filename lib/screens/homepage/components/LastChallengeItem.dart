import 'package:bins/components/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:bins/screens/homepage/homepage.dart';


/// A ListItem that contains data to display a heading.
class LastChallengeItem implements HomePageItem {
  final Color backgroundColor = new Color(0xFFA5D6A7);

  @override
  Widget buildLastChallengeItem(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      margin: EdgeInsets.symmetric(vertical: 5),
      child:Column(
        children: [
          Row(
            children:[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child:Text(
                    "Challenges",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(color: Colors.black),
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    )
              ),
              )]
          ),
          Row(
            children: [
             Container(
                 width: size.width * 0.9 ,
                 margin: EdgeInsets.symmetric(vertical: 20),
                 alignment: Alignment.center,
                 child: Container(),
             )
            ],
          )
        ],
      )
    );
  }
  @override
  Widget buildQuoteItem(BuildContext context) => const SizedBox.shrink();
  @override
  Widget buildTotalsItem(BuildContext context) => const SizedBox.shrink();
  @override
  Widget buildChartItem(BuildContext context) => const SizedBox.shrink();
}


