import 'package:estat_app/view/widget/screen/my_homme_screen/item_navigator_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../../controller/screen/homme_screen_controller.dart';

class ButtonNavigator extends StatelessWidget {
  const ButtonNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      shadowColor:
          Colors.black.withOpacity(0.7), // يمكنك تعديل اللون والشفافية للظل,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        child: BottomAppBar(
            // color: AppColors.background,
            // color: AppColors.primary,
            // color: Colors.white70,
            clipBehavior: Clip.antiAlias,
            notchMargin: 10,
            shape: const CircularNotchedRectangle(),
            child: GetBuilder<HommeScreenControllerImp>(builder: (controller) {
              return Row(
                children: [
                  ...List.generate(controller.screen.length + 1, (index) {
                    int i = index > 2 ? index - 1 : index;
                    return index == 2
                        ? const Spacer()
                        : ItemNavigatorBar(
                            onPressed: () {
                              controller.changePage(i);
                            },
                            iconData: controller.navigtor[i].iconData,
                            activ: controller.curntPage == i,
                          );
                  })
                ],
              );
            })),
      ),
    );
  }
}
