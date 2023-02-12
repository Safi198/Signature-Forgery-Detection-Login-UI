import 'package:flutter/material.dart';
import 'package:signature_forgery_detection/src/common_widgets/form/form_header_widget.dart';
import 'package:signature_forgery_detection/src/constants/images_string.dart';
import 'package:signature_forgery_detection/src/constants/sizes.dart';
import 'package:signature_forgery_detection/src/constants/text_strings.dart';
import 'package:signature_forgery_detection/src/features/authentication/screens/signup_screen/signup_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(tDefaultSize),
              child: Column(
                children: [
                  const FormHeaderWidget(
                    image: tOnBoardingImage1,
                    title: tSignupTitle,
                    subtitle: tSignupSubTitle,
                  ),
                  SignUpFormWidget(),
                  Column(
                    children: [
                      const Text('OR'),
                      const SizedBox(
                        height: tFormHeight - 20,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton.icon(
                          icon: Image.asset(
                            tGoogleLogo,
                            width: 20.0,
                          ),
                          onPressed: () {},
                          label: Text(
                            tSignInWithGoogle.toUpperCase(),
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: tFormHeight - 20,
                      ),
                      TextButton(
                        onPressed: null,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: tAlreadyHaveAnAccount+"   ",
                                style: TextStyle(color: Colors.black),
                              ),
                              TextSpan(
                                text: tLogin.toUpperCase(),
                                style: TextStyle(color: Colors.blue),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
