import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/const/app_colors.dart';
import '../../app_widget/custem_image_network.dart';
import 'TitleWithIcon.dart';

class RealEstateItem extends StatelessWidget {
  const RealEstateItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          children: [
            const CustemImageNetwork(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              imageUrl:
                  "https://img.pikbest.com/wp/202345/real-estate-house-property-digital-depiction-of-a-website-featuring-an-isolated-3d-representing-residential-symbolizing-online-selling-agency-with-cottage-concept-in-rendering-web-page-illustration_9615825.jpg!sw800",
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "digital depiction",
                  style: Get.textTheme.titleSmall,
                ),
                Text(
                  "\$25000",
                  style: Get.textTheme.titleSmall!
                      .copyWith(color: AppColors.primary),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: const Icon(Icons.location_on),
              title: Text(
                'blaiba',
                style: Get.textTheme.bodySmall!.copyWith(fontSize: 18),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TitleWithIcon(
                  title: "3 room",
                  iconData: Icons.meeting_room_rounded,
                ),
                TitleWithIcon(
                  title: "2 Baths",
                  iconData: Icons.bathtub,
                ),
                TitleWithIcon(
                  title: "2 Baths",
                  iconData: Icons.straighten,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
