import 'package:freshcart_frontend/core/constants/enums.dart';
import 'package:freshcart_frontend/core/injection_container.dart';
import 'package:freshcart_frontend/core/logger.dart';
import 'package:freshcart_frontend/core/services/alert_service.dart';
import 'package:freshcart_frontend/data/models/category/product.dart';
import 'package:freshcart_frontend/domain/usecases/cart/add_to_cart.dart';
import 'package:freshcart_frontend/domain/usecases/category/get_products_by_category_id.dart';
import 'package:get/get.dart';
import 'package:loader_overlay/loader_overlay.dart';

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

  Future<void> addToCart({required int productId}) async {
    try {
      Get.context?.loaderOverlay.show();
      final response = await sl<AddToCartUseCase>()
          .call(AddToCartParams(productId: productId, quantity: 0));
      if (response.data != null) {
        AlertService.showSnackBar(
          snackBarType: SnackBarType.Success,
          title: "Success",
          subtitle: "Successfully Added to cart",
        );
      }
    } catch (e) {
      Logger.logMessage(message: "Error fetching products");
    } finally {
      Get.context?.loaderOverlay.hide();
    }
  }
}
