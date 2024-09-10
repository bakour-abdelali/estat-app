import 'package:flutter/material.dart';

import '../../../core/const/app_colors.dart';

class CustemLodingWIdget extends StatelessWidget {
  const CustemLodingWIdget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: AppColors.primary,
      ),
    );
  }
}
