import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TitleWithIcon extends StatelessWidget {
  final String title;
  final IconData iconData;
  const TitleWithIcon({super.key, required this.title, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          iconData,
          color: Colors.yellow[700],
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          title,
          style: Get.textTheme.bodySmall!.copyWith(fontSize: 18),
        )
      ],
    );
  }
}
