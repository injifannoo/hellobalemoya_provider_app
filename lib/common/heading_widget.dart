import 'package:provider_app_orientation/common/app_style.dart';
import 'package:provider_app_orientation/common/reusable_text.dart';
import 'package:provider_app_orientation/constants/app_constants.dart';
import 'package:provider_app_orientation/common/exports.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeadingWidget extends StatelessWidget {
  const HeadingWidget({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ReusableText(
            text: text,
            style: appstyle(20, Color(kDark.value), FontWeight.w600)),
        GestureDetector(
          onTap: onTap,
          child: ReusableText(
              text: "view all",
              style: appstyle(20, Color(kOrange.value), FontWeight.w500)),
        )
      ],
    );
  }
}
