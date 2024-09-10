// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustemSizeHeight extends StatelessWidget {
  final double height;

  const CustemSizeHeight({
    Key? key,
    this.height = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}
