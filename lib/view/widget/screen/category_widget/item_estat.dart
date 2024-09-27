import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/const/app_colors.dart';
import '../../../../core/const/app_links.dart';
import '../../../../data/modle/estate_modle.dart';
import '../../app_widget/custem_image_network.dart';

class ItemEstat extends StatelessWidget {
  final EstateModle modle;
  final void Function()? onTap;

  const ItemEstat({super.key, required this.modle, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(5),
        // margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 5,
              child: CustemImageNetwork(
                fit: BoxFit.cover,
                width: double.infinity,
                height: 300,
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                imageUrl: "${AppLinkes.imagesServis}/${modle.fileLinke ?? ''}",
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Center(
              child: Text(
                "${modle.estateTitle}",
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              "\$${modle.estatePrice}",
              textAlign: TextAlign.start,
              style: Get.textTheme.titleSmall,
            )
          ],
        ),
      ),
    );
  }
}
