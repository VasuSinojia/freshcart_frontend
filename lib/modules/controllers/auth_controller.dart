import 'package:freshcart_frontend/core/constants/enums.dart';
import 'package:freshcart_frontend/core/injection_container.dart';
import 'package:freshcart_frontend/core/services/alert_service.dart';
import 'package:freshcart_frontend/domain/usecases/register.dart';
import 'package:get/get.dart';
import 'package:loader_overlay/loader_overlay.dart';

class AuthController extends GetxController {
  Future<void> signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      Get.context?.loaderOverlay.show();
      final response = await sl<RegisterUseCase>().call(Params(
        name: name,
        email: email,
        password: password,
      ));
      if (response.data != null) {
        AlertService.showSnackBar(
          snackBarType: SnackBarType.Success,
          title: "Success",
          subtitle: "Account Successfully Created",
        );
      } else if (response.error != null) {
        AlertService.showSnackBar(
          snackBarType: SnackBarType.Error,
          title: "Error",
          subtitle: response.error?.message ?? "Please try again.",
        );
      }
    } catch (e) {
      print("exception $e");
    } finally {
      Get.context?.loaderOverlay.hide();
    }
  }
}
