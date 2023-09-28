import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gstore_documentation/presentation/app_style.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

class SectionInstallation extends StatefulWidget {
  SectionInstallation({super.key});

  @override
  State<SectionInstallation> createState() => _SectionInstallationState();
}

class _SectionInstallationState extends State<SectionInstallation> {
  String copied = '';
  FToast? fToast;
  double textHeight = 1.5;
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
            'Mandatory setup',
            style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w900, fontSize: 40, color: Colors.black),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Run an existing flutter project on IDE',
            style: AppStyle.dmSans(weight: FontWeight.bold, size: mainTextSize),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'Change App Logo',
            style: AppStyle.dmSans(weight: FontWeight.bold, size: mainTextSize),
          ),
          SizedBox(
            height: 20,
          ),
          SelectableText.rich(
            TextSpan(
                text: 'You can generate app icon using this ',
                style: TextStyle(fontSize: textSize, height: textHeight),
                children: [
                  TextSpan(
                      text: 'website',
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => launch(
                            'https://icon.kitchen/i/H4sIAAAAAAAAAxWMOw6EMAxE7zJ1TkC7V9hutUIGOxBhMMoHCpS7kzQz0szTe3CRFkkYHjDF7bvKLhg8aRIHv3w0nBRzv5O0AounohkOYbajDcQ8Zhs5hktQq8NuXLQbf6CDowXusKWWt0z41xfmWWbRdAAAAA%3D%3D'),
                      style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline))
                ]),
          ),
          SizedBox(
            height: 10,
          ),
          SelectableText.rich(
            TextSpan(
                text: '• Then go to ',
                style: TextStyle(fontSize: textSize, height: textHeight),
                children: [
                  TextSpan(
                    text: ' /android/app/src/main/res ',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'and replace all mipmap folder with your'),
                  TextSpan(
                      text: ' /android ',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold)),
                  TextSpan(text: 'folder')
                ]),
          ),
          SizedBox(
            height: 10,
          ),
          SelectableText.rich(
            TextSpan(
                text: '• Again go to ',
                style: TextStyle(fontSize: textSize, height: textHeight),
                children: [
                  TextSpan(
                    text: ' /ios/Runner ',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'and replace '),
                  TextSpan(
                      text: ' Assets.xcassets ',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold)),
                  TextSpan(text: 'with your generated'),
                  TextSpan(
                      text: ' Assets.xcassets ',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold)),
                  TextSpan(text: 'folder'),
                ]),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Change App Name',
            style: AppStyle.dmSans(weight: FontWeight.bold, size: mainTextSize),
          ),
          SizedBox(
            height: 20,
          ),
          SelectableText.rich(TextSpan(
              text: '1.Change the value of label from',
              style: TextStyle(fontSize: textSize, height: textHeight),
              children: [
                TextSpan(
                    text: ' /android/app/src/main/AndroidManifest.xml ',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                    ))
              ])),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.blueGrey.shade900,
                borderRadius: BorderRadius.circular(7)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                  child: Text(
                    '/android/app/src/main/AndroidManifest.xml',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Divider(
                  color: Colors.black,
                  indent: 0,
                  endIndent: 0,
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'android:label="My App"',
                        style: TextStyle(color: Colors.grey),
                      ),
                      MouseRegion(
                        onExit: (event) {
                          setState(() {
                            copied = '';
                          });
                        },
                        child: IconButton(
                          icon: Icon(
                            Icons.copy,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            fToast?.showToast(
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
                                gravity: ToastGravity.BOTTOM_RIGHT);
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SelectableText.rich(TextSpan(
              text: '2.Change the value of CFBundleName from ',
              style: TextStyle(fontSize: textSize, height: textHeight),
              children: [
                TextSpan(
                    text: ' /iOS/Runner/info.plist ',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        fontSize: 15))
              ])),
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.blueGrey.shade900,
                borderRadius: BorderRadius.circular(7)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                  child: Text(
                    '/iOS/Runner/info.plist',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Divider(
                  color: Colors.black,
                  indent: 0,
                  endIndent: 0,
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '<key>CFBundleName</key>"',
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            '<string>My App</string>"',
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                      MouseRegion(
                        onExit: (event) {
                          setState(() {
                            copied = '';
                          });
                        },
                        child: IconButton(
                          icon: Icon(
                            Icons.copy,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            fToast?.showToast(
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
                                gravity: ToastGravity.BOTTOM_RIGHT);
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'Change Base URL',
            style: AppStyle.dmSans(weight: FontWeight.bold, size: mainTextSize),
          ),
          SizedBox(
            height: 20,
          ),
          SelectableText.rich(
            TextSpan(
                text:
                    'Please do NOT put slash ( / ) at the end of your base url. Use your admin url as base url. First you have to install your admin panel.\nFor example: If your admin url is',
                style: TextStyle(fontSize: textSize, height: textHeight),
                children: [
                  TextSpan(
                    text: ' https://your_domain.com/admin ',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'then base url will be '),
                  TextSpan(
                    text: ' https://your_domain.com. ',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: '\nOpen '),
                  TextSpan(
                      text: ' /lib/src/core/constants/secret_vars.dart ',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          'and replace baseUrl variable value with your own URL.'),
                ]),
          ),
          SizedBox(
            height: 15,
          ),
          SelectableText.rich(
            TextSpan(
                text: 'Open',
                style: TextStyle(fontSize: textSize, height: textHeight),
                children: [
                  TextSpan(
                    text: ' /lib/src/core/constants/secret_vars.dart ',
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                      text:
                          'and replace baseUrl variable value with your own URL.'),
                ]),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.blueGrey.shade900,
                borderRadius: BorderRadius.circular(7)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                  child: Text(
                    '/android/app/src/main/AndroidManifest.xml',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Divider(
                  color: Colors.black,
                  indent: 0,
                  endIndent: 0,
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'android:label="My App"',
                        style: TextStyle(color: Colors.grey),
                      ),
                      MouseRegion(
                        onExit: (event) {
                          setState(() {
                            copied = '';
                          });
                        },
                        child: IconButton(
                          icon: Icon(
                            Icons.copy,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            fToast?.showToast(
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
                                gravity: ToastGravity.BOTTOM_RIGHT);
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: width*0.7,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue),
            child: Image.asset('assets/img.png',),
          ),
          SizedBox(
            height: 25,
          ),
          Text(
            'Change App Package',
            style: AppStyle.dmSans(weight: FontWeight.bold, size: mainTextSize),
          ),
          SizedBox(
            height: 15,
          ),
          SelectableText.rich(
            TextSpan(
                text:
                    'Firstly, find out the existing package name. You can find it out from top of',
                style: TextStyle(fontSize: textSize, height: textHeight),
                children: [
                  TextSpan(
                      text: ' /app/src/main/AndroidManifest.xml ',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          'file. Then right click on project folder from android studio and click on'),
                  TextSpan(
                      text: ' replace in path ',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          'You will see a popup window with two input boxes. In first box you have to put existing package name that you saw in'),
                  TextSpan(
                      text: ' AndroidManifest.xml ',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold)),
                  TextSpan(
                      text:
                          'file previously and then write down your preferred package name in second box and then click on '),
                  TextSpan(
                      text: ' Replace All  ',
                      style: TextStyle(
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold)),
                  TextSpan(text: 'button.'),
                ]),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Setup Firebase for Push Notification',
            style: AppStyle.dmSans(weight: FontWeight.bold, size: mainTextSize),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            '• Firstly, change your package name. If you didn’t then go to this link',
            style: TextStyle(fontSize: textSize, height: textHeight),
          ),
          SizedBox(
            height: 5,
          ),
          SelectableText.rich(
            TextSpan(
                text: '• Create your own firebase project from ',
                style: TextStyle(fontSize: textSize, height: textHeight),
                children: [
                  TextSpan(
                    text: 'console.firebase.google.com',
                    recognizer: TapGestureRecognizer()
                      ..onTap =
                          () => launch('https://console.firebase.google.com/'),
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  TextSpan(
                    text:
                        ' and also add there an android app with your own package name and app name',
                  )
                ]),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.red.shade100.withOpacity(.4),
                boxShadow: [
                  BoxShadow(color: Colors.grey.shade300, spreadRadius: .5),
                ],
                border: Border.all(color: Colors.red.shade900, width: .1),
                borderRadius: BorderRadius.circular(5)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 30,
                      width: 30,
                      child: Lottie.asset('assets/warning.json'),
                    ),
                    Text(
                      ' WARNING',
                      style: TextStyle(
                          color: Colors.red.shade900,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '  Please do NOT create multiple projects if you have multiple app like User App, Delivery App. Create only one project and add multiple apps under one project.',
                  style: TextStyle(
                      color: Colors.red.shade900,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 22,
          ),
          Text(
            '• Click register app and download google-services.json file from there.',
            style: TextStyle(fontSize: textSize, height: textHeight),
          ),
          SizedBox(
            height: 5,
          ),
          SelectableText.rich(
            TextSpan(
              text: '• Copy that file and paste it under',
              style: TextStyle(fontSize: textSize, height: textHeight),
              children: [
                TextSpan(
                  text: ' /android/app/folder',
                  style: TextStyle(
                      fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          SelectableText.rich(
            TextSpan(
              text:
                  '• Create a totally white png logo for notification icon. Paste it on ',
              style: TextStyle(fontSize: textSize, height: textHeight),
              children: [
                TextSpan(
                  text: ' /android/app/src/main/res/drawable/',
                  style: TextStyle(
                      fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                    text:
                        'and replace notification_icon.png with your whiter version logo.'),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          SelectableText.rich(
            TextSpan(
              text:
                  '• For IOS again create an app under the same project and download  ',
              style: TextStyle(fontSize: textSize, height: textHeight),
              children: [
                TextSpan(
                  text: ' GoogleService-Info.plist',
                  style: TextStyle(
                      fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                ),
                TextSpan(text: 'and paste it under'),
                TextSpan(
                  text: ' /iOS/folder',
                  style: TextStyle(
                      fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                    text:
                        '\n   Also you are advised to follow this documentation for full setup for IOS: '),
                TextSpan(
                    text:
                        'firebase.flutter.dev/docs/messaging/apple-integration',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => launch(
                          'https://firebase.flutter.dev/docs/messaging/apple-integration'),
                    style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline))
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          SelectableText.rich(
            TextSpan(
              text:
                  '• Paste firebase server key into admin panel Notification Settings section. You can receive server key from  ',
              style: TextStyle(fontSize: textSize, height: textHeight),
              children: [
                TextSpan(
                  text:
                      ' Firebase project settings->Cloud Messaging-> Server Key',
                  style: TextStyle(
                      fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                    text:
                        '\n   After setup, please restart your IDE and uninstall your previously installed app, and then run it. Also do NOT try to test it on emulator or simulator. Emulator and simulators are unable to get push. Use real device for this purpose'),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Add Google Map API Key',
            style: AppStyle.dmSans(weight: FontWeight.bold, size: mainTextSize),
          ),
          SizedBox(
            height: 15,
          ),
          SelectableText.rich(
            TextSpan(
              text:
                  '• Please generate the google API key. You can visit this link:  ',
              style: TextStyle(fontSize: textSize, height: textHeight),
              children: [
                TextSpan(
                  text: 'website',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => launch(
                        'https://developers.google.com/maps/documentation/embed/get-api-key'),
                  style: TextStyle(
                      decoration: TextDecoration.underline, color: Colors.blue),
                ),
              ],
            ),
          ),
          Text(
            '• You need to enable mentioned APIs: Direction API, Distance Matrix API, Geocoding API, Maps SDK for Android, Maps SDK for iOS, Place API.',
            style: TextStyle(fontSize: textSize, height: textHeight),
          ),
          SelectableText.rich(
            TextSpan(
              text:
                  '• Then you have to enable billing account. Visit this URL for activation:  ',
              style: TextStyle(fontSize: textSize, height: textHeight),
              children: [
                TextSpan(
                  text: 'website',
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => launch(
                        'https://support.google.com/googleapi/answer/6158867?hl=en'),
                  style: TextStyle(
                      decoration: TextDecoration.underline, color: Colors.blue),
                ),
              ],
            ),
          ),
          Text(
            '• After generating API key, you have to paste it on 3 different places: Android, iOS and web.',
            style: TextStyle(fontSize: textSize, height: textHeight),
          ),
          SelectableText.rich(
            TextSpan(
              text: '  For android, open  ',
              style: TextStyle(fontSize: textSize, height: textHeight),
              children: [
                TextSpan(
                  text: ' /android/app/src/main/AndroidManifest.xml ',
                  style: TextStyle(
                      fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                ),
                TextSpan(text: 'and place the value of '),
                TextSpan(
                  text: ' com.google.android.geo.API_KEY',
                  style: TextStyle(
                      fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
                color: Colors.blueGrey.shade900,
                borderRadius: BorderRadius.circular(7)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                  child: Text(
                    '/android/app/src/main/AndroidManifest.xml',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Divider(
                  color: Colors.black,
                  indent: 0,
                  endIndent: 0,
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '<meta-data android:name="com.google.android.geo.API_KEY" android:value=“YOUR_MAP_API_KEY_HERE”/>',
                          style: TextStyle(color: Colors.grey),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.copy,
                            color: Colors.grey,
                          ),
                          onPressed: () {
                            fToast?.showToast(
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
                                gravity: ToastGravity.BOTTOM_RIGHT);
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SelectableText.rich(
            TextSpan(
              text: '  For iOS: open   ',
              style: TextStyle(fontSize: textSize, height: textHeight),
              children: [
                TextSpan(
                  text: ' /iOS/Runner/AppDelegate.swift ',
                  style: TextStyle(
                      fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                ),
                TextSpan(text: 'and place the value of '),
                TextSpan(
                  text: ' GMSServices.provideAPIKey',
                  style: TextStyle(
                      fontStyle: FontStyle.italic, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.blueGrey.shade900,
                borderRadius: BorderRadius.circular(7)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                  child: Text(
                    '/iOS/Runner/AppDelegate.swift',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                Divider(
                  color: Colors.black,
                  indent: 0,
                  endIndent: 0,
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'GMSServices.provideAPIKey(“YOUR_MAP_API_KEY_HERE")',
                          style: TextStyle(color: Colors.grey),
                        ),
                        MouseRegion(
                          onExit: (event) {
                            setState(() {
                              copied = '';
                            });
                          },
                          child: IconButton(
                            icon: Icon(
                              Icons.copy,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              fToast?.showToast(
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
                                  gravity: ToastGravity.BOTTOM_RIGHT);
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
