import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../const/app_images.dart';
import 'state_raqust.dart';

class HadlingData extends StatelessWidget {
  final StateRaqust stateRaqust;
  final Widget child;
  final Future<void> Function()? onRefresh; // خاصية اختيارية للتحديث

  const HadlingData({
    super.key,
    required this.stateRaqust,
    required this.child,
    this.onRefresh, // تجعل خاصية التحديث اختيارية
  });

  @override
  Widget build(BuildContext context) {
    Widget content = stateRaqust == StateRaqust.Laoding
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

    // إذا كانت خاصية onRefresh موجودة، نستخدم RefreshIndicator
    return onRefresh != null
        ? RefreshIndicator(
            onRefresh: onRefresh!, // تفعيل التحديث عند السحب
            child:
                content is ListView ? content : ListView(children: [content]),
          )
        : content;
  }
}
