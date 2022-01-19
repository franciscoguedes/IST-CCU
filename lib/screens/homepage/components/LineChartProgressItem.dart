import 'package:bins/components/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:bins/screens/homepage/homepage.dart';


/// A ListItem that contains data to display a heading.
class LineChartProgressItem implements HomePageItem {
  final Color backgroundColor = new Color(0xFFA5D6A7);

  @override
  Widget buildChartItem(BuildContext context) {
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
                    "Your progress",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(color: Colors.black),
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    )
              ),
              )]
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Container(
                 width: size.width * 0.9 ,
                 margin: EdgeInsets.symmetric(vertical: 20),
                 child:DecoratedBox(
                    decoration:BoxDecoration(color:backgroundColor, borderRadius:BorderRadius.circular(10)),
                    child:Container(
                      margin:EdgeInsets.symmetric(vertical: 15),
                      child:Text(
                        "Sabias que com a quantidade que ja reciclaste a terra tornou-se plana?",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(color: Colors.black),
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center
                      ),
                    )
                 )
             )
            ],
          )
        ],
      )
    );
  }
  @override
  Widget buildLastChallengeItem(BuildContext context) => const SizedBox.shrink();
  @override
  Widget buildTotalsItem(BuildContext context) => const SizedBox.shrink();
  @override
  Widget buildQuoteItem(BuildContext context) => const SizedBox.shrink();
}


