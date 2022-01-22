
import 'package:bins/components/sidebar.dart';
import 'package:bins/screens/profilePage/profilePage/profilePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EditPage extends StatefulWidget {
  @override
  _EditPage createState() => _EditPage();
}

class _EditPage extends State<EditPage> {

  final items = ['Liga Portuguesa Contra o Cancro', 'Associação Portuguesa de Paralisia Cerebral.',
    'Associação Ajuda de Berço ', 'Associação Abraço'];

  String? value = 'Liga Portuguesa Contra o Cancro';

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
    ElevatedButton.styleFrom(primary: Colors.green, textStyle: const TextStyle(fontSize: 15));

    return Column(
        children: [
          Container(height: 40,),
          Stack(
            children: [
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
          Positioned(
            bottom:50,
            left: 220,
            child: Container(
            height: 30,
              width: 30,
              decoration: BoxDecoration(
                shape:BoxShape.circle,
                border: Border.all(
                  width: 3,
                  color: Colors.white
                ),
                color: Colors.green,
              ),
            child: Icon(Icons.camera_enhance, color: Colors.white, size: 15,)
              ),
          ),
    ]
          ),
          Container(
            width: 300,
            height: 70,
            child: TextField(
                  decoration: InputDecoration(
                    labelText: "Full Name",
                    hintText: "Bart Simpson"
                  ),

                ),
          ),
          Container(
            width: 300,
            height: 80,
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Address",
                  hintText: "Av. Rovisco Pais, 1049-001 Lisboa"
              ),

            ),
          ),
          SizedBox(height: 70,
            width: 300,
            child: RichText(
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan( text: "NIF\n",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
                  ),
                  TextSpan(
                    text: "123456789\n",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Container(width: 300,
                  child:
                  RichText(textAlign: TextAlign.left,
                  text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <TextSpan>[
                  TextSpan( text: "Charity\n",
                  style: TextStyle(fontWeight: FontWeight.bold),
                  ),],),),
              ),
              Container(height: 20,
                width: 300,
                  alignment: Alignment.topCenter,
                  child: DropdownButtonHideUnderline(
                  child: Container(
                      alignment: Alignment.topCenter,
                      child: DropdownButton<String>(
                            isExpanded: true,
                            value: value,
                            items: items.map(buildMenuItem).toList(),
                            onChanged: (value) => setState(() => this.value = value),
                  )
                  )
                )
              ),
          ]),
          Container(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: TextButton(
                    // ignore: prefer_const_constructors
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ProfilePage();
                          },
                        ),
                      );
                    },
                    child:
                    Text(
                      "CANCEL",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(color: Colors.red),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(vertical: 20,  horizontal: 40) ),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.red),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10) ,
                              side: BorderSide(color: Colors.red),
                            )
                        )
                    ),
                  )
              ),
              Container(width: 30,),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 20),

                  child: TextButton(
                    // ignore: prefer_const_constructors
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) {
                            return ProfilePage();
                          },
                        ),
                      );
                    },
                    child:
                    Text(
                      "SAVE",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(color: Colors.green),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(vertical: 20,  horizontal: 40) ),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.green),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10) ,
                              side: BorderSide(color: Colors.green),
                            )
                        )
                    ),
                  )
              ),

            ],
          ),
    ],
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
    value: item,
    child: Text(
      item,
      style: TextStyle(fontSize: 15),
    )
  );
}
