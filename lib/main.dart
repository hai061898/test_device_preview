import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:onboarding/ui/screens/onboarding1/onboarding_page1.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp( DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) =>const MyApp(), // Wrap your app
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'OnBoarding',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: OnboardingScreenOne(),
    );
  }
}
