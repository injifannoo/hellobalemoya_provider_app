import 'package:provider_app_orientation/UI/auth/signup.dart';
import 'package:provider_app_orientation/UI/auth/verify.dart';
import 'package:provider_app_orientation/UI/search/widgets/custom_field.dart';

import 'package:provider_app_orientation/constants/app_constants.dart';
import 'package:provider_app_orientation/controllers/exports.dart';

import 'package:provider_app_orientation/common/app_bar.dart';
import 'package:provider_app_orientation/common/custom_btn.dart';

import 'package:provider_app_orientation/common/exports.dart';
import 'package:provider_app_orientation/common/height_spacer.dart';
import 'package:provider_app_orientation/common/width_spacer.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController phone = TextEditingController();

  @override
  void dispose() {
    phone.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double headersize;
    double buttonsize;
    double pagepadding;

    double loginwidth;
    double buttonheight;

    double toolbarheight;
    double sWidth = MediaQuery.of(context).size.width;
    bool isMobile(BuildContext context) =>
        MediaQuery.of(context).size.shortestSide <= 500;
    Orientation orientaion = MediaQuery.of(context).orientation;
    if (isMobile(context)) {
      if (orientaion == Orientation.portrait) {
        headersize = 20;
        buttonsize = 400;
        toolbarheight = 55.h;
        pagepadding = 10;
        buttonheight = 60;
      } else {
        buttonheight = 80;
        toolbarheight = 85.h;
        headersize = 11;
        buttonsize = 300;
        pagepadding = 200;
      }
    } else {
      if (orientaion == Orientation.portrait) {
        headersize = 20;
        buttonheight = 60;
        buttonsize = 300;
        pagepadding = 90;
        toolbarheight = 55.h;
      } else {
        toolbarheight = 75.h;
        headersize = 15;
        buttonsize = 300;
        buttonheight = 60;
        pagepadding = 200;
      }
    }
    return Consumer<LoginNotifier>(
      builder: (context, LoginNotifier, child) {
        return Scaffold(
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            toolbarHeight: toolbarheight,
            centerTitle: true,
            title: Text(
              "forgotpassword".tr,
              style: appstyle(headersize, Colors.black, FontWeight.normal),
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal:  pagepadding),
            child: SingleChildScrollView(
                reverse: true,
                child: Column(
                  children: [
                    HeightSpacer(size: 50),
                    ReusableText(
                        text: "forgotpassword".tr,
                        style: appstyle(headersize + 6, Color(kBlue.value),
                            FontWeight.w500)),
                    HeightSpacer(size: 50),
                    CustomField(
                      hintText: "mobilenumber".tr,
                      keyboard: TextInputType.text,
                      controller: phone,
                      validator: (phone) {
                        if (phone!.isEmpty) {
                          return "please enter a valid phone";
                        } else {
                          return null;
                        }
                      },
                    ),
                    HeightSpacer(size: 20),
                    HeightSpacer(size: 30),
                    CustomButton(
                      onTap: () {
                        Get.to(VerifyPassword());
                      },
                      text: "sendcode".tr,
                      size: headersize,
                      fw: FontWeight.normal,
                      width: buttonsize,
                      height: buttonheight,
                      bcolor: Color(kBlue.value),
                    ),
                    HeightSpacer(size: 14),
                  ],
                )),
          ),
        );
      },
    );
  }
}
