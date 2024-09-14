import 'package:estat_app/core/const/app_colors.dart';
import 'package:estat_app/view/widget/app_widget/custem_image_network.dart';
import 'package:estat_app/view/widget/screen/homme_screen/user_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/screen/homme_screen/hello_widget.dart';
import '../widget/screen/homme_screen/item_category_widget.dart';
import '../widget/screen/homme_screen/search_button.dart';
import '../widget/screen/homme_screen/section_header.dart';

class HommScreen extends StatelessWidget {
  const HommScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: AppColors.background,
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const HelloWidget(),
            const UserProfile(
              imageUrl:
                  "https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg",
              userName: "Jumes Butler",
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
                  itemCount: 10,
                  itemBuilder: (_, int index) {
                    return const ItemCategoryWidget();
                  }),
            ),
            const SizedBox(
              height: 20,
            ),
            SectionHeader(
              title: "All Property",
              onSeeAll: () {},
            ),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (BuildContext _, int index) {
                  return InkWell(
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
                          const CustemImageNetwork(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            imageUrl:
                                "https://img.pikbest.com/wp/202345/real-estate-house-property-digital-depiction-of-a-website-featuring-an-isolated-3d-representing-residential-symbolizing-online-selling-agency-with-cottage-concept-in-rendering-web-page-illustration_9615825.jpg!sw800",
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "digital depiction",
                                style: Get.textTheme.titleSmall,
                              ),
                              Text(
                                "\$25000",
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
                              'blaiba',
                              style: Get.textTheme.bodySmall!
                                  .copyWith(fontSize: 18),
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      "4 room",
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
                                      "2 Baths",
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
                                      "250 m²",
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
                  );
                })
          ],
        ),
      ),
    );
  }
}
