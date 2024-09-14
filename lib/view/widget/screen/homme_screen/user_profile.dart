import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app_widget/custem_image_network.dart';

class UserProfile extends StatelessWidget {
  final String userName;
  final String imageUrl;
  const UserProfile(
      {super.key, required this.userName, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          userName,
          style: Get.textTheme.titleMedium!.copyWith(fontSize: 30),
        ),
        CustemImageNetwork(
          borderRadius: BorderRadius.circular(30),
          height: 65,
          width: 60,
          imageUrl: imageUrl,
        )
      ],
    );
  }
}
