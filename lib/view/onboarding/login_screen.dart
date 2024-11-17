import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:freshcart_frontend/core/constants/asset_constants.dart';
import 'package:freshcart_frontend/view/widgets/custom_button.dart';
import 'package:freshcart_frontend/view/widgets/custom_textfield.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: Get.width,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  AssetConstants.carrot,
                  colorFilter: const ColorFilter.mode(
                    Colors.orange,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              const SizedBox(height: 40.0),
              Text(
                "Log In",
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge
                    ?.copyWith(color: Colors.black),
              ),
              const SizedBox(height: 10.0),
              Text(
                "Enter your email and password",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: Colors.black),
              ),
              const SizedBox(height: 100.0),
              CustomTextField(
                title: "Email",
                controller: emailController,
              ),
              const SizedBox(height: 30.0),
              CustomTextField(
                title: "Password",
                controller: passwordController,
                isPassword: true,
              ),
              const SizedBox(height: 60.0),
              CustomButton(
                title: "Log In",
                onTap: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
