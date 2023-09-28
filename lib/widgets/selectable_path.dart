import 'package:flutter/material.dart';
import 'package:gstore_documentation/presentation/app_style.dart';

class MyPathContainer extends StatelessWidget {
  final String text;
  const MyPathContainer({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7, vertical: 3),
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(5)),
      child: SelectableText(
        text,
        style: AppStyle.dmSans(size: 15, color: Colors.white,weight: FontWeight.normal),
      ),
    );
  }
}
