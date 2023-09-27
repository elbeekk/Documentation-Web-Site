import 'package:flutter/material.dart';
import 'package:gstore_documentation/presentation/gallery_page/gallery_page.dart';
import 'package:gstore_documentation/presentation/preview_page/preview_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'gStore',
      home: PreviewPage(),
    );
  }
}