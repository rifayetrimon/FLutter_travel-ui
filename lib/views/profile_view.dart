import 'package:flutter/material.dart';
import 'package:travel/const/image.dart';
import 'package:travel/widget/app_large_text.dart';
import 'package:travel/widget/app_text.dart';
import 'package:velocity_x/velocity_x.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            child: Image.asset(AppAssets.travel2),
          ),
          title: AppLargeText(text: "Name"),
          subtitle: AppText(text: "user_emil@gmail.com"),
        ),
        const Divider(),
        10.heightBox,
        //   ListView(
        //     shrinkWrap: true,
        //     children: List.generate(
        //         settingList.length,
        //         (index) => ListTile(
        //               onTap: () {},
        //               leading: Icon(
        //                 settingsListIcon[index],
        //                 color: AppColors.bgNavColor,
        //               ),
        //               title: AppStyles.bold(title: settingList[index]),
        //             )),
        //   )
      ],
    );
  }
}
