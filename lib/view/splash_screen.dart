import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freshcart_frontend/core/constants/asset_constants.dart';
import 'package:freshcart_frontend/view/onboarding/onboarding_screen.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        Future.delayed(
          const Duration(seconds: 3),
          () {
            Get.offAll(() => const OnboardingScreen());
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.primaryColor,
      body: Center(
        child: SvgPicture.asset(
          AssetConstants.splashLogo,
        ),
      ),
    );
  }
}
