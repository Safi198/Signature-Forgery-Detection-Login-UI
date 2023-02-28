import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:signature_forgery_detection/src/features/core/screens/dashboard/dashboard.dart';
import 'package:signature_forgery_detection/src/constants/text_strings.dart';

import '../../../../constants/images_string.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../../../../constants/images_string.dart';

class UploadPicScreen extends StatelessWidget {
  const UploadPicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Signature Forgery Detector",
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(tDefaultSize),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 120,
                    height: 120,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image(
                          image: AssetImage(tUserProfilePic),
                        )),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Colors.yellowAccent),
                      child: Icon(
                        LineAwesomeIcons.alternate_pencil,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                tProfileHeading,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              Text(
                tProfileSubHeading,
                style: TextStyle(fontSize: 15, color: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        side: BorderSide.none,
                        shape: const StadiumBorder()),
                    onPressed: () {},
                    child: const Text(tUploadPic)),
              ),
              const SizedBox(
                height: 20,
                child: Divider(),
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        side: BorderSide.none,
                        shape: const StadiumBorder()),
                    onPressed: () {
                      Get.to(() => DashBoard());
                    },
                    child: const Text(tSkip)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
