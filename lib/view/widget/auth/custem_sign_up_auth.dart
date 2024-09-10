// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/const/app_colors.dart';

class CustemSignUpAuth extends StatelessWidget {
  final String title;
  final String body;
  final void Function() onPressed;
  const CustemSignUpAuth({
    Key? key,
    required this.title,
    required this.body,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: Get.textTheme.headlineSmall!.copyWith(fontSize: 14),
        ),
        const SizedBox(
          width: 10,
        ),
        TextButton(
            onPressed: onPressed,
            child: Text(
              body,
              style: Get.textTheme.headlineSmall!
                  .copyWith(fontSize: 14, color: AppColors.primary),
            ))
      ],
    );
  }
}
