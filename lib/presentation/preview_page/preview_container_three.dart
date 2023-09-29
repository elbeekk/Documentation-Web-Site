import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:gstore_documentation/presentation/app_style.dart';
import 'package:gstore_documentation/widgets/info_rows.dart';

class PreviewContainerThree extends StatelessWidget {
  const PreviewContainerThree({super.key});

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        spacing: 100,
        runSpacing: 150,
        alignment: WrapAlignment.center,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 650,
              child: Image.asset('assets/homepage.jpg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      text: 'What includes in ',
                      style: AppStyle.urbanistSemiBold(size: 30),
                      children: [
                        TextSpan(
                          text: 'G Store ',
                          style: AppStyle.urbanistBold(
                              size: 30, color: Colors.orange),
                        ),
                        TextSpan(
                            text: '?', style: AppStyle.urbanistSemiBold(size: 30))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut sit amet posuere justo, in suscipit augue.',
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: Wrap(
                      runSpacing: 50,
                      alignment: WrapAlignment.spaceEvenly,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Apps',
                              style: AppStyle.urbanistSemiBold(size: 22),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const MyInfoRow(
                              text: 'GCart',
                              iconData: Icons.shopping_cart_outlined,
                              isApp: true,
                            ),
                            const MyInfoRow(
                              text: 'GGrocery',
                              iconData: Icons.store_outlined,
                              isApp: true,
                            ),
                            const MyInfoRow(
                              text: 'GBike',
                              iconData: Icons.directions_bike_outlined,
                              isApp: true,
                            ),
                            const MyInfoRow(
                              text: 'GMovie',
                              iconData: Icons.videocam_outlined,
                              isApp: true,
                            ),
                            const MyInfoRow(
                              text: 'GChat',
                              iconData: Icons.chat_outlined,
                              isApp: true,
                            ),
                            const MyInfoRow(
                              text: 'GPay',
                              iconData: Icons.attach_money_outlined,
                              isApp: true,
                            ),
                            const MyInfoRow(
                              text: 'GTravel',
                              iconData: Icons.flight_outlined,
                              isApp: true,
                            ),
                            const MyInfoRow(
                              text: 'GCooking',
                              iconData: Icons.food_bank_outlined,
                              isApp: true,
                            ),
                            const MyInfoRow(
                              text: 'GMedical',
                              iconData: Icons.medical_services_outlined,
                              isApp: true,
                            ),
                            const MyInfoRow(
                              text: 'GWeather',
                              iconData: Icons.sunny_snowing,
                              isApp: true,
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Screens',
                              style: AppStyle.urbanistSemiBold(size: 22),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const MyInfoRow(
                              text: 'Food',
                              iconData: Ionicons.pizza_outline,
                              isApp: false,
                            ),
                            const MyInfoRow(
                              text: 'Health',
                              iconData: FlutterRemix.mental_health_line,
                              isApp: false,
                            ),
                            const MyInfoRow(
                              text: 'Social',
                              iconData: Ionicons.people_outline,
                              isApp: false,
                            ),
                            const MyInfoRow(
                              text: 'Event',
                              iconData: Icons.event,
                              isApp: false,
                            ),
                            const MyInfoRow(
                              text: 'Chat',
                              iconData: Ionicons.chatbubbles_outline,
                              isApp: false,
                            ),
                            const MyInfoRow(
                              text: 'Shop',
                              iconData: Icons.shopping_bag_outlined,
                              isApp: false,
                            ),
                            const MyInfoRow(
                              text: 'And any more...',
                              iconData: Icons.grid_view,
                              isApp: false,
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
