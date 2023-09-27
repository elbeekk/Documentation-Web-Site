import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gstore_documentation/presentation/app_style.dart';

class MyExtensionTile extends StatefulWidget {
  final List<String> imageList;
  final String title;

  const MyExtensionTile(
      {super.key, required this.imageList, required this.title});

  @override
  State<MyExtensionTile> createState() => _MyExtensionTileState();
}

class _MyExtensionTileState extends State<MyExtensionTile> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.2,),
          child: ExpansionTile(
            collapsedBackgroundColor: Colors.orange,
            collapsedIconColor: Colors.white,
            initiallyExpanded: true,
            collapsedShape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
            iconColor: Colors.orange,
            textColor: Colors.orange,
            collapsedTextColor: Colors.white,
            title: Text(
              widget.title,
              style: GoogleFonts.urbanist(
                  fontWeight: FontWeight.w600, fontSize: 25),
            ),
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  GridView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 50,
                            mainAxisSpacing: 50,
                            childAspectRatio: .486),
                    children: widget.imageList
                        .map((e) => ClipRRect(
                            borderRadius: BorderRadius.circular(7),
                            child: Image.asset(e)))
                        .toList(),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 20,),
      ],
    );
  }
}
