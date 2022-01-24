import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:photo_view/photo_view.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class FlutterMap extends StatelessWidget {

  static PhotoViewController controller = PhotoViewController();

  @override
  Widget build(BuildContext context) {
    PhotoViewController controller = PhotoViewController();
    double x = 0;
    double y = 0;
    double width = MediaQuery
        .of(context)
        .size
        .width;
    double height = MediaQuery
        .of(context)
        .size
        .height;


    void tapDown(TapDownDetails details) {
        x = details.localPosition.dx-width/2;
        y = details.localPosition.dy + 57/2 - height/2;
        debugPrint("converted value" + x.toString() + "," + y.toString());
        x = x + controller.position.dx;
        y = y + controller.position.dy;
        debugPrint("final converted value" + x.toString() + "," + y.toString());
    }

    return GestureDetector(
      onTapDown: tapDown,
      child: Stack(
          children: [
            PhotoView(
              imageProvider: AssetImage("mapa.png"),
              enableRotation: false,
              minScale: PhotoViewComputedScale.contained * 6,
              maxScale: PhotoViewComputedScale.contained * 10,
              initialScale: PhotoViewComputedScale.contained * 6,
              controller: controller,
            ),
            Positioned(
              child: FloatingActionButton.extended(
                onPressed: () {
                  debugPrint("recycle position" + controller.position.toString());
                },
                label: const Text('Recycle'),
                icon: const Icon(MdiIcons.recycle),
                backgroundColor: Colors.lightGreen,
              ),
              bottom: height * 0.025,
              right: width * 0.05,
            ),
          ]),
    );
  }
}