
import 'package:bins/screens/challenges/components/ChallengeItem.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Body extends StatelessWidget {
  final List<ChallengeItem> items = [ChallengeItem(heading:"Challenge 1", progress:0.5, reward: "10€"),
                    ChallengeItem(heading:"Challenge 2", progress: 0.1, reward: "0.10€",),
                    ChallengeItem(heading:"Challenge 3", progress: 0.2, reward: "0.10€",),
                    ChallengeItem(heading:"Challenge 4", progress: 0.2, reward: "0.10€",),
                    ChallengeItem(heading:"Challenge 5", progress: 0.2, reward: "0.10€",),
                    ChallengeItem(heading:"Challenge 6", progress: 0.2, reward: "0.10€",),
                    ChallengeItem(heading:"Challenge 7", progress: 0.2, reward: "0.10€",),
                    ChallengeItem(heading:"Challenge 8", progress: 0.2, reward: "0.10€",),
                    ChallengeItem(heading:"Challenge 9", progress: 0.2, reward: "0.10€",)];

  Body({Key? key}) : super(key: key);

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