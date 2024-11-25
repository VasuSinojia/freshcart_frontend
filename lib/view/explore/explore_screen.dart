import 'package:flutter/material.dart';
import 'package:freshcart_frontend/core/constants/ui_constants.dart';
import 'package:freshcart_frontend/data/models/category/category_response_model.dart';
import 'package:freshcart_frontend/modules/controllers/explore_controller.dart';
import 'package:freshcart_frontend/view/explore/explore_product_screen.dart';
import 'package:freshcart_frontend/view/explore/widgets/category_card.dart';
import 'package:get/get.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final exploreController = Get.find<ExploreController>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          "Find Products",
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontSize: FontSize.xXXXL),
        ),
      ),
      body: Obx(() {
        if (exploreController.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        if (exploreController.categories.isEmpty) {
          return const Center(
            child: Text("No Data Found."),
          );
        }
        return RefreshIndicator(
          onRefresh: () async {
            exploreController.fetchCategories();
          },
          child: GridView.builder(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15.0,
              mainAxisSpacing: 15.0,
            ),
            itemCount: exploreController.categories.length,
            itemBuilder: (context, index) {
              Categories category =
                  exploreController.categories.toList()[index];
              final colorValue = int.parse("0xFF" "${category.colorCode}");
              return CategoryCard(
                name: category.name ?? "",
                image: category.imageUrl ?? "",
                color: Color(colorValue),
                onTap: () {
                  Get.to(
                    () => ExploreProductScreen(categoryId: category.id ?? 0),
                  );
                },
              );
            },
          ),
        );
      }),
    );
  }
}
