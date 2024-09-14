import 'package:flutter/material.dart';

import '../../../../core/const/app_colors.dart';

// ignore: must_be_immutable
class ItemNavigatorBar extends StatelessWidget {
  final void Function()? onPressed;
  final IconData iconData;

  bool activ;
  ItemNavigatorBar({
    super.key,
    required this.onPressed,
    required this.iconData,
    required this.activ,
  });

  @override
  Widget build(_) {
    return Container(
      height: double.infinity,
      // margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 1),
      decoration: activ
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(500),
              color: AppColors.primary.withOpacity(0.2),
            )
          : null,
      child: MaterialButton(
        minWidth: 40, // عرض الزر ليكون أطول
        height: 100, // ارتفاع الزر ليكون رفيع
        onPressed: onPressed,
        child: Icon(
          iconData,
          color: AppColors.primary,
          size: 30,
        ),
      ),
    );
  }
}
