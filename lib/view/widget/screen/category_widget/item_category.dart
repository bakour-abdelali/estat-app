import 'package:flutter/material.dart';

import '../../../../core/const/app_colors.dart';
import '../../../../core/funcion/chang_long.dart';
import '../../../../data/modle/category_modle.dart';

class ItemCategory extends StatelessWidget {
  final GlobalKey<State<StatefulWidget>> keyInkWell;
  final void Function()? onTap;
  final bool isActive;
  final CategoryModle modle;
  const ItemCategory(
      {super.key,
      required this.keyInkWell,
      this.onTap,
      required this.isActive,
      required this.modle});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return InkWell(
      key: keyInkWell,
      onTap: onTap,
      child: Container(
        // height: 40,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          border: isActive
              ? const Border(
                  bottom: BorderSide(color: AppColors.primary, width: 3))
              : null,
        ),
        child:
            Text(changLong(en: modle.categoryName!, ar: modle.categoryNameAr!)),
      ),
    );
  }
}
