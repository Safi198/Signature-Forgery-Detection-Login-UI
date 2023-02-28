import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:signature_forgery_detection/src/constants/sizes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// import 'package:signature_forgery_detection/src/features/authentication/models/user_model.dart';
// import 'package:signature_forgery_detection/src/features/core/controllers/profile_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../../../constants/colors.dart';
import '../../../../constants/images_string.dart';
import '../../../../constants/text_strings.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(ProfileController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.to(()=>UpdateProfileScreen());
          },
          icon: const Icon(
            LineAwesomeIcons.angle_left,
            color: Colors.black,
          ),
        ),
        title: Text(
          tEditProfile,
          style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                LineAwesomeIcons.moon,
                color: Colors.black,
              ))
        ],
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
                        LineAwesomeIcons.camera,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      // controller: controller.fullName,
                      decoration: InputDecoration(
                        labelText: "Full Name",
                        prefixIcon: Icon(
                          Icons.person_outline_rounded,
                          color: tSecondaryColor,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100)),
                      ),
                    ),
                    SizedBox(
                      height: tFormHeight - 20,
                    ),
                    TextFormField(
                      // controller: controller.email,
                      decoration: InputDecoration(
                        labelText: "E-mail",
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: tSecondaryColor,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100)),
                      ),
                    ),
                    SizedBox(
                      height: tFormHeight - 20,
                    ),
                    TextFormField(
                      // controller: controller.phoneNo,
                      decoration: InputDecoration(
                        labelText: "Phone",
                        prefixIcon: Icon(
                          Icons.phone,
                          color: tSecondaryColor,
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100)),
                      ),
                    ),
                    SizedBox(
                      height: tFormHeight - 20,
                    ),
                    TextFormField(
                      // controller: controller.password,
                      decoration: InputDecoration(
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
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100)),
                      ),
                    ),
                    const SizedBox(
                      height: tFormHeight,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              side: BorderSide.none,
                              shape: const StadiumBorder()),
                          onPressed: () {
                            Get.to(() => UpdateProfileScreen());
                          },
                          child: const Text(tEditProfile)),
                    ),
                    const SizedBox(
                      height: tFormHeight,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(TextSpan(
                            text: tJoined + "    ",
                            style: TextStyle(fontSize: 12),
                            children: [
                              TextSpan(
                                  text: tJoinedAt,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12))
                            ])),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(tDelete),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.yellowAccent,
                              foregroundColor: Colors.red,
                              shape: StadiumBorder(),
                              side: BorderSide.none),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
