import 'package:flutter/material.dart';
import 'package:gstore_documentation/presentation/preview_page/preview_container_five.dart';
import 'package:gstore_documentation/presentation/preview_page/preview_container_four.dart';
import 'package:gstore_documentation/presentation/preview_page/preview_container_one.dart';
import 'package:gstore_documentation/presentation/preview_page/preview_container_three.dart';
import 'package:gstore_documentation/presentation/preview_page/preview_container_two.dart';

class PreviewPage extends StatelessWidget {
  const PreviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            // const PreviewContainerOne(),
            // const PreviewContainerTwo(),
            // const PreviewContainerThree(),
            // const PreviewContainerFour(),
            PreviewContainerFive()
          ],
        ),
      ),
    );
  }
}
