// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/const/app_colors.dart';

class CustemButtonAuth extends StatelessWidget {
  final void Function()? onPressed;
  final String title;
  const CustemButtonAuth({
    Key? key,
    required this.onPressed,
    required this.title,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          padding: const EdgeInsets.all(15),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: Get.textTheme.titleLarge!
              .copyWith(fontSize: 18, color: Colors.white),
        ));
  }
}
