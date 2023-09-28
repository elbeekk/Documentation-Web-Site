import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyMouseRegionButton extends StatefulWidget {
  Color color;
  final String text;
  final Widget? page;
  final PageController? controller;
  MyMouseRegionButton(
      {super.key, required this.color, required this.text, this.page, this.controller});

  @override
  State<MyMouseRegionButton> createState() => _MyMouseRegionButtonState();
}

class _MyMouseRegionButtonState extends State<MyMouseRegionButton> {
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          widget.color = Color(0xff59c05d);
        });
      },
      onExit: (event) {
        setState(() {
          widget.color = Colors.black;
        });
      },
      child: InkWell(
        focusColor: Colors.greenAccent,
        onTap: () {
          if (widget.page != null) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => widget.page!,
                ));
          }else{
              if(widget.text=='Requirements') {
                widget.controller!.jumpToPage(0);
              }
              if(widget.text=='Installation') {
                widget.controller!.jumpToPage(1);
              }
              if(widget.text=='Customization') {
                widget.controller!.jumpToPage(2);
              }
              if(widget.text=='App build & release') {
                widget.controller!.jumpToPage(3);
              }
          }
        },
        borderRadius: BorderRadius.circular(5),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Text(
                widget.text,
                style: GoogleFonts.dmSans(color: widget.color, fontSize: 17,fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
