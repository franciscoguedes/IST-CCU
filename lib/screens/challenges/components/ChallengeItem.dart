import 'package:bins/components/sidebar.dart';
import 'package:bins/screens/challenges/monthly/monthlyChallenges.dart';
import 'package:flutter/material.dart';

class ChallengeItem extends StatelessWidget {
  String heading = "";
  double progress = 0;   // this value is a value between 0 and 1
  String reward = "";
  pages page = pages.challenges;

  ChallengeItem({Key? key, required this.heading, required this.progress, required this.reward, this.page = pages.challenges}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: SizedBox(
        height: 100,
        width: size.width * 0.9,
        child: Card(
          child: InkWell(
            splashColor: Colors.green.withAlpha(90),
            onTap: () {
              if (this.page == pages.challenges) {
                debugPrint(this.heading);
              }
              else if (this.page == pages.homepage) {
                Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MonthlyChallenges();
                      },
                    ),
                );
              }
            },
            child: Column(children: <Widget>[
              ListTile(
                title: Center(child: Text(this.heading, style: TextStyle(fontSize: 20),)),
                trailing: Icon(Icons.info_outline, size: 24),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                height: 15,   // height da linha de progress
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  child: LinearProgressIndicator(value: this.progress),
                ),
              ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

