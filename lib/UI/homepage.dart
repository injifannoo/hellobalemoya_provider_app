import 'package:get/get.dart';
import 'package:provider_app_orientation/UI/auth/login.dart';
import 'package:provider_app_orientation/constants/app_constants.dart';

import 'package:provider_app_orientation/common/app_style.dart';

import 'package:provider_app_orientation/common/bottom_sheet.dart';
import 'package:provider_app_orientation/common/custom_btn.dart';
import 'package:provider_app_orientation/common/custom_icon.dart';

import 'package:provider_app_orientation/common/exports.dart';

import 'package:provider_app_orientation/common/width_spacer.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    
    double? containerheight;
    double? nearbyContainerWidth;
    double? nearbyContainerheight;

    double? loginWidth;
    double? iconWidth;
    double? toolbarheight;
    double? loginHeight;

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
        nearbyContainerWidth = 210.w;
        nearbyContainerheight = 65.h;
        toolbarheight = 55.h;
        loginWidth = 92;
        headersize = 16;
        iconWidth = 0.06;
        containerheight = 300.h;
        loginHeight = 33;
      } else {
                nearbyContainerWidth = 140.w;
        nearbyContainerheight = 125.h;
        loginHeight = 64;
        toolbarheight = 84.h;
        loginWidth = 62;
        headersize = 10;
        iconWidth = 0.03;
        containerheight = 300.h;
      }
    } else {
      if (orientaion == Orientation.portrait) {
                nearbyContainerWidth = 210.w;
        nearbyContainerheight = 65.h;
        loginHeight = 31;
        iconWidth = sWidth / 55;
        headersize = 20;
        buttonWidth = sWidth * 0.3;
        buttonHeight = 45;

        loginWidth = 72;
        iconWidth = 0.05;
        headersize = 13;
        toolbarheight = 58.h;
        containerheight = 290.h;
      } else {
                nearbyContainerWidth = 150.w;
        nearbyContainerheight = 95.h;
        loginHeight = 51;
        iconWidth = sWidth / 55;
        headersize = 18;
        buttonWidth = sWidth * 0.3;
        buttonHeight = 45;

        loginWidth = 72;
        iconWidth = 0.035;
        headersize = 10;
        toolbarheight = 65.h;
        containerheight = 290.h;
      }
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: toolbarheight,
        automaticallyImplyLeading: false,
        leading: Align(
            alignment: Alignment.centerLeft,
            child: Image.asset("assets/images/logo.png")),
        leadingWidth: 200,

        // title:
        // // ReusableText(
        // //     text: "Home",
        // //     style: appstyle(headersize, Colors.black, FontWeight.normal)),
        // ,
        actions: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              WidthSpacer(size: 30.w),
              CustomButton(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPage();
                      },
                    ),
                  );
                },
                text: "login".tr,
                size: headersize,
                fw: FontWeight.w400,
                width: loginWidth!,
                height: loginHeight!,
                bcolor: Color(kBlue.value),
              ),
              WidthSpacer(size: 10.w),
              CustomIcon(
                width: iconWidth,
                icon: Icons.notifications_active,
                color: Colors.black,
              ),
              WidthSpacer(size: 10.w)
            ],
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/images/mapnavigation.jpg",
                        ),
                        fit: BoxFit.fill)),
                width: double.infinity,
                height: double.infinity,
              ),
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  width: nearbyContainerWidth,
                  height: nearbyContainerheight,
                  decoration: BoxDecoration(
                      color: Color(kBlue.value),
                      borderRadius: BorderRadius.circular(25.r)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomIcon(
                        width: iconWidth + 0.03,
                        icon: Icons.location_on_sharp,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ReusableText(
                              text: "serviceproviders".tr,
                              style: appstyle(headersize, Color(kLight.value),
                                  FontWeight.w400)),
                          ReusableText(
                              text: "located".tr,
                              style: appstyle(
                                  headersize - 2,
                                  (Color(kLight.value)).withOpacity(0.6),
                                  FontWeight.w400))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 170.h,
                left: 140.w,
                child: GestureDetector(
                    onTap: () {
                      // Call showModalBottomSheet from here
                      showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors
                            .transparent, // Set the background color to transparent
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(25),
                          ),
                        ),
                        context: context,
                        builder: (BuildContext context) {
                          return Wrap(children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              color: Colors.white,
                              child: CustomBottomSheet(
                                  name: "Addis Mekuriya",
                                  problem: "Plumber",
                                  location: "Addis Abab,Ayat",
                                  distance: "6km",
                                  status: "online"),
                            ),
                          ]);
                        },
                      );
                    },
                    child: CustomIcon(
                      width: iconWidth + 0.02,
                      icon: Icons.assistant_navigation,
                      color: Color(kBlue.value),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}