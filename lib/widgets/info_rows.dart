import 'package:flutter/material.dart';
import 'package:gstore_documentation/presentation/app_style.dart';

class MyInfoRow extends StatelessWidget {
  final String text;
  final IconData iconData;
  final bool isApp;
  const MyInfoRow({super.key, required this.text, required this.iconData, required this.isApp});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 33,
            width: 33,
            decoration: BoxDecoration(
                color: isApp ? Colors.deepPurple.shade100:Colors.green.shade100,
                borderRadius: BorderRadius.circular(3)),
            child: Center(
              child: Icon(
                iconData,
                color: isApp ? Colors.deepPurple.shade400:Colors.green.shade400,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style:AppStyle.urbanistSemiBold(
              color: Colors.grey.shade600,
            )
          )
        ],
      ),
    );
  }
}
