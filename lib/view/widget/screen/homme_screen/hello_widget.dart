import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelloWidget extends StatelessWidget {
  const HelloWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      alignment: Alignment.centerLeft,
      child: Text(
        "Hello !",
        style: Get.textTheme.bodyMedium,
        textAlign: TextAlign.start,
      ),
    );
  }
}
