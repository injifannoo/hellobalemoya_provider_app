import 'package:provider_app_orientation/constants/app_constants.dart';

import 'package:flutter/material.dart';

class NavigationShow extends StatelessWidget {
  NavigationShow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: Border(bottom: BorderSide(color: Color(kLightGrey.value))),
        title: Text("Navigating"),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 600,
            child: Image.asset(
              "assets/images/navigation.png",
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
