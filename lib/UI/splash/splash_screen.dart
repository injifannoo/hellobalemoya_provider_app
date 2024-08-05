import 'dart:async';

import 'package:provider_app_orientation/UI/mainscreen.dart';

import 'package:provider_app_orientation/common/exports.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// Replace with your main screen import

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Get.to(MainScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(kBlue.value),
      body: Center(
        child: Text(
          "Hello Balemoya",
          textAlign: TextAlign.center,
          style: appstyle(35, Color(kLight.value), FontWeight.w500),
        ), // Replace with your image asset
      ),
    );
  }
}
