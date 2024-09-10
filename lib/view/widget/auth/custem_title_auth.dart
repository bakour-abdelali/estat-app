// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustemTitleAuth extends StatelessWidget {
  final String title;
  const CustemTitleAuth({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        title,
        style: Get.textTheme.titleLarge,
      ),
    );
  }
}
