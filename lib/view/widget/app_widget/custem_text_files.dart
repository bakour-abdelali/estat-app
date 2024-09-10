import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/const/app_colors.dart';

class CustemTextFiledWidgetStudent extends StatelessWidget {
  final TextEditingController textEditingController;
  final String? Function(String?)? validator;
  final RegExp regExp;
  final String lableText;
  final String hintText;
  final int? maxlength;
  final IconData? iconData;
  final void Function()? onTap;

  const CustemTextFiledWidgetStudent({
    super.key,
    required this.textEditingController,
    this.validator,
    required this.regExp,
    required this.lableText,
    required this.hintText,
    this.maxlength,
    this.iconData,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      validator: validator,
      maxLength: maxlength,
      inputFormatters: [
        FilteringTextInputFormatter.allow(
            // RegExp(r'[أ-ي]')
            regExp), // السماح بالأرقام فقط
      ],
      decoration: InputDecoration(
        labelText: lableText,
        hintText: hintText,
        prefixIcon: InkWell(
          onTap: onTap,
          child: Icon(
            iconData,
            size: 40,
            color: AppColors.primary,
          ),
        ),
        floatingLabelAlignment: FloatingLabelAlignment.center,
        hintStyle: const TextStyle(fontSize: 16),
      ),
    );
  }
}
