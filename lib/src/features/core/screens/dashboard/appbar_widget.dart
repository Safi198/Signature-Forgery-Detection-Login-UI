import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:signature_forgery_detection/src/features/core/screens/profile/profile_screen.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/images_string.dart';


class DashBoardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DashBoardAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(
        Icons.menu,
        color: Colors.black,
      ),
      title: Text(
        "Signature Forgery Detector",
        style: TextStyle(
            fontSize: 18,
            color: Colors.black
        ),
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 7),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: tCardBgColor,
          ),
          child: IconButton(
            onPressed: () {
              Get.to(()=>ProfileScreen());
            },
            icon: Image.asset(
              tUserProfileIcon,
              width: 80,
            ),
          ),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(55.0);
}
