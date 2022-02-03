import 'dart:math';
import 'bin.dart';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:photo_view/photo_view.dart';
import 'package:bins/screens/recycle/components/qrcode.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class FlutterMap extends StatelessWidget {
  PhotoViewController controller = PhotoViewController();

  final List<Bin> bins = [Bin(65.0, 70.0, "Avenida Almirante Reis, 70", 200, Random().nextInt(150) , false),
                          Bin(84.0, -265.0, "Avenida Almirante Reis, 171", 200, Random().nextInt(150), true),
                          Bin(-615.0, -203.0, "Rotunda Vale de Chelas", 200, Random().nextInt(150), false),
                          Bin(4.0, 485.0, "Praça Francisco Sá Carneiro", 200, Random().nextInt(150), true),
                          Bin(552.0, -445.0, "Rua de Dona Estefânia", 200, Random().nextInt(150), false),
                          Bin(553.0, 114.0, "Rua Bacelar e Silva", 200, Random().nextInt(150), true),
                          Bin(-487.0, 154.0, "Rotunda Olaias", 200, Random().nextInt(150), false)];

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

  Widget _buildFinishRecycleDialog(BuildContext context, String result) {
    return AlertDialog(
      title: Text("Recycling Complete"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("You recycled: " +
              result.toString() + "\n"
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
          onPressed: () async {
            final result = await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const QRViewExample(),),
            );
            if(result != null){
              Navigator.of(context).pop();
              showDialog(
                context: context,
                builder: (BuildContext context) => _buildFinishRecycleDialog(context, result),
              );
            }
          },
          textColor: Colors.deepPurple,
          child: const Text('RECYCLE'),
        )
      ],
    );
  }
}