import 'package:flutter/material.dart';
import 'package:gstore_documentation/presentation/app_style.dart';
import 'package:gstore_documentation/presentation/doc_page/doc_page.dart';
import 'package:gstore_documentation/presentation/gallery_page/my_extension_tile.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        title: GradientText(
          'G Store',
          colors: const [
            Color(0xffffb860),
            Color(0xffff9a1b),
          ],
          style: AppStyle.urbanistSemiBold(size: 35),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: width * 0.08, top: 5, bottom: 5),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DocPage(),));
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange, elevation: 0),
                child: Center(
                  child: Text(
                    'Go To Docs',
                    style: AppStyle.urbanistSemiBold(color: Colors.white),
                  ),
                )),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 30, bottom: 30),
        child: ElevatedButton.icon(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: Colors.orange,
                padding:
                    const EdgeInsets.symmetric(horizontal: 37, vertical: 22)),
            icon: const Icon(Icons.shopping_cart_outlined),
            label: Text(
              'Buy Now',
              style: AppStyle.urbanistSemiBold(color: Colors.white),
            )),
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: AlwaysScrollableScrollPhysics(),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyExtensionTile(imageList: [
                'assets/full_gallery/g_cart/1.jpg',
                'assets/full_gallery/g_cart/2.jpg',
                'assets/full_gallery/g_cart/3.jpg',
                'assets/full_gallery/g_cart/4.jpg',
                'assets/full_gallery/g_cart/4_1.jpg',
                'assets/full_gallery/g_cart/4_2.jpg',
                'assets/full_gallery/g_cart/5.jpg',
                'assets/full_gallery/g_cart/6.jpg',
                'assets/full_gallery/g_cart/7.jpg',
                'assets/full_gallery/g_cart/8.jpg',
                'assets/full_gallery/g_cart/9.jpg',
                'assets/full_gallery/g_cart/10.jpg',
                'assets/full_gallery/g_cart/11.jpg',
                'assets/full_gallery/g_cart/12.jpg',
                'assets/full_gallery/g_cart/13.jpg',
                'assets/full_gallery/g_cart/14.jpg',
                'assets/full_gallery/g_cart/15.jpg',
                'assets/full_gallery/g_cart/16.jpg',
                'assets/full_gallery/g_cart/17.jpg',
                'assets/full_gallery/g_cart/18.jpg',
                'assets/full_gallery/g_cart/19.jpg',
              ], title: '1. G Cart'),
              MyExtensionTile(imageList: [
                'assets/full_gallery/g_grocery/1.jpg',
                'assets/full_gallery/g_grocery/2.jpg',
                'assets/full_gallery/g_grocery/3.jpg',
                'assets/full_gallery/g_grocery/4.jpg',
                'assets/full_gallery/g_grocery/5.jpg',
                'assets/full_gallery/g_grocery/6.jpg',
                'assets/full_gallery/g_grocery/7.jpg',
                'assets/full_gallery/g_grocery/8.jpg',
                'assets/full_gallery/g_grocery/9.jpg',
                'assets/full_gallery/g_grocery/10.jpg',
                'assets/full_gallery/g_grocery/11.jpg',
                'assets/full_gallery/g_grocery/12.jpg',
                'assets/full_gallery/g_grocery/13.jpg',
                'assets/full_gallery/g_grocery/14.jpg',
                'assets/full_gallery/g_grocery/15.jpg',
                'assets/full_gallery/g_grocery/16.jpg',
                'assets/full_gallery/g_grocery/17.jpg',
              ], title: '2. G Grocery'),
              MyExtensionTile(imageList: [
                'assets/full_gallery/g_bike/1.jpg',
                'assets/full_gallery/g_bike/2.jpg',
                'assets/full_gallery/g_bike/3.jpg',
                'assets/full_gallery/g_bike/4.jpg',
                'assets/full_gallery/g_bike/5.jpg',
                'assets/full_gallery/g_bike/6.jpg',
                'assets/full_gallery/g_bike/7.jpg',
                'assets/full_gallery/g_bike/8.jpg',
                'assets/full_gallery/g_bike/9.jpg',
                'assets/full_gallery/g_bike/10.jpg',
                'assets/full_gallery/g_bike/11.jpg',
                'assets/full_gallery/g_bike/12.jpg',
                'assets/full_gallery/g_bike/13.jpg',
                'assets/full_gallery/g_bike/14.jpg',
                'assets/full_gallery/g_bike/15.jpg',
                'assets/full_gallery/g_bike/16.jpg',
                'assets/full_gallery/g_bike/17.jpg',
                'assets/full_gallery/g_bike/18.jpg',
                'assets/full_gallery/g_bike/19.jpg',
                'assets/full_gallery/g_bike/20.jpg',
              ], title: '3. G Bike'),
              MyExtensionTile(imageList: [
                'assets/full_gallery/g_movie/1.jpg',
                'assets/full_gallery/g_movie/2.jpg',
                'assets/full_gallery/g_movie/3.jpg',
                'assets/full_gallery/g_movie/4.jpg',
                'assets/full_gallery/g_movie/5.jpg',
                'assets/full_gallery/g_movie/6.jpg',
                'assets/full_gallery/g_movie/7.jpg',
                'assets/full_gallery/g_movie/8.jpg',
                'assets/full_gallery/g_movie/9.jpg',
                'assets/full_gallery/g_movie/10.jpg',
                'assets/full_gallery/g_movie/11.jpg',
              ], title: '4. G Movie'),
              MyExtensionTile(imageList: [
                'assets/full_gallery/g_chat/1.jpg',
                'assets/full_gallery/g_chat/2.jpg',
                'assets/full_gallery/g_chat/3.jpg',
                'assets/full_gallery/g_chat/4.jpg',
                'assets/full_gallery/g_chat/5.jpg',
                'assets/full_gallery/g_chat/6.jpg',
              ], title: '5. G Chat'),
              MyExtensionTile(imageList: [
                'assets/full_gallery/g_pay/1.jpg',
                'assets/full_gallery/g_pay/2.jpg',
                'assets/full_gallery/g_pay/3.jpg',
                'assets/full_gallery/g_pay/4.jpg',
                'assets/full_gallery/g_pay/5.jpg',
                'assets/full_gallery/g_pay/6.jpg',
                'assets/full_gallery/g_pay/7.jpg',
                'assets/full_gallery/g_pay/8.jpg',
                'assets/full_gallery/g_pay/9.jpg',
                'assets/full_gallery/g_pay/10.jpg',
                'assets/full_gallery/g_pay/11.jpg',
                'assets/full_gallery/g_pay/12.jpg',
              ], title: '6. G Pay'),
              MyExtensionTile(imageList: [
                'assets/full_gallery/g_travel/1.jpg',
                'assets/full_gallery/g_travel/2.jpg',
                'assets/full_gallery/g_travel/3.jpg',
                'assets/full_gallery/g_travel/4.jpg',
                'assets/full_gallery/g_travel/5.jpg',
                'assets/full_gallery/g_travel/6.jpg',
                'assets/full_gallery/g_travel/7.jpg',
                'assets/full_gallery/g_travel/8.jpg',
                'assets/full_gallery/g_travel/9.jpg',
                'assets/full_gallery/g_travel/10.jpg',
                'assets/full_gallery/g_travel/11.jpg',
                'assets/full_gallery/g_travel/12.jpg',
                'assets/full_gallery/g_travel/13.jpg',
                'assets/full_gallery/g_travel/14.jpg',
                'assets/full_gallery/g_travel/15.jpg',
                'assets/full_gallery/g_travel/16.jpg',
                'assets/full_gallery/g_travel/17.jpg',
                'assets/full_gallery/g_travel/18.jpg',
              ], title: '7. G Travel'),
              MyExtensionTile(imageList: [
                'assets/full_gallery/g_cooking/1.jpg',
                'assets/full_gallery/g_cooking/2.jpg',
                'assets/full_gallery/g_cooking/3.jpg',
                'assets/full_gallery/g_cooking/4.jpg',
                'assets/full_gallery/g_cooking/5.jpg',
                'assets/full_gallery/g_cooking/6.jpg',
                'assets/full_gallery/g_cooking/7.jpg',
                'assets/full_gallery/g_cooking/8.jpg',
                'assets/full_gallery/g_cooking/9.jpg',
                'assets/full_gallery/g_cooking/10.jpg',
                'assets/full_gallery/g_cooking/11.jpg',
                'assets/full_gallery/g_cooking/12.jpg',
                'assets/full_gallery/g_cooking/13.jpg',
                'assets/full_gallery/g_cooking/14.jpg',
                'assets/full_gallery/g_cooking/15.jpg',
                'assets/full_gallery/g_cooking/16.jpg',
                'assets/full_gallery/g_cooking/17.jpg',
              ], title: '8. G Cooking'),
              MyExtensionTile(imageList: [
                'assets/full_gallery/g_medical/1.jpg',
                'assets/full_gallery/g_medical/2.jpg',
                'assets/full_gallery/g_medical/3.jpg',
                'assets/full_gallery/g_medical/4.jpg',
                'assets/full_gallery/g_medical/5.jpg',
                'assets/full_gallery/g_medical/6.jpg',
                'assets/full_gallery/g_medical/7.jpg',
                'assets/full_gallery/g_medical/8.jpg',
                'assets/full_gallery/g_medical/9.jpg',
                'assets/full_gallery/g_medical/10.jpg',
                'assets/full_gallery/g_medical/11.jpg',
                'assets/full_gallery/g_medical/12.jpg',
                'assets/full_gallery/g_medical/13.jpg',
                'assets/full_gallery/g_medical/14.jpg',
                'assets/full_gallery/g_medical/15.jpg',
                'assets/full_gallery/g_medical/16.jpg',
                'assets/full_gallery/g_medical/17.jpg',
                'assets/full_gallery/g_medical/18.jpg',
                'assets/full_gallery/g_medical/19.jpg',
                'assets/full_gallery/g_medical/20.jpg',
              ], title: '9. G Medical'),
              MyExtensionTile(imageList: [
                'assets/full_gallery/g_weather/1.jpg',
                'assets/full_gallery/g_weather/2.jpg',
                'assets/full_gallery/g_weather/3.jpg',
                'assets/full_gallery/g_weather/4.jpg',
                'assets/full_gallery/g_weather/5.jpg',
              ], title: '10. G Weather'),
            ],
          ),
        ),
      ),
    );
  }
}
