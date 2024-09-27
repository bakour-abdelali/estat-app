import 'package:estat_app/core/class/handling_data.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../controller/screen/category_controller.dart';

import '../widget/screen/category_widget/gridDelegate.dart';
import '../widget/screen/category_widget/item_category.dart';
import '../widget/screen/category_widget/item_estat.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CategoryController());
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 40,
            child: GetBuilder<CategoryController>(
                id: "index",
                builder: (categoryController) {
                  return ListView.builder(
                    controller: categoryController.scrollController,
                    scrollDirection: Axis.horizontal,
                    itemCount: categoryController.categoryModle.length,
                    itemBuilder: (BuildContext _, int index) {
                      final modle = categoryController.categoryModle[index];
                      return ItemCategory(
                        isActive: index == categoryController.indexActive,
                        keyInkWell: categoryController.itemKeys[index],
                        modle: modle,
                        onTap: () {
                          categoryController.changeIndex(index);
                        },
                      );
                    },
                  );
                }),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: GetBuilder<CategoryController>(builder: (controller) {
              return HadlingData(
                onRefresh: () async {
                  controller.refrachData();
                },
                stateRaqust: controller.stateRaqust,
                child: GridView.custom(
                  shrinkWrap:
                      true, // تقليص GridView إلى الحجم المطلوب بناءً على محتواه
                  physics:
                      const NeverScrollableScrollPhysics(), // إلغاء التمرير الخاص بـ GridView
                  gridDelegate: gridDelegate,
                  childrenDelegate: SliverChildBuilderDelegate(
                    childCount: controller.modles.length,
                    (_, index) {
                      return ItemEstat(
                        modle: controller.modles[index],
                      );
                    },
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
