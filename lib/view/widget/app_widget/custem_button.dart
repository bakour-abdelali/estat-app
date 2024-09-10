import 'package:flutter/material.dart';

import '../../../core/const/app_colors.dart';

class CustemButton extends StatelessWidget {
  final void Function()? onPressed;
  final String titel;

  const CustemButton({super.key, required this.onPressed, required this.titel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: Size(10, 10),
          backgroundColor: AppColors.primary, // لون الزر عندما يكون مفعلاً
          // ignore: deprecated_member_use
          // primary: AppColors.primary, // لون الزر عندما يكون مفعلاً
          // ignore: deprecated_member_use
          // onPrimary: Colors.white, // لون النص داخل الزر
          elevation: 5, // ارتفاع الظل الذي يظهر عندما يكون الزر مفعلاً
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // يجعل الزر بزوايا مدورة
          ),

          padding: const EdgeInsets.symmetric(
              vertical: 15, horizontal: 30), // تعديل حجم الزر
        ),
        child: Text(
          titel,
          style: const TextStyle(
            fontSize: 25, // حجم الخط
            fontWeight: FontWeight.bold, // سمك الخط
          ),
        ),
      ),
    );
  }
}
