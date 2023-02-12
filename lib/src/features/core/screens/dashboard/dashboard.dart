import 'package:flutter/material.dart';
import 'package:signature_forgery_detection/src/constants/colors.dart';
import 'package:signature_forgery_detection/src/constants/images_string.dart';

import '../../../../constants/sizes.dart';
import 'appbar_widget.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DashBoardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(tDashBoardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Hey, Shaheer Alam")
            ],
          ),
        ),
      ),
    );
  }
}
