

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:signature_forgery_detection/src/constants/colors.dart';
// import 'package:signature_forgery_detection/src/features/authentication/models/user_model.dart';
import 'package:signature_forgery_detection/src/features/core/screens/profile/profile_screen.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
// import '../../controllers/profile_controller.dart';

class UserManagement extends StatelessWidget {
  const UserManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(ProfileController());
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
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
            child: FutureBuilder<List>(
              // future: controller.getAllUser(),
              builder: (context,snapshot){
                if(snapshot.connectionState==ConnectionState.done){
                  // print(controller.getAllUser().toString());
                  if(snapshot.hasData){
                    // print(controller.getAllUser().toString());
                    final data=snapshot.data!;
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data!.length,
                      itemBuilder: (c,index){
                        return Column(
                          children: [
                            ListTile(
                              iconColor: tSecondaryColor,
                              tileColor: Colors.blue.withOpacity(0.1),
                              leading: const Icon(LineAwesomeIcons.user_1),
                              title: Text("Name: ${data[index]?.fullName ?? ""}"),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(data[index]?.phoneNo ?? ''),
                                  Text(data[index]?.email ?? ''),
                                ],
                              ),
                            )
                          ],
                        );
                      },
                    );
                  }
                  else if (snapshot.hasError){
                    return Center(child: Text(snapshot.error.toString()));
                  }
                  else{
                    return const Center(child: Text("Something went Wrong."));
                  }
                }
                else{
                  return Center(child: CircularProgressIndicator());
                }
              },

            ),
        ),
      ),
    );
  }
}