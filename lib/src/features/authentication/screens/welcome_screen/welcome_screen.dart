import 'package:flutter/material.dart';
import 'package:signature_forgery_detection/src/constants/colors.dart';
import 'package:signature_forgery_detection/src/constants/images_string.dart';
import 'package:signature_forgery_detection/src/constants/sizes.dart';
import 'package:signature_forgery_detection/src/constants/text_strings.dart';
import 'package:signature_forgery_detection/src/features/authentication/screens/login_screen/login_screen.dart';
import 'package:signature_forgery_detection/src/features/authentication/screens/signup_screen/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(tDefaultSize),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: AssetImage(tWelcomeScreenImage),
              height: height * 0.5,
            ),
            Column(
              children: [
                Text(
                  tWelcomeTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 25, color: Colors.black, fontFamily: 'Lobster'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  tWelcomeSubTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        shape: RoundedRectangleBorder(),
                        shadowColor: tSecondaryColor,
                        side: BorderSide(color: tSecondaryColor),
                        padding: EdgeInsets.symmetric(vertical: tButtonHeight)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    child: Text(
                      tLogin.toUpperCase(),
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(tSecondaryColor),
                        shape:
                            MaterialStateProperty.all(RoundedRectangleBorder()),
                        side: MaterialStateProperty.all(
                          BorderSide(color: tSecondaryColor),
                        ),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(vertical: tButtonHeight))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpScreen(),
                        ),
                      );
                    },
                    child: Text(tSignup.toUpperCase()),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
// Lobster
// ElevatedButton.styleFrom(
// shape: RoundedRectangleBorder(),
// shadowColor: tSecondaryColor,
// surfaceTintColor: tWhiteColor,
// side: BorderSide(color: tSecondaryColor),
// padding: EdgeInsets.symmetric(vertical: tButtonHeight)
// ),
