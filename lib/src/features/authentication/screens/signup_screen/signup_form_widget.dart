import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:signature_forgery_detection/src/features/core/screens/upload_pic_screen/upload_pic_screen.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Full Name",
                prefixIcon: Icon(
                  Icons.person_outline_rounded,
                  color: tSecondaryColor,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "E-mail",
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: tSecondaryColor,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Phone",
                prefixIcon: Icon(
                  Icons.phone,
                  color: tSecondaryColor,
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Password",
                prefixIcon: Icon(
                  Icons.fingerprint,
                  color: tSecondaryColor,
                ),
                suffixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.remove_red_eye_sharp,
                    color: tSecondaryColor,
                  ),
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: tFormHeight - 10,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateProperty.all(tSecondaryColor),
                  shape: MaterialStateProperty.all(
                      RoundedRectangleBorder()),
                  side: MaterialStateProperty.all(
                    BorderSide(color: tSecondaryColor),
                  ),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: tButtonHeight),
                  ),
                ),
                onPressed: () {
                  Get.to(()=>UploadPicScreen());
                },
                child: Text(
                  tSignup.toUpperCase(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
