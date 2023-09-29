import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gstore_documentation/presentation/app_style.dart';
import 'package:url_launcher/url_launcher.dart';

class SectionRelease extends StatefulWidget {
  SectionRelease({super.key});

  @override
  State<SectionRelease> createState() => _SectionReleaseState();
}

class _SectionReleaseState extends State<SectionRelease> {
  double textHeight = 1.5;
  FToast? fToast;
  double textSize = 17;

  double mainTextSize = 25;

  @override
  void initState() {
    super.initState();
    fToast = FToast();
    fToast!.init(context);
  }
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'App build & release',
            style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w900, fontSize: 40, color: Colors.black),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Build for Android',
            style: AppStyle.dmSans(weight: FontWeight.bold, size: mainTextSize),
          ),
          SizedBox(
            height: 20,
          ),
          Text('For debug build you can run command:',style: TextStyle(fontSize: textSize,height: textHeight),),
          SizedBox(height: 15,),
          Container(
            decoration: BoxDecoration(
                color: Colors.blueGrey.shade900,
                borderRadius: BorderRadius.circular(7)),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'flutter build apk',
                    style: TextStyle(color: Colors.grey),
                    overflow: TextOverflow.clip,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.copy,
                      color: Colors.grey,
                    ),
                    onPressed: ()async {
                      await Clipboard.setData(ClipboardData(text: 'flutter build apk'),).whenComplete(() => fToast?.showToast(
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              decoration: BoxDecoration(
                                  color: Colors.blueGrey.shade900,
                                  borderRadius:
                                  BorderRadius.circular(5)),
                              child: Text(
                                'Text copied to ClipBoard',
                                style: TextStyle(color: Colors.white),
                              )),
                          gravity: ToastGravity.BOTTOM_RIGHT));
                    },
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 15,),
          Text('You will get a larger merged apk with this. But you can split them with this command:',style: TextStyle(fontSize: textSize,height: textHeight),),
          SizedBox(height: 15,),
          Container(
            decoration: BoxDecoration(
                color: Colors.blueGrey.shade900,
                borderRadius: BorderRadius.circular(7)),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: double.infinity,
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  alignment: WrapAlignment.spaceBetween,
                  children: [
                    Text(
                      'flutter build apk --target-platform android-arm,android-arm64,android-x64 --split-per-abi',
                      style: TextStyle(color: Colors.grey,height: 2),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.copy,
                        color: Colors.grey,
                      ),
                      onPressed: () async{
                        await Clipboard.setData(ClipboardData(text: 'flutter build apk --target-platform android-arm,android-arm64,android-x64 --split-per-abi'),).whenComplete(() => fToast?.showToast(
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                decoration: BoxDecoration(
                                    color: Colors.blueGrey.shade900,
                                    borderRadius:
                                    BorderRadius.circular(5)),
                                child: Text(
                                  'Text copied to ClipBoard',
                                  style: TextStyle(color: Colors.white),
                                )),
                            gravity: ToastGravity.BOTTOM_RIGHT));

                      },
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 15,),
          SelectableText.rich(
            TextSpan(
                text: 'Build file location:',
                style: TextStyle(fontSize: textSize,height: textHeight),
                children: [
                  TextSpan(
                    text: ' /build/app/outputs/apk/  ',
                    style: TextStyle(
                    fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'For deploying it please follow this documentation:  '),
                  TextSpan(text: 'website',style: TextStyle(decoration: TextDecoration.underline,color: Colors.blue),recognizer: TapGestureRecognizer()..onTap=() => launch('https://docs.flutter.dev/deployment/android'))
                ]),
          ),
          SizedBox(height: 25,),
          Text(
            'Build for iOS',
            style: AppStyle.dmSans(weight: FontWeight.bold, size: mainTextSize),
          ),
          SizedBox(height: 15,),
          SelectableText.rich(
            TextSpan(
                text: 'There are no general way to generate app for iOS. Apple doesn’t allow to install app like this debug way. If you want to install it on your iOS device then you have to deploy it on TestFlight or AppStore. For deploying it please follow this documentation:  ',
                style: TextStyle(fontSize: textSize,height: textHeight),
                children: [
                  TextSpan(text: 'website',style: TextStyle(decoration: TextDecoration.underline,color: Colors.blue),recognizer: TapGestureRecognizer()..onTap=() => launch('https://docs.flutter.dev/deployment/ios'))
                ]),
          ),
        ],
      ),
    );
  }
}
