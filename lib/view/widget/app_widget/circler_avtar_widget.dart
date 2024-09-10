// // ignore_for_file: must_be_immutable

// import 'package:flutter/material.dart';
// import 'package:school_manger_teacher_app/data/modle/teacher_modle.dart';

// import '../../../core/const/app_colors.dart';
// import '../../../core/const/app_links.dart';

import 'package:flutter/material.dart';

import '../../../core/const/app_links.dart';

class CirclerAvtarWidget extends StatelessWidget {
  final String linkImage;
  final void Function()? onTap;

  final double radius;
  const CirclerAvtarWidget(
      {super.key, this.radius = 30, required this.linkImage, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        radius: radius,
        // borderRadius: BorderRadius.circular(80.0),
        backgroundImage: NetworkImage('${AppLinkes.imagesServis}/$linkImage'),
        // child: CustemImageNetworek(
        //     // fit: BoxFit.fill,
        //     link: '${AppLinkes.imagesServis}/$linkImage')
      ),
    );
  }
}
