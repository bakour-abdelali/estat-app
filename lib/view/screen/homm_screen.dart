import 'package:estat_app/core/class/handling_data.dart';
import 'package:estat_app/core/const/app_colors.dart';
import 'package:estat_app/core/const/app_links.dart';
import 'package:estat_app/view/widget/app_widget/custem_image_network.dart';
import 'package:estat_app/view/widget/screen/homme_screen/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/screen/homme/homme_page_controller.dart';
import '../widget/screen/homme_screen/hello_widget.dart';
import '../widget/screen/homme_screen/item_category_widget.dart';
import '../widget/screen/homme_screen/search_button.dart';
import '../widget/screen/homme_screen/section_header.dart';

class HommScreen extends StatelessWidget {
  const HommScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HommePageController());
    return GetBuilder<HommePageController>(builder: (controller) {
      return HadlingData(
        stateRaqust: controller.stateRaqust,
        child: Container(
          // color: AppColors.background,
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const HelloWidget(),
                UserProfile(
                  imageUrl:
                      "https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg",
                  userName:
                      "${controller.userPreferences.getLname()!} ${controller.userPreferences.getFname()!}",
                ),
                const SizedBox(
                  height: 20,
                ),
                SearchButton(
                  onTap: () {},
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 100,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.categoryModle.length,
                      itemBuilder: (_, int index) {
                        return ItemCategoryWidget(
                            onTap: () {
                              controller.goTocategoryScreen(index);
                            },
                            modle: controller.categoryModle[index]);
                      }),
                ),
                const SizedBox(
                  height: 20,
                ),
                ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: controller.estateContractTypeModle.length,
                    itemBuilder: (BuildContext _, int index) {
                      final modle = controller.estateContractTypeModle[index];
                      return Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          SectionHeader(
                            title: modle.estateContractTypeName!,
                            onSeeAll: () {
                              print("see all");
                            },
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.all(20),
                              margin: const EdgeInsets.symmetric(vertical: 10),
                              decoration: BoxDecoration(
                                color: AppColors.background,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Column(
                                children: [
                                  CustemImageNetwork(
                                    fit: BoxFit.cover,
                                    height: 150,
                                    width: double.infinity,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(30)),
                                    imageUrl:
                                        "${AppLinkes.imagesServis}/${modle.image!}",
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Text(
                                          modle.estateTitle!,
                                          style: Get.textTheme.titleSmall,
                                        ),
                                      ),
                                      Text(
                                        "\$${modle.estatePrice}",
                                        style: Get.textTheme.titleSmall!
                                            .copyWith(color: AppColors.primary),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.location_on),
                                    title: Text(
                                      "${modle.estateWilaya!}  ${modle.estateDairt!}  ${modle.estateMunicipality!}",
                                      style: Get.textTheme.bodySmall!
                                          .copyWith(fontSize: 18),
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(
                                              Icons.meeting_room,
                                              color: Colors.yellow[700],
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "${modle.estateNumberOfRomms} room",
                                              style: Get.textTheme.bodySmall!
                                                  .copyWith(fontSize: 18),
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(
                                              Icons.bathtub,
                                              color: Colors.yellow[700],
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "${modle.estateNumberOfBathromms} Baths",
                                              style: Get.textTheme.bodySmall!
                                                  .copyWith(fontSize: 18),
                                            )
                                          ],
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(
                                              Icons.straighten,
                                              color: Colors.yellow[700],
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "${modle.estateSize} m²",
                                              style: Get.textTheme.bodySmall!
                                                  .copyWith(fontSize: 18),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    })
              ],
            ),
          ),
        ),
      );
    });
  }
}
