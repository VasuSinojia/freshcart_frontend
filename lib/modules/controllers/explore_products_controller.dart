import 'package:freshcart_frontend/core/injection_container.dart';
import 'package:freshcart_frontend/core/logger.dart';
import 'package:freshcart_frontend/data/models/category/product.dart';
import 'package:freshcart_frontend/domain/usecases/category/get_products_by_category_id.dart';
import 'package:get/get.dart';

class ExploreProductsController extends GetxController {
  final String categoryId;
  final products = <Product>{}.obs;
  final isLoading = false.obs;

  ExploreProductsController(this.categoryId);

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  Future<void> fetchProducts() async {
    try {
      isLoading(true);
      final response = await sl<GetProductsByCategoryIdUseCase>()
          .call(Params(categoryId: categoryId));
      if (response.data != null) {
        products.clear();
        if (response.data?.products?.isNotEmpty ?? false) {
          products.addAll(response.data?.products ?? []);
        }
      }
    } catch (e) {
      Logger.logMessage(message: "Error fetching products");
    } finally {
      isLoading(false);
    }
  }
}
