import 'package:provider_app_orientation/common/exports.dart';
import 'package:provider_app_orientation/common/height_spacer.dart';
import 'package:provider_app_orientation/common/width_spacer.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class AddCard extends StatelessWidget {
  const AddCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(249, 240, 238, 238),
      appBar: AppBar(
        title: ReusableText(
            text: "Payment Methods",
            style: appstyle(16, Color(kDark.value), FontWeight.w400)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          HeightSpacer(size: 15),
          Container(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 4),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 247, 246, 246),
              border: Border(
                bottom:
                    BorderSide(color: Color(kDarkGrey.value).withOpacity(0.6)),
              ),
            ),
            child: GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Get.to(AddCard());
                            },
                            icon: Icon(
                              Icons.add_circle,
                              size: 35,
                              color: Color(kOrange.value),
                            )),
                        WidthSpacer(size: 10),
                        Column(
                          children: [
                            ReusableText(
                              text: "Add New Card",
                              style: appstyle(
                                  17, Color(kDark.value), FontWeight.w400),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                )),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeightSpacer(size: 15),
                ReusableText(
                  text: "Credit cards",
                  style: appstyle(18, Color(kDark.value), FontWeight.normal),
                ),
                HeightSpacer(size: 10),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 247, 246, 246),
                    border: BorderDirectional(
                      bottom: BorderSide(
                        color: Color(kDarkGrey.value).withOpacity(0.6),
                      ),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Color(kBlue.value),
                            backgroundImage:
                                AssetImage("assets/images/visa.jpg"),
                          ),
                          WidthSpacer(size: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ReusableText(
                                text: "********* 4739 749 ",
                                style: appstyle(
                                    17, Color(kDark.value), FontWeight.normal),
                              ),
                              ReusableText(
                                  text: "VISA Card",
                                  style: appstyle(14, Color(kDarkGrey.value),
                                      FontWeight.w300)),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
