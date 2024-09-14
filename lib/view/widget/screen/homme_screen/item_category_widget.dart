import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/const/app_colors.dart';

class ItemCategoryWidget extends StatelessWidget {
  final void Function()? onTap;
  const ItemCategoryWidget({super.key, this.onTap});

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
          child: CachedNetworkImage(
            imageUrl:
                "https://i0.wp.com/static.vecteezy.com/system/resources/previews/008/326/114/non_2x/real-estate-building-logo-icon-design-free-vector.jpg?ssl=1",
          ),
        ),
      ),
    );
  }
}
