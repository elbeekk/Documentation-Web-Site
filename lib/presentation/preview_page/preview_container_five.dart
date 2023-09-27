import 'dart:html';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:gstore_documentation/presentation/app_style.dart';
import 'package:gstore_documentation/presentation/gallery_page/gallery_page.dart';
import 'package:gstore_documentation/widgets/buttons.dart';
import 'package:url_launcher/url_launcher.dart';

class PreviewContainerFive extends StatelessWidget {
  PreviewContainerFive({super.key});

  final List<String> imgList = [
    'assets/demo_screenshots/1.jpg',
    'assets/demo_screenshots/2.jpg',
    'assets/demo_screenshots/3.jpg',
    'assets/demo_screenshots/4.jpg',
    'assets/demo_screenshots/5.jpg',
    'assets/demo_screenshots/6.jpg',
    'assets/demo_screenshots/7.jpeg',
    'assets/demo_screenshots/8.jpg',
    'assets/demo_screenshots/9.jpg',
    'assets/demo_screenshots/10.jpg',
    'assets/demo_screenshots/11.jpg',
    'assets/demo_screenshots/12.jpg',
    'assets/demo_screenshots/13.jpg',
    'assets/demo_screenshots/14.jpg',
    'assets/demo_screenshots/15.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return SizedBox(
      child: Column(
        children: [
          const SizedBox(height: 50,),
          Text(
            'Demo Screenshots',
            style: AppStyle.urbanistBold(size: 25),
          ),
          const SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 700,
            width: width,
            child: CarouselSlider(
              options: CarouselOptions(
                  autoPlay: true,
                  enableInfiniteScroll: true,
                  enlargeCenterPage: true,
                  height: 700,
                  enlargeFactor: .00001,
                  viewportFraction: .18,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayCurve: Curves.easeInOutSine),
              items: imgList
                  .map(
                    (item) => Center(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(7),
                          child: Image.asset(
                            item,
                            fit: BoxFit.cover,
                            width: 300,
                          )),
                    ),
                  )
                  .toList(),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
           const MyElevatedButton(
              iconData: Icons.image_outlined,
              text: 'View Full Gallery',
              buttonColor: Colors.orange,
              textColor: Colors.white,
              iconColor: Colors.white,
             page: GalleryPage(),
          ),
          const SizedBox(height: 150,),
          Container(
            width: width,
            height: 80,
            decoration: const BoxDecoration(color: Colors.orange),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.08),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.copyright,color: Colors.white,),
                      Text(' 2023 G Store - Design & Develop by Githubit',style:AppStyle.urbanistSemiBold(color: Colors.white,size: 15),),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          launch('https://www.youtube.com/@githubit1528/videos');
                        },
                        icon: const Icon(MaterialCommunityIcons.youtube,color: Colors.white,),
                      ),IconButton(
                        onPressed: () {
                          launch('https://t.me/githubitnews');
                        },
                        icon: const Icon(Icons.send,color: Colors.white,),
                      ),
                      IconButton(
                        onPressed: () {
                          launch('https://www.linkedin.com/company/githubit/');
                        },
                        icon: const Icon(MaterialCommunityIcons.linkedin,color: Colors.white,),
                      ),
                      IconButton(
                        onPressed: () {
                          launch('https://githubit.com/');
                        },
                        icon: const Icon(MaterialCommunityIcons.web,color: Colors.white,),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
