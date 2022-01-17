// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  // final Function press;
  final Color color, textColor;
  const RoundedButton({
    Key? key, 
    this.text = "login", 
    this.color = Colors.green, 
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.2,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29) ,
        child: FlatButton(
          // ignore: prefer_const_constructors
          padding: EdgeInsets.symmetric(vertical: 20,  horizontal: 40) ,
          color: Colors.green,
          onPressed: () {}, 
          child: 
           Text(
            text,
            style: TextStyle(color: textColor),
            ),
        )
      ),
    );
  }
}
