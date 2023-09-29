import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:gstore_documentation/presentation/app_style.dart';
import 'package:gstore_documentation/presentation/doc_page/doc_page.dart';
import 'package:gstore_documentation/presentation/gallery_page/gallery_page.dart';
import 'package:gstore_documentation/widgets/buttons.dart';
import 'package:gstore_documentation/widgets/image_button.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class PreviewContainerOne extends StatelessWidget {
  const PreviewContainerOne({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SizedBox(
        height: 800,
        width: width,
        child: Column(
          children: [
            AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: Colors.transparent,
              title: Padding(
                padding: EdgeInsets.only(left: width * .07),
                child: Row(
                  children: [
                    Text(
                      'G Store',
                      style:
                      AppStyle.urbanistSemiBold(color: Colors.orange, size: 20),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              centerTitle: false,
              elevation: 0,

              actions: [
                Padding(
                  padding: EdgeInsets.only(right: width * .07, top: 7, bottom: 7),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 0, backgroundColor: const Color(0xffFF981F)),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => DocPage(),));
                      },
                      child:  Center(
                        child: Text('Go To Docs',style: AppStyle.urbanistMedium(color: Colors.white),),
                      )),
                )
              ],
            ),
            SizedBox(height: height*0.13,),
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade400,
                        offset: const Offset(1, 1),
                        blurRadius: 7,
                        spreadRadius: 7)
                  ],
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                      image: AssetImage('assets/logo.png'))),
            ),
            const SizedBox(
              height: 20,
            ),
            GradientText(
              'G Store',
              colors: const [Color(0xfff8b565), Color(0xfffa8d0d)],
              style: AppStyle.urbanistBold(size: 50),
            ),
            Text(
              'Flutter UI Kit',
              style: AppStyle.urbanistSemiBold(
                size: 40,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: width,
              child: Wrap(
                runSpacing:10,
                alignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  const MyElevatedButton(
                      iconData: Icons.shopping_cart_outlined,
                      text: 'Buy Now',
                      buttonColor: Color(0xffFF981F),
                      textColor: Colors.white,
                      iconColor: Colors.white),
                  const SizedBox(
                    width: 12,
                  ),
                  const MyElevatedButton(
                      iconData: Ionicons.image_outline,
                      text: 'Gallery',
                      buttonColor: Color(0xffFF981F),
                      textColor: Colors.white,
                      iconColor: Colors.white,
                      page: GalleryPage(),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const MyElevatedButton(
                      iconData: MaterialCommunityIcons.google_play,
                      text: 'On Play Store',
                      buttonColor: Color(0xffFF981F),
                      textColor: Colors.white,
                      iconColor: Colors.white),
                  const SizedBox(width: 10,),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.orange,padding: const EdgeInsets.all(12.5)),
                    onPressed: () {},
                    label: const Text('Test Flight'),
                    icon: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                            image:
                                AssetImage('assets/logo_features/testflight.png'),
                          ),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20,),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(

                text: 'Flutter 3.10 ',
                style:
                    AppStyle.urbanistSemiBold(color: Colors.redAccent, size: 30),
                children: [
                  TextSpan(
                    text: '(Latest - Null Safety)',
                    style:
                        AppStyle.urbanistSemiBold(color: Colors.black, size: 30),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            const Wrap(
              alignment: WrapAlignment.center,
              runSpacing: 10,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                MyImageButton(logoName: 'flutter.png',url: 'https://flutter.dev/',),
                MyImageButton(logoName: 'android.png',url: 'https://www.android.com/',),
                MyImageButton(logoName: 'apple.png',url: 'https://www.apple.com/',),
                MyImageButton(logoName: 'firebase.png',url: 'https://firebase.google.com/',),
                MyImageButton(logoName: 'google.png',url: 'https://www.google.com/account/about/',),
                MyImageButton(logoName: 'facebook.png',url: 'https://www.facebook.com/',),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
