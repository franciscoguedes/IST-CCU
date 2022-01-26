import 'dart:math';
import 'bin.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:photo_view/photo_view.dart';
import 'package:bins/screens/recycle/components/qrcode.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class FlutterMap extends StatelessWidget {
  PhotoViewController controller = PhotoViewController();

  final List<Bin> bins = [Bin(65.0, 70.0, "Pao de Acucar", 200, 60, false),
                          Bin(84.0, -265.0, "Pao de Acucar11", 200, 60, false),
                          Bin(-615.0, -203.0, "Pao de Acucar2", 200, 60, false),
                          Bin(4.0, 485.0, "Pao de Acucar3", 200, 60, false),
                          Bin(552.0, -445.0, "Pao de Acucar4", 200, 60, false),
                          Bin(553.0, 114.0, "Pao de Acucar5", 200, 60, false),
                          Bin(-487.0, 154.0, "Pao de Acucar6", 200, 60, false)];

  @override
  Widget build(BuildContext context) {
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

    double calculateDistance(x1, y1, x2, y2){
      double distance = sqrt(pow((x1 - x2),2) + pow((y1 - y2),2));
      return distance;
    }

    bool checkBinRecycle(Bin bin){
      if (calculateDistance(controller.position.dx, controller.position.dy, bin.x, bin.y) < 35){
        debugPrint("Vou reciclar no " + bin.address);
        showDialog(
          context: context,
          builder: (BuildContext context) => _buildRecyclePopupDialog(context, bin),
        );
        return true;
      }
      return false;
    }

      void checkRecycle() {
        for (Bin bin in bins) {
          checkBinRecycle(bin);
        }
      }

    void checkClick(x, y){
      for (Bin bin in bins){
        if (calculateDistance(x, y, bin.x, bin.y) < 20){
          if(!(calculateDistance(controller.position.dx, controller.position.dy, bin.x, bin.y) < 35)) {
            debugPrint("Cliquei no " + bin.address);
            showDialog(
              context: context,
              builder: (BuildContext context) =>
                  _buildDetailsPopupDialog(context, bin),
            );
          }
          else {
            checkBinRecycle(bin);
          }
        }
      }
    }



    void tapDown(TapDownDetails details) {
        x = details.localPosition.dx - width/2;
        y = details.localPosition.dy + 57/2 - height/2;
        x = controller.position.dx - x;
        y = controller.position.dy - y;
        debugPrint("final converted value" + x.toString() + "," + y.toString());
        checkClick(x, y);
    }

    return GestureDetector(
      onTapDown: tapDown,
      child: Stack(
          children: [
            PhotoView(
              imageProvider: AssetImage("recyclemap.png"),
              enableRotation: false,
              minScale: PhotoViewComputedScale.contained * 5,
              maxScale: PhotoViewComputedScale.contained * 5,
              initialScale: PhotoViewComputedScale.contained * 5,
              controller: controller,
            ),
            Positioned(
              child: FloatingActionButton.extended(
                onPressed: () {
                  checkRecycle();
                  debugPrint(controller.position.dx.toString());
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

  Widget _buildDetailsPopupDialog(BuildContext context, Bin bin) {
    return AlertDialog(
      title: Text("Details"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Address: " +
              (bin.address).toString() + "\n" +
              "Has E-Waste Bin: " + (bin.eWaste ? "Yes" : "No") + "\n" +
              "Current Capacity: " +
              (bin.capacity / bin.fullCapacity * 100).toInt().toString() + "% \n"
          )
        ],
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          textColor: Colors.deepPurple,
          child: const Text('CLOSE'),
        )
      ],
    );
  }
  Widget _buildRecyclePopupDialog(BuildContext context, Bin bin) {
    return AlertDialog(
      title: Text("Recycle"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Address: " +
              (bin.address).toString() + "\n" +
              "Has E-Waste Bin: " + (bin.eWaste ? "Yes" : "No") + "\n" +
              "Current Capacity: " +
              (bin.capacity / bin.fullCapacity * 100).toInt().toString() + "% \n"
          )
        ],
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const QRViewExample(),
            ));
          },
          textColor: Colors.deepPurple,
          child: const Text('RECYCLE'),
        )
      ],
    );
  }
}