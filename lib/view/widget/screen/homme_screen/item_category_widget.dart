import 'package:estat_app/core/const/app_links.dart';

import 'package:flutter/material.dart';

import '../../../../core/const/app_colors.dart';
import '../../../../core/shard/custem_image_networek.dart';
import '../../../../data/modle/category_modle.dart';

class ItemCategoryWidget extends StatelessWidget {
  final void Function()? onTap;
  final CategoryModle modle;
  const ItemCategoryWidget({super.key, this.onTap, required this.modle});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Container(
          // margin: const EdgeInsets.all(5),
          padding:
              const EdgeInsets.only(bottom: 10, left: 15, right: 15, top: 10),
          decoration: BoxDecoration(
            color: Color(0xFFF8F6F9),
            // color: Colors.red,
            borderRadius: BorderRadius.circular(20),
          ),
          child: CustemImageNetworek(
            link: "${AppLinkes.imagesServis}/${modle.categoryImage!}",
          ),
        ),
      ),
    );
  }
}
