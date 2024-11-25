import 'package:freshcart_frontend/modules/controllers/explore_products_controller.dart';
import 'package:get/get.dart';

class ExploreProductsBinding extends Bindings {
  final String categoryId;

  ExploreProductsBinding(this.categoryId);

  @override
  void dependencies() {
    Get.lazyPut(() => ExploreProductsController(categoryId));
  }
}
