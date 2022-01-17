import 'package:bins/screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Center(
        child: SizedBox(
          width: 428,
          height: 926,
          child: MyApp(
          )
        )
      )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
        return MaterialApp(
          title: 'Bins',
          theme: ThemeData(
            // This is the theme of your application.
            //
            // Try running your application with "flutter run". You'll see the
            // application has a blue toolbar. Then, without quitting the app, try
            // changing the primarySwatch below to Colors.green and then invoke
            // "hot reload" (press "r" in the console where you ran "flutter run",
            // or simply save your changes to "hot reload" in a Flutter IDE).
            // Notice that the counter didn't reset back to zero; the application
            // is not restarted.
            primarySwatch: Colors.green,
            scaffoldBackgroundColor: Colors.white,
          ),
          home: LoginScreen(),
          // home: const MyHomePage(title: 'Flutter Demo Home Page'),
        );
      }
}

