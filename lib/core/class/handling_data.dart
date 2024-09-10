import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';

import '../const/app_images.dart';
import 'state_raqust.dart';

class HadlingData extends StatelessWidget {
  final StateRaqust stateRaqust;
  final Widget child;

  const HadlingData({
    super.key,
    required this.stateRaqust,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return stateRaqust == StateRaqust.Laoding
        ? Lottie.asset(AppImages.loding)
        : stateRaqust == StateRaqust.ofLineInternat
            ? Lottie.asset(AppImages.noIntarnat)
            : stateRaqust == StateRaqust.fuler
                ? Lottie.asset(
                    AppImages.isempty,
                    alignment: Alignment.center,
                  )
                : stateRaqust == StateRaqust.fulerServer
                    ? ListView(children: [Lottie.asset(AppImages.pagenot)])
                    : child;
  }
}
