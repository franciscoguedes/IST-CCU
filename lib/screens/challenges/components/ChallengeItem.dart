import 'package:flutter/material.dart';

class ChallengeItem extends StatelessWidget {
  String heading = "";
  double progress = 0;   // this value is a value between 0 and 1
  String reward = "";
  ChallengeItem({Key? key, required this.heading, required this.progress, required this.reward}) : super(key: key);

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
              debugPrint(this.heading);
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

