import 'package:flutter/material.dart';
import 'package:freshcart_frontend/core/constants/ui_constants.dart';
import 'package:freshcart_frontend/data/models/category/product.dart';
import 'package:freshcart_frontend/modules/controllers/explore_products_controller.dart';
import 'package:freshcart_frontend/view/explore/widgets/product_card.dart';
import 'package:get/get.dart';

class ExploreProductScreen extends StatelessWidget {
  final int categoryId;

  const ExploreProductScreen({super.key, required this.categoryId});

  @override
  Widget build(BuildContext context) {
    final exploreProductController = Get.find<ExploreProductsController>();
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
        if (exploreProductController.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        if (exploreProductController.products.isEmpty) {
          return const Center(
            child: Text("No Data Found."),
          );
        }
        return RefreshIndicator(
          onRefresh: () async {
            exploreProductController.fetchProducts();
          },
          child: GridView.builder(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15.0,
              mainAxisSpacing: 15.0,
            ),
            itemCount: exploreProductController.products.length,
            itemBuilder: (context, index) {
              Product product =
                  exploreProductController.products.toList()[index];
              return ProductCard(product: product);
            },
          ),
        );
      }),
    );
  }
}
