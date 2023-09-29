import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gstore_documentation/presentation/app_style.dart';

class SectionCustomization extends StatelessWidget {
  SectionCustomization({super.key});

  double textHeight = 1.5;
  double textSize = 17;
  double mainTextSize = 25;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Customization',
              style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w900,
                  fontSize: 40,
                  color: Colors.black),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Change category, filter, products and etc.',
              style:
                  AppStyle.dmSans(weight: FontWeight.bold, size: mainTextSize),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '• Changing data is very easy. To change data, go to "assets" folder and open "data" directory, after that pick any app folder, which you want to change data',
              style: TextStyle(fontSize: textSize, height: textHeight),
            ),
            SizedBox(height: 10,),
            SelectableText.rich(
              TextSpan(
                  text:
                      '',
                  style: TextStyle(
                    height: textHeight,
                    fontSize: textSize,
                  ),
                  children: [
                    TextSpan(text: 'For example:  ',style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(text: 'In order to change categories in "GBike" app, you should go to '),
                    TextSpan(
                      text: ' assets/data/bike_data  ',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: 'folder, and open'),
                    TextSpan(
                      text: ' category.json ',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
            ),
            SelectableText.rich(
              TextSpan(
                text:
                    'In this file you can edit, delete and create new category. Do note that to create a category you should have an image in ',
                style: TextStyle(height: textHeight, fontSize: textSize),
                children: [
                  TextSpan(
                      text: ' assets/png/category/  ',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold)),
                  TextSpan(text: 'folder')
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: width * 0.7,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.blue),
              child: Image.asset(
                'assets/change_category.png',
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              'Change App Color',
              style:
                  AppStyle.dmSans(weight: FontWeight.bold, size: mainTextSize),
            ),
            SizedBox(
              height: 20,
            ),
            SelectableText.rich(TextSpan(
                text: '• Open ',
                style: TextStyle(fontSize: textSize, height: textHeight),
                children: [
                  TextSpan(
                    text: ' /lib/presentation/app_style.dart ',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: 'file and change colors as you want.',
                  )
                ])),
            SizedBox(
              height: 20,
            ),
            Container(
              width: width * 0.7,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.blue),
              child: Image.asset(
                'assets/app_style.png',
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              'Change App Font',
              style:
                  AppStyle.dmSans(weight: FontWeight.bold, size: mainTextSize),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '• in our apps, google font package is installed. You may change app fonts easily by selecting new fonts',
              style: TextStyle(fontSize: textSize, height: textHeight),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: width * 0.7,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.blue),
              child: Image.asset(
                'assets/app_style_font.png',
              ),
            ),
            SizedBox(
              height: 200,
            )
          ],
        ),
      ),
    );
  }
}
