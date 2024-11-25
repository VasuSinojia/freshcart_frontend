import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddToCartButton extends StatelessWidget {
  final VoidCallback onTap;

  const AddToCartButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Get.theme.primaryColor,
          borderRadius: BorderRadius.circular(18.0),
        ),
        padding: const EdgeInsets.all(15.0),
        child: const Icon(Icons.add),
      ),
    );
  }
}
