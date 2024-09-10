// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/const/app_colors.dart';

// ignore: must_be_immutable
class CustemTextFiled extends StatelessWidget {
  void Function(String)? onChanged;
  final String hintText;
  final String lable;
  final IconData icons;
  final String? Function(String?)? valdit;
  final TextEditingController? mycontrole;
  bool isNumber = false;
  final bool? obscureText;
  final void Function()? onTap;
  CustemTextFiled({
    Key? key,
    this.isNumber = false,
    this.onTap,
    this.obscureText,
    required this.valdit,
    required this.hintText,
    this.onChanged,
    required this.lable,
    required this.icons,
    required this.mycontrole,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        onChanged: onChanged,
        obscureText: obscureText == null || obscureText == false
            ? false
            : true, //== null || false ? true : false,
        keyboardType: isNumber
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        controller: mycontrole,
        validator: valdit,
        style: const TextStyle(fontSize: 18, color: AppColors.colorTextNormal),
        decoration: InputDecoration(
            label: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                lable,
                style: Get.textTheme.bodyLarge,
              ),
            ),
            hintText: hintText,
            hintStyle: Get.textTheme.bodyLarge!.copyWith(fontSize: 17),
            suffixIcon: InkWell(
              onTap: onTap,
              child: Icon(
                icons,
                size: 35,
              ),
            ),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            )),
      ),
    );
  }
}
