import 'package:flutter/material.dart';
import 'package:freshcart_frontend/core/constants/ui_constants.dart';
import 'package:freshcart_frontend/view/explore/widgets/product_card.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15.0,
          mainAxisSpacing: 15.0,
        ),
        itemBuilder: (context, index) {
          return const ProductCard(
            name: "Hello asdfasdf asdf asdf asdf asdf ",
            image:
                "https://freshcartbucket.s3.eu-north-1.amazonaws.com/beverages.png",
            color: Colors.green,
          );
        },
      ),
    );
  }
}
