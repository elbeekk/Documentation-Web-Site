import 'package:flutter/material.dart';

class MyElevatedButton extends StatelessWidget {
  final IconData iconData;
  final String text;
  final Color buttonColor;
  final Color textColor;
  final Color iconColor;
  final Widget? page;

  const MyElevatedButton({super.key,
    required this.iconData,
    required this.text,
    required this.buttonColor,
    required this.textColor,
    required this.iconColor, this.page,
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
