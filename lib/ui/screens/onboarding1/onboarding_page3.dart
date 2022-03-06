// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers, avoid_print

import 'package:flutter/material.dart';
import 'package:onboarding/ui/utils/colors.dart';
import 'package:onboarding/ui/utils/layout.dart';
import 'dart:math' as math;

import 'components/clipper_c.dart';

class OnboardingScreenThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  width: size.width,
                  height: size.height * 0.6,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/onboard3.png'),
                ),
                Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(math.pi),
                  child: ClipPath(
                    clipper: SlandingClipper(),
                    child: Container(
                      height: size.height * 0.4,
                      color: kYellow,
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              top: size.height * 0.65,
              child: Container(
                width: size.width,
                padding: EdgeInsets.all(appPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'DELIVERY',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: kWhite,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      'Lorem Ipsum is simply dummy \ntext of the printing and typesetting industry.',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 15,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: appPadding / 4),
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        border: Border.all(color: kBlack, width: 2),
                        shape: BoxShape.circle,
                        color: kYellow),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: appPadding / 4),
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        border: Border.all(color: kBlack, width: 2),
                        shape: BoxShape.circle,
                        color: kYellow),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: appPadding / 4),
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        border: Border.all(color: kBlack, width: 2),
                        shape: BoxShape.circle,
                        color: kWhite),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: appPadding * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () => print('Skip'),
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          color: kBlack,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: appPadding),
                    child: FloatingActionButton(
                      onPressed: () => print('Onboarding Done'),
                      backgroundColor: kWhite,
                      child: Icon(
                        Icons.done_rounded,
                        color: kBlack,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
