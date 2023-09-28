import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gstore_documentation/presentation/doc_page/section_customization.dart';
import 'package:gstore_documentation/presentation/doc_page/section_installation.dart';
import 'package:gstore_documentation/presentation/doc_page/section_release.dart';
import 'package:gstore_documentation/presentation/doc_page/section_requirements.dart';
import 'package:gstore_documentation/presentation/gallery_page/gallery_page.dart';
import 'package:gstore_documentation/presentation/preview_page/preview_page.dart';
import 'package:gstore_documentation/widgets/mouse_region_button.dart';

class DocPage extends StatefulWidget {
  const DocPage({super.key});

  @override
  State<DocPage> createState() => _DocPageState();
}

class _DocPageState extends State<DocPage> {
  int currentIndex = 0;
  PageController controller = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade100,
        toolbarHeight: 120,
        title: Padding(
          padding: EdgeInsets.only(
            left: width * 0.1,
          ),
          child: Text(
            'Githubit',
            style: GoogleFonts.dmSans(
                fontSize: 55, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        centerTitle: false,
      ),
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: width * .11),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyMouseRegionButton(
                      color: Colors.black,
                      text: 'Preview',
                      page: PreviewPage(),
                    ),
                    MyMouseRegionButton(
                      color: Colors.black,
                      text: 'Gallery',
                      page: GalleryPage(),
                    ),
                    MyMouseRegionButton(
                      color: Colors.black,
                      text: 'Requirements',
                      controller: controller,
                    ),
                    MyMouseRegionButton(
                      color: Colors.black,
                      text: 'Installation',
                      controller: controller,
                    ),
                    MyMouseRegionButton(
                      color: Colors.black,
                      text: 'Customization',
                      controller: controller,
                    ),
                    MyMouseRegionButton(
                      color: Colors.black,
                      controller: controller,
                      text: 'App build & release',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: width * .05,
            ),
            SizedBox(
              width: width * 0.6,
              height: 3500,
              child: PageView(
                clipBehavior: Clip.none,
                onPageChanged: (value) {
                  setState(() {
                    currentIndex=value;
                  });
                  },
                physics:NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                controller: controller,
                children: [
                  SectionRequirements(),
                  SectionInstallation(),
                  SectionCustomization(),
                  SectionRelease(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
