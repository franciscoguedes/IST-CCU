import 'package:bins/components/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:bins/screens/homepage/homepage.dart';


/// A ListItem that contains data to display a heading.
class QuoteItem implements HomePageItem {
  final Color backgroundColor = Colors.lightGreen; //new Color(0xFFA5D6A7);

  @override
  Widget buildQuoteItem(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      margin: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: [
          Row(
            children:[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child:Text(
                    "Fun fact of the day",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(color: Colors.black),
                      fontSize: 20,
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
                 child: DecoratedBox(
                    decoration:BoxDecoration(color:backgroundColor, borderRadius:BorderRadius.circular(10)),
                    child:Container(
                      margin:EdgeInsets.symmetric(vertical: 15),
                      child:Text(
                        "If we recycled all newspapers, we could save over 250 million trees each and every year.",
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(color: Colors.black),
                          fontSize: 16,
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
  Widget buildChartItem(BuildContext context) => const SizedBox.shrink();
}


