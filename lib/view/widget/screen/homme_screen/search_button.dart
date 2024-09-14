import 'package:flutter/material.dart';

import '../../../../core/const/app_colors.dart';

class SearchButton extends StatelessWidget {
  final void Function()? onTap;
  const SearchButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.background,
            borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(),
                child: const TextField(
                  enabled: false,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search ...",
                      hintStyle: TextStyle(fontSize: 17),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 40,
                      )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
