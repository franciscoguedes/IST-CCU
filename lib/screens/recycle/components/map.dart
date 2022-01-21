import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class FlutterMap extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
        child: PhotoView(
          imageProvider: AssetImage("mapa.png"),
          enableRotation: false,
          minScale: PhotoViewComputedScale.contained * 6,
          maxScale: PhotoViewComputedScale.contained * 15,
          initialScale: PhotoViewComputedScale.contained * 10,
        )
    );
  }
}