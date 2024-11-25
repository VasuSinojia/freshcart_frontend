import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:freshcart_frontend/core/constants/ui_constants.dart';
import 'package:freshcart_frontend/data/models/category/product.dart';
import 'package:freshcart_frontend/view/widgets/add_to_cart_button.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: const Color(0xFF7C7C7C),
          width: 1.3,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CachedNetworkImage(
            imageUrl: product.imageUrl ?? "",
            height: 80.0,
            width: 120.0,
          ),
          const SizedBox(height: 20.0),
          Flexible(
            fit: FlexFit.loose,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                product.name ?? "",
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontSize: 24.0),
                maxLines: 2,
              ),
            ),
          ),
          const SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "₹${product.price}",
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
              ),
              AddToCartButton(
                onTap: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
