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
  PageController controller = PageController(initialPage: 0);
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  List<double> heights = [900, 3000, 1500,900];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      extendBodyBehindAppBar: false,
      key: _scaffoldKey,
      drawerScrimColor: Colors.black,
      drawer: width < 700
          ? Drawer(
              width: 250,
              child: Padding(
                padding: EdgeInsets.only(left: 20),
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(),
                      SizedBox(
                        height: 100,
                      ),
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
                        scaffoldKey: _scaffoldKey,
                        isSelected: currentIndex==0,
                      ),
                      MyMouseRegionButton(
                        color: Colors.black,
                        text: 'Installation',
                        controller: controller,
                        scaffoldKey: _scaffoldKey,
                        isSelected: currentIndex==1,
                      ),
                      MyMouseRegionButton(
                        color: Colors.black,
                        text: 'Customization',
                        controller: controller,
                        scaffoldKey: _scaffoldKey,
                        isSelected: currentIndex==2,
                      ),
                      MyMouseRegionButton(
                        color: Colors.black,
                        controller: controller,
                        text: 'App build & release',
                        scaffoldKey: _scaffoldKey,
                        isSelected: currentIndex==3,
                      ),
                    ],
                  ),
                ),
              ),
            )
          : null,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: width < 700
            ? IconButton(
                onPressed: () {
                  _scaffoldKey.currentState!.openDrawer();
                },
                icon: Icon(
                  Icons.menu,
                  color: Colors.black,
                ))
            : null,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.grey.shade100,
        toolbarHeight: 120,
        title: Padding(
          padding: EdgeInsets.only(
            left: width > 700 ? width * 0.1 : 00,
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
            width > 700
                ? Padding(
                    padding: EdgeInsets.only(left: width * .11),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(),
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
                            isSelected: currentIndex==0,
                          ),
                          MyMouseRegionButton(
                            color: Colors.black,
                            text: 'Installation',
                            controller: controller,
                            isSelected: currentIndex==1,

                          ),
                          MyMouseRegionButton(
                            color: Colors.black,
                            text: 'Customization',
                            controller: controller,
                            isSelected: currentIndex==2,

                          ),
                          MyMouseRegionButton(
                            color: Colors.black,
                            controller: controller,
                            text: 'App build & release',
                            isSelected: currentIndex==3,

                          ),
                        ],
                      ),
                    ),
                  )
                : Text(''),
            SizedBox(
              width: width * .05,
            ),
            SizedBox(
              width: width < 700 ? width * .9 : width * .6,
              height: heights[currentIndex],
              child: PageView(
                clipBehavior: Clip.antiAlias,
                onPageChanged: (value) {
                  setState(() {
                    currentIndex = value;
                  });
                  print(currentIndex);
                },
                physics: NeverScrollableScrollPhysics(),
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
