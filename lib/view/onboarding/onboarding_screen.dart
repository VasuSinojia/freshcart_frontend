import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freshcart_frontend/core/constants/asset_constants.dart';
import 'package:freshcart_frontend/modules/bindings/auth_binding.dart';
import 'package:freshcart_frontend/view/onboarding/login_screen.dart';
import 'package:freshcart_frontend/view/widgets/custom_button.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: Get.height,
        width: Get.width,
        child: Stack(
          children: [
            Image.asset(
              AssetConstants.onboardingBg,
              fit: BoxFit.cover,
              colorBlendMode: BlendMode.darken,
              color: Colors.black.withValues(alpha: 0.5),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SvgPicture.asset(AssetConstants.carrot),
                  const SizedBox(height: 20.0),
                  Text(
                    "Welcome to our store",
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge
                        ?.copyWith(color: Colors.white, fontSize: 60),
                  ),
                  const SizedBox(height: 10.0),
                  Text(
                    "Get your groceries as fast as in one hour.",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Colors.white.withValues(alpha: 0.7),
                        ),
                  ),
                  const SizedBox(height: 50.0),
                  CustomButton(
                    title: "Continue",
                    onTap: () {
                      Get.to(() => LoginScreen(), binding: AuthBinding());
                    },
                  ),
                  const SizedBox(height: 100.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
