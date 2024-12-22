import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nftui/views/home/home.dart';
import 'package:nftui/views/home/viewnft.dart';
import 'package:nftui/views/onboarding/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
          PointerDeviceKind.unknown
        },
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/onboard',
      routes: {
        '/onboard': (context) => const OnboardingPage(),
        '/home': (context) => const HomePage(),
        //'/view': (context) => const ViewPage(),
      },
    );
  }
}
