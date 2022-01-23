import 'package:bins/components/sidebar.dart';
import 'package:bins/screens/homepage/components/QuoteItem.dart';
import 'package:bins/screens/homepage/components/LastChallengeItem.dart';
import 'package:bins/screens/homepage/components/TotalsItem.dart';
import 'package:bins/screens/homepage/components/LineChartProgressItem.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return _MyHomePageWidget();
  }
}
class _MyHomePageWidget extends StatelessWidget {
  List<HomePageItem> items = [QuoteItem(), LastChallengeItem(), TotalsItem(), LineChartProgressItem()];
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
            "Home",
            style: GoogleFonts.roboto(
              fontSize: 50,
              fontWeight: FontWeight.w900,
              color: Colors.black
            )),
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        iconTheme: const IconThemeData(color:Colors.black, size: 35),

      ),
      body: ListView.builder(
        // Let the ListView know how many items it needs to build.
        itemCount: items.length,
        // Provide a builder function. This is where the magic happens.
        // Convert each item into a widget based on the type of item it is.
        itemBuilder: (context, index) {
          final item = items[index];
          switch(index){
            case 0:
              return item.buildQuoteItem(context);
            case 1:
              return item.buildLastChallengeItem(context);
            case 2:
              return item.buildTotalsItem(context);
            case 3:
              return item.buildChartItem(context);
            default:
              return item.buildQuoteItem(context);
          }
        },
      ),
      drawer: Sidebar(currentlySelected: pages.homepage),
    );
  }
}
/// The base class for the different types of items the list can contain.
abstract class HomePageItem {
  /// The subtitle line, if any, to show in a list item.
  Widget buildQuoteItem(BuildContext context);
  Widget buildLastChallengeItem(BuildContext context);
  Widget buildTotalsItem(BuildContext context);
  Widget buildChartItem(BuildContext context);
}
