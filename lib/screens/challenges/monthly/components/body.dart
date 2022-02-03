
import 'package:bins/components/sidebar.dart';
import 'package:bins/screens/challenges/components/ChallengeItem.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  final List<ChallengeItem> items = [ChallengeItem(heading:"Recycle 20 times", progress:0.5, reward: "0.30€", objective: 20,),
                    ChallengeItem(heading:"Recycle 2kg of batteries", progress: 0.8, reward: "0.05€", objective: 2,),
                    ChallengeItem(heading:"Recycle 5kg of batteries", progress: 0.32, reward: "0.10€", objective: 5,),
                    ChallengeItem(heading:"Recycle 10kg of glass", progress: 0.7, reward: "0.10€", objective: 10,),
                    ChallengeItem(heading:"Recycle 10kg of plastic", progress: 0.5, reward: "0.10€", objective: 10,),
                    ChallengeItem(heading:"Recycle 10kg of paper", progress: 0.9, reward: "0.10€", objective: 10,),
                    ChallengeItem(heading:"Recycle 10kg of batteries", progress: 0.16, reward: "0.20€", objective: 10,),
                    ChallengeItem(heading:"Recycle 25kg of glass", progress: 0.28, reward: "0.20€", objective: 25,),
                    ChallengeItem(heading:"Recycle 25kg of plastic", progress: 0.2, reward: "0.20€", objective: 25,),
                    ChallengeItem(heading:"Recycle 25kg of paper", progress: 0.36, reward: "0.20€", objective: 25,)];

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