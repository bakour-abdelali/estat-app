// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CutemBodyAuth extends StatelessWidget {
  final String body;
  const CutemBodyAuth({
    Key? key,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      body,
      style: Get.textTheme.bodyLarge!.copyWith(
        fontSize: 16,
      ),
    );
  }
}
