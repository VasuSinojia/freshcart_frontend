import 'package:freshcart_frontend/core/injection_container.dart';
import 'package:freshcart_frontend/core/logger.dart';
import 'package:freshcart_frontend/core/resources/usecase/usecase.dart';
import 'package:freshcart_frontend/data/models/category/category_response_model.dart';
import 'package:freshcart_frontend/domain/usecases/category/get_categories.dart';
import 'package:get/get.dart';

class ExploreController extends GetxController {
  final categories = <Categories>{}.obs;
  final isLoading = false.obs;

  @override
  void onInit() {
    fetchCategories();
    super.onInit();
  }

  Future<void> fetchCategories() async {
    try {
      isLoading(true);
      final response = await sl<GetCategoriesUseCase>().call(NoParams());
      if (response.data != null) {
        categories.clear();
        if (response.data?.categories?.isNotEmpty ?? false) {
          categories.addAll(response.data?.categories ?? []);
        }
      }
    } catch (e) {
      Logger.logMessage(message: "Error fetching categories");
    } finally {
      isLoading(false);
    }
  }
}
