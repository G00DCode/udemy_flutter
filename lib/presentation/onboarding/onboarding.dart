import 'package:flutter/material.dart';
import 'package:udemy_flutter/presentation/resources/color_manager.dart';
import 'package:udemy_flutter/presentation/resources/strings_manager.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.darkPurple,
      body: const Center(child: Text(AppStrings.welcomeOnboarding)),
    );
  }
}
