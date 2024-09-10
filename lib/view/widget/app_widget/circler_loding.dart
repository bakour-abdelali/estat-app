import 'package:flutter/material.dart';

import '../../../core/const/app_colors.dart';

class CirclerLoding extends StatelessWidget {
  const CirclerLoding({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: AppColors.primary,
      ),
    );
  }
}
