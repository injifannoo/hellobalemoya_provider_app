import 'package:provider_app_orientation/constants/app_constants.dart';
import 'package:provider_app_orientation/common/app_style.dart';
import 'package:provider_app_orientation/common/custom_btn.dart';

import 'package:provider_app_orientation/common/exports.dart';
import 'package:provider_app_orientation/common/height_spacer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    double? iconWidth;
    double? imageWidth;
    double? headersize;
    double? buttonWidth;
    double? buttonHeight;
    double sWidth = MediaQuery.of(context).size.width;
    bool isMobile(BuildContext context) =>
        MediaQuery.of(context).size.shortestSide <= 500;
    Orientation orientaion = MediaQuery.of(context).orientation;
    if (isMobile(context)) {
      if (orientaion == Orientation.portrait) {
        iconWidth = sWidth / 50;
        headersize = 24;
        buttonWidth = sWidth* 0.7;
        buttonHeight = 50;
      } else {
        iconWidth = sWidth / 50;
        headersize = 17;
        buttonWidth = sWidth* 0.2;
        buttonHeight = 80;
      }
    } else {
      if (orientaion == Orientation.portrait) {
        iconWidth = sWidth / 50;
        headersize = 20;
        buttonWidth =sWidth* 0.3;
        buttonHeight = 45;
      } else {
        buttonWidth =sWidth* 0.2;
        buttonHeight = 65;
        iconWidth = sWidth / 50;
        headersize = 18;
      }
    }
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assets/images/Y2location.png",
                width: 250.w,
                height: 250.h,
              ),
              HeightSpacer(size: 20.h),
              Column(
                children: [
                  ReusableText(
                      text: "Activate the place",
                      style: appstyle(
                          headersize, Color(kBlue.value), FontWeight.normal)),
                  HeightSpacer(size: 10.h),
                  Container(
                      child: Text(
                          textAlign: TextAlign.center,
                          "You can now specify your address to deliver your orders and see which payment method is right for you",
                          style: appstyle(headersize - 10, Color(kBlue.value),
                              FontWeight.normal))),
                  HeightSpacer(size: 50),
                  CustomButton(
                    text: "Activate",
                    size: headersize - 5,
                    fw: FontWeight.normal,
                    width: buttonWidth,
                    height: buttonHeight,
                    bcolor: Color(kOrange.value),
                  )
                ],
              )
            ],
          ),
        ),
      ),

      // body: Container(
      //   width: double.infinity,
      //   height: double.infinity,
      //   color: Color(kLightPurple.value),
      //   child: Column(
      //     children: [
      //       HeightSpacer(size: 105),
      //       Padding(
      //         padding: EdgeInsets.all(8.h),
      //         child: Image.asset(
      //           width: 250,
      //           "assets/images/location.png",
      //           color: Color.fromARGB(255, 217, 231, 92),
      //         ),
      //       ),
      //       const HeightSpacer(size: 20),
      //       Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Text(
      //             "Activate your location",
      //             style: appstyle(30, Color(kLight.value), FontWeight.w500),
      //           ),
      //           HeightSpacer(size: 10),
      //           Padding(
      //             padding: EdgeInsets.all(8.h),
      //             child: Text(
      //               textAlign: TextAlign.center,
      //               "By enabling your location we will be able to know where you are.",
      //               style: appstyle(14, Color(kLight.value), FontWeight.normal),
      //             ),
      //           )
      //         ],
      //       ),
      //       HeightSpacer(size: 20),
      //       Padding(
      //         padding: const EdgeInsets.symmetric(horizontal: 80),
      //         child: CustomOutlineBtn(
      //           height: 50,
      //           text: "Activate",
      //           color: Color(kLight.value),
      //           color2: Color(kOrange.value),
      //         ),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
