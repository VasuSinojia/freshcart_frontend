import 'package:flutter/material.dart';
import 'package:freshcart_frontend/modules/controllers/landing_controller.dart';
import 'package:get/get.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final landingController = Get.find<LandingController>();
    return Scaffold(
      body: const SizedBox(),
      bottomNavigationBar: Obx(() {
        return BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: "Shop",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              label: "Explore",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: "Favourite",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "Account",
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: landingController.currentSelectedIndex.value,
          fixedColor: Get.theme.primaryColor,
          unselectedItemColor: Colors.black,
          showUnselectedLabels: true,
          onTap: landingController.updatedBottomIndex,
        );
      }),
    );
  }
}
