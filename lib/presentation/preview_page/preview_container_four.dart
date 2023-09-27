import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:gstore_documentation/presentation/app_style.dart';
import 'package:gstore_documentation/widgets/buttons.dart';

class PreviewContainerFour extends StatelessWidget {
  const PreviewContainerFour({super.key});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Container(
      height: 300,
      width: width,
      decoration: BoxDecoration(color: Colors.blueAccent.shade100.withOpacity(.1)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Build your Android and iOS (Flutter) Apps Today',style: AppStyle.urbanistBold(size:30 ),),
          const SizedBox(height: 15,),
          Text('Purchase G Store to get a Beautiful & Biggest UI Kit',style: AppStyle.urbanistSemiBold(size: 16,color: Colors.grey.shade700),),
          const SizedBox(height: 30,),
          const MyElevatedButton(
              iconData: Icons.shopping_bag_outlined,
              text: 'Buy Now \$99',
              buttonColor: Colors.orange,
              textColor: Colors.white,
              iconColor: Colors.white)
        ],
      ),
    );
  }
}
