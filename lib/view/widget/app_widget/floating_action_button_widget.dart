import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../core/const/app_colors.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  final String tooltip;
  final IconData icon;
  final void Function()? onPressed;

  const FloatingActionButtonWidget(
      {super.key, this.tooltip = "", required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      tooltip: tooltip,
      child: Icon(
        icon,
        size: 40,
        color: AppColors.background,
      ),
    );
  }
}
