import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyImageButton extends StatelessWidget {
  final String logoName;
  final String url;

  const MyImageButton({super.key, required this.logoName, required this.url});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25),
      child: InkWell(
        onTap: () {
          launch(url);
        },
        child: Container(
          height: 35,
          width: 35,
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade300, blurRadius: 1, spreadRadius: 1)
            ],
            color: Colors.white,
          ),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset('assets/logo_features/$logoName')),
        ),
      ),
    );
  }
}
