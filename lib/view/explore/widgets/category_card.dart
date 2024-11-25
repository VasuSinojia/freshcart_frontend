import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:freshcart_frontend/core/constants/ui_constants.dart';

class CategoryCard extends StatelessWidget {
  final String name;
  final String image;
  final Color color;

  const CategoryCard({
    super.key,
    required this.name,
    required this.image,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: color.withOpacity(0.2),
        border: Border.all(
          color: color,
          width: 1.3,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CachedNetworkImage(
            imageUrl: image,
            height: 80.0,
            width: 120.0,
          ),
          const SizedBox(height: 30.0),
          Flexible(
            fit: FlexFit.loose,
            child: Text(
              name,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontSize: FontSize.xXXL),
              maxLines: 2,
            ),
          )
        ],
      ),
    );
  }
}
