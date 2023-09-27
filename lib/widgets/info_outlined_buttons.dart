import 'package:flutter/material.dart';
import 'package:gstore_documentation/presentation/app_style.dart';

class MyInfoNullButton extends StatelessWidget {
  final Color iconColor;
  final Color iconBackColor;
  final IconData iconData;
  final String text;

  const MyInfoNullButton(
      {super.key,
      required this.iconColor,
      required this.iconBackColor,
      required this.iconData,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22),
      child: OutlinedButton.icon(
        onPressed: null,
        style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.fromLTRB(22,0,0, 0)),
        icon: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: iconBackColor, borderRadius: BorderRadius.circular(3)),
            child: Icon(
              iconData,
              color: iconColor,
            )),
        label: SizedBox(
          height: 100,
          width: 350,
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 10,),
                Text(
                  text,
                  style: AppStyle.urbanistBold(color: Colors.black, size: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
