import 'package:flutter/material.dart';
import 'package:travel/const/color.dart';
import 'package:travel/const/image.dart';
import 'package:travel/widget/app_button.dart';
import 'package:travel/widget/app_large_text.dart';
import 'package:travel/widget/app_text.dart';
import 'package:travel/widget/button.dart';
import 'package:velocity_x/velocity_x.dart';

class DetailsView extends StatefulWidget {
  const DetailsView({super.key});

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  int gottenStar = 4;
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 350,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(AppAssets.travel5),
                    fit: BoxFit.cover,
                  )),
                )),
            Positioned(
                left: 20,
                top: 50,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                      color: Colors.white,
                      iconSize: 30,
                    )
                  ],
                )),
            Positioned(
                top: 320,
                child: Container(
                  padding: const EdgeInsets.only(right: 20, left: 20, top: 10),
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(
                            text: "Rifayet",
                            color: Colors.black54.withOpacity(0.8),
                          ),
                          AppLargeText(
                            text: "\$ 290",
                            color: AppColor.mainColor,
                          )
                        ],
                      ),
                      10.heightBox,
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: AppColor.mainColor,
                          ),
                          5.widthBox,
                          AppText(
                            text: "USA, California",
                            color: AppColor.textColor1,
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Wrap(
                            children: List.generate(5, (index) {
                              return Icon(
                                Icons.star,
                                color: index < gottenStar
                                    ? AppColor.starColor
                                    : AppColor.textColor2,
                              );
                            }),
                          ),
                          10.widthBox,
                          AppText(
                            text: "(4.0)",
                            color: AppColor.textColor2,
                          )
                        ],
                      ),
                      20.heightBox,
                      AppLargeText(
                        text: "People",
                        color: Colors.black.withOpacity(0.8),
                        size: 20,
                      ),
                      5.heightBox,
                      AppText(
                        text: "Number of people in your group",
                        color: AppColor.mainColor,
                      ),
                      10.heightBox,
                      Wrap(
                          children: List.generate(5, (index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Container(
                            margin: const EdgeInsets.only(right: 10),
                            child: AppButton(
                                color: selectedIndex == index
                                    ? Colors.white
                                    : Colors.black,
                                borderColor: selectedIndex == index
                                    ? AppColor.mainColor
                                    : AppColor.buttonBg,
                                backgroundColor: selectedIndex == index
                                    ? AppColor.mainColor
                                    : AppColor.buttonBg,
                                size: 50,
                                text: (index + 1).toString()),
                          ),
                        );
                      })),
                      20.heightBox,
                      AppLargeText(
                        text: "Description",
                        color: Colors.black.withOpacity(0.8),
                        size: 20,
                      ),
                      AppText(
                        text:
                            "Travelling is an amazing way to learn a lot of things in life. A lot of people around the world travel every year to many places.",
                        color: AppColor.mainTextColor,
                      ),
                    ],
                  ),
                )),
            10.heightBox,
            Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              child: Row(children: [
                AppButton(
                    color: AppColor.textColor1,
                    backgroundColor: Colors.white,
                    borderColor: AppColor.mainColor,
                    isIcon: true,
                    icon: Icons.favorite_border,
                    size: 60),
                20.widthBox,
                ResponsiveButton(
                  isResponsive: true,
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
