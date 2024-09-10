import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../const/app_colors.dart';

class CustemImageNetworek extends StatelessWidget {
  final String link;
  final BoxFit fit;

  const CustemImageNetworek(
      {super.key, required this.link, this.fit = BoxFit.contain});
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      fit: fit,
      //fit: BoxFit.cover,

      // height: 300,
      // width: 150,
      // width: double.infinity,
      // height: double.infinity,
      imageUrl: link,
      placeholder: (context, url) => const Center(
          child: CircularProgressIndicator(
        color: AppColors.primary,
      )),
      errorWidget: (context, url, error) => const Center(
          child: Icon(
        Icons.error,
        size: 70,
      )),
    );
  }
}
