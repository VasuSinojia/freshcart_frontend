import 'package:flutter/material.dart';
import 'package:freshcart_frontend/view/explore/explore_screen.dart';
import 'package:get/get.dart';

class LandingController extends GetxController {
  final currentSelectedIndex = 0.obs;

  void updatedBottomIndex(int index) {
    currentSelectedIndex(index);
  }

  Widget get body {
    switch (currentSelectedIndex.value) {
      case 0:
        return const SizedBox();
      case 1:
        return const ExploreScreen();
      case 2:
        return const SizedBox();
      case 3:
        return const SizedBox();
      case 4:
        return const SizedBox();
      default:
        return const SizedBox();
    }
  }
}
