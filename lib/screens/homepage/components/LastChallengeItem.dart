import 'package:bins/components/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bins/screens/challenges/components/ChallengeItem.dart';
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
                 alignment: Alignment.center,
                 child: ChallengeItem(heading:"Challenge 1", progress:0, reward: "10€", page: pages.homepage, objective: 10,),
             )
            ],
          )
        ],
      )
    );

    ChallengeItem getClosestToCompletionChallenge(BuildContext context){

    }
  }
  @override
  Widget buildQuoteItem(BuildContext context) => const SizedBox.shrink();
  @override
  Widget buildTotalsItem(BuildContext context) => const SizedBox.shrink();
  @override
  Widget buildChartItem(BuildContext context) => const SizedBox.shrink();
}


