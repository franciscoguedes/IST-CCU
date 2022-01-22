import 'package:bins/screens/challenges/monthly/monthlyChallenges.dart';
import 'package:bins/screens/loginScreen/loginScreen.dart';

import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
        return MaterialApp(
          title: 'Bins',
          theme: ThemeData(
            primarySwatch: Colors.green,
            scaffoldBackgroundColor: Colors.white,
          ),
          home: LoginScreen(),
        );
      }
}
