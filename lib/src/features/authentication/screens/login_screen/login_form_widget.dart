import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:signature_forgery_detection/src/features/authentication/screens/forgot_password_screen/forgot_password_options/forgot_password_model_bottom_sheet.dart';
import 'package:signature_forgery_detection/src/features/core/screens/dashboard/dashboard.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../forgot_password_screen/forgot_password_options/forgot_password_btn_widget.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: tFormHeight - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.person_outline_outlined,
                    color: tSecondaryColor,
                  ),
                  labelText: 'E-mail',
                  hintText: 'E-mail',
                  hintStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: tFormHeight,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.fingerprint,
                  color: tSecondaryColor,
                ),
                labelText: 'Password',
                hintText: 'Password',
                hintStyle: TextStyle(color: Colors.black),
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.remove_red_eye_sharp,
                    color: tSecondaryColor,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  ForgotPassword.buildShowModalBottomSheet(context);
                },
                child: Text(tForgetPassword),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(tSecondaryColor),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder()),
                  side: MaterialStateProperty.all(
                    BorderSide(color: tSecondaryColor),
                  ),
                  padding: MaterialStateProperty.all(
                    EdgeInsets.symmetric(vertical: tButtonHeight),
                  ),
                ),
                onPressed: () {
                  Get.to(()=>DashBoard());
                },
                child: Text(
                  tLogin.toUpperCase(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
