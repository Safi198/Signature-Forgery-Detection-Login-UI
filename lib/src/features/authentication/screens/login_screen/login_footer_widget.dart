import 'package:flutter/material.dart';

import '../../../../constants/images_string.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../signup_screen/signup_screen.dart';
class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
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
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SignUpScreen(),
              ),
            );
          },
          child: Text.rich(
              TextSpan(
                  text: tDontHaveAnAccount+"  ",style: TextStyle(color: Colors.black),
                  children: [
                    TextSpan(text: tSignup.toUpperCase(),style: TextStyle(color: Colors.blue))
                  ]
              )
          ),
        ),
      ],
    );
  }
}
