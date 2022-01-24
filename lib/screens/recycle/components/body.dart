

import 'package:flutter/material.dart';
import 'map.dart';
import 'package:photo_view/photo_view.dart';

class Body extends StatelessWidget {
  double x = 0;
  double y = 0;


  @override
  Widget build(BuildContext context) {
    PhotoViewController controller = PhotoViewController();
    double width = MediaQuery. of(context). size. width ;
    double height = MediaQuery. of(context). size. height;

    return Stack(
        children: [
          FlutterMap(),
          IgnorePointer(
              ignoring: true,
              child: Center(
                child: Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromRGBO(102, 201, 217, 0.5)
                      ),
                ),
              ),
          ),
          IgnorePointer(
            ignoring: true,
            child: Center(
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border:Border.all(
                      color:Colors.white,
                      width: 2,
                    ),
                    color: Colors.blue),
              ),
            ),
          ),
        ]);
  }
}