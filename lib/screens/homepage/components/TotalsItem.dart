
import 'package:bins/components/sidebar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:bins/screens/homepage/homepage.dart';


/// A ListItem that contains data to display a heading.
class TotalsItem implements HomePageItem {
  final Color plasticColor = fromCssColor('#FEC605');
  final Color glassColor = fromCssColor('#049665');
  final Color paperColor = fromCssColor('#0396CC');
  final Color batteriesColor = fromCssColor('#F60101');
  final Color TotalsColor = fromCssColor('#7A9F80');
  final double sizeMaterialsTitle = 15;
  final double sizeWeightTitle = 20;
  //this box creates space between the material and
  final double sizedBoxHeight = 25;

  //  ESTES VALORES TEM DE SER PASSADOS QUANDO INCIALIZAMOS ESTA CLASSE
  final int kgPlastic = 32;
  final int kgGlass = 23;
  final int kgPaper = 22;
  final int kgBatteries = 2;
  final int kgTotal = 80;
  final double rewarded = 20.1;

  @override
  Widget buildTotalsItem(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      margin: EdgeInsets.symmetric(vertical: 5),
      child:Column(
        children: [
          Row(
            children:[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child:Text(
                    "Challenges",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(color: Colors.black),
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    )
              ),
              )]
          ),// Item Title
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: size.width * 0.8 ,
                child: GridView.count(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 18,
                  mainAxisSpacing: 18,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(borderRadius:BorderRadius.circular(27), color:plasticColor),
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("PLASTIC",
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(color: Colors.black),
                                fontSize: sizeMaterialsTitle,
                                fontWeight: FontWeight.w400,
                              ),
                              textAlign: TextAlign.center,
                            )],
                        ),
                          SizedBox(height: sizedBoxHeight),
                          Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Text("$kgPlastic kg",
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(color: Colors.black),
                                fontSize: sizeWeightTitle,
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.center,
                            )]
                        )
                        ],)

                    ),
                    Container(
                      decoration: BoxDecoration(borderRadius:BorderRadius.circular(27), color:glassColor),
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("GLASS",
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(color: Colors.black),
                                  fontSize: sizeMaterialsTitle,
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.center,
                              )],
                          ),
                          SizedBox(height: sizedBoxHeight),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                Text("$kgGlass kg",
                                  style: GoogleFonts.roboto(
                                    textStyle: TextStyle(color: Colors.black),
                                    fontSize: sizeWeightTitle,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  textAlign: TextAlign.center,
                                )]
                          )
                        ],)
                    ),
                    Container(
                      decoration: BoxDecoration(borderRadius:BorderRadius.circular(27), color:paperColor),
                      padding: const EdgeInsets.all(8),
                      child:                 Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("PAPER",
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(color: Colors.black),
                                  fontSize: sizeMaterialsTitle,
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.center,
                              )],
                          ),
                          SizedBox(height: sizedBoxHeight),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                Text("$kgPaper kg",
                                  style: GoogleFonts.roboto(
                                    textStyle: TextStyle(color: Colors.black),
                                    fontSize: sizeWeightTitle,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  textAlign: TextAlign.center,
                                )]
                          )
                        ],)
                    ),
                    Container(
                      decoration: BoxDecoration(borderRadius:BorderRadius.circular(27), color:batteriesColor),
                      padding: const EdgeInsets.all(8),
                      child:                 Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("BATTERIES",
                                style: GoogleFonts.roboto(
                                  textStyle: TextStyle(color: Colors.black),
                                  fontSize: sizeMaterialsTitle,
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.center,
                              )],
                          ),
                          SizedBox(height: sizedBoxHeight),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children:[
                                Text("$kgBatteries kg",
                                  style: GoogleFonts.roboto(
                                    textStyle: TextStyle(color: Colors.black),
                                    fontSize: sizeWeightTitle,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  textAlign: TextAlign.center,
                                )]
                          )
                        ],)
                    ),
                  ],
                ),
              )
            ],
          ),// Grid Item
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
              Container(
                width: size.width*0.7,
                height: 100,
                decoration: BoxDecoration(borderRadius:BorderRadius.circular(27), color:TotalsColor),
                //padding: const EdgeInsets.all(8),
                child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('RECYCLED', style: GoogleFonts.roboto(
                              textStyle: TextStyle(color: Colors.black,),
                              fontSize: sizeMaterialsTitle,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline,
                            ),
                              textAlign: TextAlign.center,

                            ),
                            Text('$kgTotal kg', style: GoogleFonts.roboto(
                              textStyle: TextStyle(color: Colors.black,),
                              fontSize: sizeWeightTitle,
                              fontWeight: FontWeight.w600,
                            ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child:Text('TOTALS', style: GoogleFonts.roboto(
                                textStyle: TextStyle(color: Colors.black,),
                                fontSize: sizeMaterialsTitle,
                                fontWeight: FontWeight.w400,
                              ),
                                textAlign: TextAlign.center,
                              ),
                              padding: EdgeInsets.all(8),
                            )

                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('REWARDED', style: GoogleFonts.roboto(
                              textStyle: TextStyle(color: Colors.black,),
                              fontSize: sizeMaterialsTitle,
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration.underline,
                            ),
                              textAlign: TextAlign.center,
                            ),
                            Text('$rewarded €', style: GoogleFonts.roboto(
                              textStyle: TextStyle(color: Colors.black,),
                              fontSize: sizeWeightTitle,
                              fontWeight: FontWeight.w600,
                            ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        )
                      ],
                    ),
              ),
            ]
          )// Last Item occupies two positions of the above grid but it is not really part of the grid
        ],
      )
    );
  }
  @override
  Widget buildLastChallengeItem(BuildContext context) => const SizedBox.shrink();
  @override
  Widget buildQuoteItem(BuildContext context) => const SizedBox.shrink();
  @override
  Widget buildChartItem(BuildContext context) => const SizedBox.shrink();
}


