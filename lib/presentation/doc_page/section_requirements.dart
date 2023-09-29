import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gstore_documentation/presentation/app_style.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class SectionRequirements extends StatelessWidget {
  SectionRequirements({super.key});

  double textHeight = 2.5;
  double textSize = 17;

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
              'Mobile App',
              style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w900, fontSize: 40, color: Colors.black),
            ),
            SizedBox(
              height: 25,
            ),
            Text('•  Android Studio',
                style: GoogleFonts.dmSans(height: textHeight, fontSize: textSize)),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.green.shade100.withOpacity(.8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    spreadRadius: .5,
                  )
                ],
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                        height: 30,
                        width: 30,
                        child: Lottie.asset('assets/tip.json'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          'TIP',
                          style: AppStyle.dmSans(
                              color: Colors.green.shade900,
                              weight: FontWeight.bold,
                              size: 16),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SelectableText.rich(TextSpan(
                      text: '  You can download android studio via this link: ',
                      style: TextStyle(color: Colors.green.shade900,fontWeight: FontWeight.w500),
                      children: [
                        TextSpan(
                            text: 'Android studio',
                            style: TextStyle(
                                color: Colors.blue,
                                decoration: TextDecoration.underline),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => launch(
                                  'https://developer.android.com/studio?gclid=CjwKCAiAiKuOBhBQEiwAId_sK4X0PLQrES_2pG_S8nPflALgWSOCUEqRRAFpbS4AmR5mXmU6hIhvHxoCfBgQAvD_BwE&gclsrc=aw.ds')),
                      ])),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text('•  Flutter SDK setup (version 3.7.3 Stable)',
                style: GoogleFonts.dmSans(height: textHeight, fontSize: textSize)),
            Text('•  JDK with path setup (only for vs code)',
                style: GoogleFonts.dmSans(height: textHeight, fontSize: textSize)),
            Text('•  Xcode for IPA file build',
                style: GoogleFonts.dmSans(height: textHeight, fontSize: textSize)),
            SizedBox(height: 400,),
            Container(
              height: 80,
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 20,),
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Wrap(
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      const Icon(
                        Icons.copyright,
                        color: Colors.black,
                      ),
                      Text(
                        ' 2023 G Store - Design & Develop by Githubit',
                        style: AppStyle.urbanistSemiBold(
                            color: Colors.black, size: 15),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          launch(
                              'https://www.youtube.com/@githubit1528/videos');
                        },
                        icon: const Icon(
                          MaterialCommunityIcons.youtube,
                          color: Colors.black,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          launch('https://www.facebook.com/githubit');
                        },
                        icon: const Icon(
                          MaterialCommunityIcons.facebook,
                          color: Colors.black,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          launch('https://t.me/githubitnews');
                        },
                        icon: const Icon(
                          Icons.send,
                          color: Colors.black,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          launch('https://www.linkedin.com/company/githubit/');
                        },
                        icon: const Icon(
                          MaterialCommunityIcons.linkedin,
                          color: Colors.black,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          launch('https://githubit.com/');
                        },
                        icon: const Icon(
                          MaterialCommunityIcons.web,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
