import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/const/app_colors.dart';

class CustomButtonLanguge extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const CustomButtonLanguge(
      {super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 50),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 90),
        color: AppColors.primary,
        child: Text(
          text,
          style:
              Get.textTheme.bodyLarge!.copyWith(color: AppColors.colorTextWhit),
        ),
      ),
    );
  }
}
