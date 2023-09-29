import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyElevatedButton extends StatelessWidget {
  final IconData iconData;
  final String text;
  final Color buttonColor;
  final Color textColor;
  final Color iconColor;
  final Widget? page;
  final String? link;

  const MyElevatedButton({super.key,
    required this.iconData,
    required this.text,
    required this.buttonColor,
    required this.textColor,
    required this.iconColor, this.page, this.link,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(backgroundColor: buttonColor,elevation: 0),
        onPressed: () {
          if(page!=null){
            Navigator.push(context, MaterialPageRoute(builder: (context) => page!,));
          }
          if(link!=null){
            launch(link!);
          }

        },
        icon: Icon(iconData,color: iconColor,),
        label: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Text(text,style: TextStyle(color: textColor),),
        ),
      ),
    );
  }
}
