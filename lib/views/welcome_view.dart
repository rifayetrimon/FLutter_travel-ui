import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel/const/color.dart';
import 'package:travel/const/image.dart';
import 'package:travel/const/list.dart';
import 'package:travel/views/home_page.dart';
import 'package:travel/views/home_view.dart';
import 'package:travel/widget/app_large_text.dart';
import 'package:travel/widget/app_text.dart';
import 'package:travel/widget/button.dart';
import 'package:velocity_x/velocity_x.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: 3,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(travelWallList[index]),
                      fit: BoxFit.cover)),
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppLargeText(text: "Trips"),
                          AppText(
                            text: "Desert",
                            size: 30,
                          ),
                          20.heightBox,
                          Container(
                            width: 250,
                            child: AppText(
                              text:
                                  "Mountain hikes give you an incredible sense of freedom along with endureance test",
                              color: AppColor.textColor2,
                              size: 14,
                            ),
                          ),
                          40.heightBox,
                          GestureDetector(
                              onTap: () {
                                Get.to(() => HomeView());
                              },
                              child: ResponsiveButton(
                                width: 120,
                              )),
                        ],
                      ),
                      Column(
                        children: List.generate(3, (indexDots) {
                          return Container(
                            margin: const EdgeInsets.only(bottom: 2),
                            width: 8,
                            height: index == indexDots ? 25 : 8,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: index == indexDots
                                  ? AppColor.mainColor
                                  : AppColor.mainColor.withOpacity(0.3),
                            ),
                          );
                        }),
                      )
                    ]),
              ),
            );
          }),
    );
  }
}
