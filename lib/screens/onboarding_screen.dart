import 'package:flutter/material.dart';
import 'package:flutter_neo_mart/screens/onboarding_screen_1.dart';
import 'package:flutter_neo_mart/screens/onboarding_screen_2.dart';
import 'package:flutter_neo_mart/screens/onboarding_screen_3.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {

  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [

        OnboardingScreen1(
          pageController: pageController,
        ),

        OnboardingScreen2(
          pageController: pageController,
        ),

        OnboardingScreen3( ),

      ],
    );
  }
}