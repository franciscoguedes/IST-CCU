
import 'package:bins/components/sidebar.dart';
import 'package:bins/screens/challenges/components/ChallengeItem.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  final List<ChallengeItem> items = [ChallengeItem(heading:"Challenge 1", progress:0.5, reward: "10€", objective: 15,),
                    ChallengeItem(heading:"Challenge 2", progress: 0.3, reward: "0.10€", objective: 15,),
                    ChallengeItem(heading:"Challenge 3", progress: 0, reward: "0.10€", objective: 15,),
                    ChallengeItem(heading:"Challenge 4", progress: 0.6, reward: "0.10€", objective: 10,),
                    ChallengeItem(heading:"Challenge 5", progress: 0, reward: "0.10€", objective: 10,),
                    ChallengeItem(heading:"Challenge 6", progress: 0, reward: "0.10€", objective: 10,),
                    ChallengeItem(heading:"Challenge 7", progress: 0, reward: "0.10€", objective: 10,),
                    ChallengeItem(heading:"Challenge 8", progress: 0, reward: "0.10€", objective: 10,),
                    ChallengeItem(heading:"Challenge 9", progress: 0, reward: "0.10€", objective: 10,),
                    ChallengeItem(heading:"Challenge 10", progress: 0, reward: "0.10€", objective: 10,)];

  Body({Key? key}) : super(key: key);

  ChallengeItem getMostProgressedChallenge(){
    double progress = 0;
    ChallengeItem challengeItem = items[0];
    for (ChallengeItem challenge in items){
      if (progress < challenge.progress){
        progress = challenge.progress;
        challengeItem = challenge;
      }
    }
    return ChallengeItem(heading: challengeItem.heading, progress: challengeItem.progress, reward: challengeItem.reward, objective: challengeItem.objective, page: pages.homepage);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: items.length, itemBuilder: (BuildContext context, int index){
      if (index == 0) {
        // return the header
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Text("February", style: GoogleFonts.roboto(
                fontSize: 40,
                fontWeight: FontWeight.w900,
                color: Colors.black
              )),
        );
      }
      index -= 1;
      return Padding(
          padding: const EdgeInsets.all(10.0),
          child: items[index],
          );
      },
    );
  }
}