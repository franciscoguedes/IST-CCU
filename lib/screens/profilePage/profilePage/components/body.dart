
import 'package:bins/components/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bins/screens/profilePage/editProfile/editProfilePage.dart';


class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(primary: Colors.green, textStyle: const TextStyle(fontSize: 15));

    return Column(
        children: [
          Container(height: 70,
            width: 350,
            alignment: Alignment.centerRight,
            child: IconButton(
              icon: const Icon(Icons.create_outlined),
              alignment: Alignment.topRight,
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) {
                      return EditProfilePage();
                    },
                  ),
                );
              },
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            height: 170,
            child: SizedBox(
            height: 115,
            width: 115,
            child: Stack(
              fit: StackFit.expand,
              children: [
              CircleAvatar(backgroundImage: AssetImage("bart.png"),
              ),
            ],
          ),
          ),
          ),
          Container(
          child: SizedBox(height: 70,
          width: 300,
            child: RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan( text: "Name\n",
                style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                text: "Bart Simpson\n",
                style: TextStyle(),
                ),
                ],
              ),
            ),
    ),
    ),
          Divider(),
          SizedBox(height: 70,
            width: 300,
            child: RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan( text: "Address\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Av. Rovisco Pais, 1049-001 Lisboa\n",
                    style: TextStyle(
    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(),
          SizedBox(height: 70,
            width: 300,
            child: RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan( text: "NIF\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "123456789\n",
                    style: TextStyle(),
                  ),
                ],
              ),
            ),
          ),
          Divider(),
          SizedBox(height: 70,
            width: 300,
            child: RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan( text: "Charity\n",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Liga Portuguesa Contra o Cancro\n",
                    style: TextStyle(),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            style: style,
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => _buildPopupDialog(context),
              );
            },
            child: const Text('+ REQUEST RECYCLING BINS'),
          ),
    ],
    );
  }
}

Widget _buildPopupDialog(BuildContext context) {
  return new AlertDialog(
    title: const Text('Bin Request Confirmation'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Your Address:\n"
            "Av. Rovisco Pais, 1049-001 Lisboa\n\n"
            "Estimated Delivery Date:\n"
            "22-02-2022"),
      ],
    ),
    actions: <Widget>[
      new FlatButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        textColor: Colors.red,
        child: const Text('CANCEL'),
      ),
      new FlatButton(
        onPressed: () {
          Navigator.of(context).pop();
          showDialog(
            context: context,
            builder: (BuildContext context) => _buildPopupDialogRequest(context),
          );
        },
        textColor: Colors.deepPurple,
        child: const Text('CONFIRM'),
      )
    ],
  );
}

Widget _buildPopupDialogRequest(BuildContext context) {
  return new AlertDialog(
    title: const Text('Request Complete'),
    content: new Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text("Your recycling bin request was completed and the delivery should arrive at 22 december 2021."),
      ],
    ),
    actions: <Widget>[
      new FlatButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        textColor: Colors.deepPurple,
        child: const Text('CLOSE'),
      ),
    ],
  );
}