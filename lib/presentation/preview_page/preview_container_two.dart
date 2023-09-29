import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:gstore_documentation/presentation/app_style.dart';
import 'package:gstore_documentation/widgets/info_outlined_buttons.dart';

class PreviewContainerTwo extends StatelessWidget {
  const PreviewContainerTwo({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return SizedBox(
      width: width,
      child:Center(
        child: SizedBox(
          width: width,
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 80,
            runSpacing: 100,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyInfoNullButton(
                      iconColor: Colors.deepPurple.shade300,
                      iconBackColor: Colors.deepPurple.shade100,
                      iconData: Icons.grid_view,
                      text: '10 Full Apps (Animations)'),
                  MyInfoNullButton(
                      iconColor: Colors.red.shade300,
                      iconBackColor: Colors.red.shade100,
                      iconData: Icons.fullscreen,
                      text: '350+ Ready to use screens'),
                  MyInfoNullButton(
                      iconColor: Colors.green.shade400,
                      iconBackColor: Colors.green.shade100,
                      iconData: Ionicons.time_outline,
                      text: 'Save 1500 hrs of development'),
                  MyInfoNullButton(
                      iconColor: Colors.cyan.shade400,
                      iconBackColor: Colors.cyan.shade100,
                      iconData: Ionicons.earth,
                      text: 'Multi Language support + RTL'),
                ],
              ),
              SizedBox(
                  height: 650,
                  child: Image.asset('assets/homepage.jpg')),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(
                        text: 'What is ',
                        style: AppStyle.urbanistSemiBold(size: 30),
                        children: [
                          TextSpan(
                            text: 'G Store ',
                            style:
                            AppStyle.urbanistBold(size: 30, color: Colors.orange),
                          ),
                          TextSpan(
                              text: '?', style: AppStyle.urbanistSemiBold(size: 30))
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    SizedBox(
                      width: 370,
                      child: Text(
                        """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sit amet posuere justo, in suscipit augue. Integer eu ante placerat, volutpat lectus quis, finibus lectus. Aliquam erat volutpat. Duis viverra arcu non convallis varius. Praesent placerat gravida risus. Nulla pulvinar, arcu non viverra lacinia, orci magna maximus justo, sed semper eros ipsum non tortor.\n\nUt id diam in nibh tempor bibendum non et dui. Nam porta ut lacus in finibus. Nunc euismod justo hendrerit mi gravida, non cursus nisi tincidunt.Praesent vitae iaculis magna. Curabitur eleifend imperdiet orci, eu rutrum ligula faucibus id. Donec auctor ligula et pulvinar rhoncus. Fusce gravida lorem eu odio dignissim, non scelerisque augue efficitur. Praesent eu convallis dolor, et eleif""",
                        style: TextStyle(fontSize: 15, color: Colors.grey.shade600),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          padding: EdgeInsets.all(18)
                      ),
                      child: const Text(
                        "Purchase Now",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );




  }
}
