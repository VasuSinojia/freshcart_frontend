import 'package:freshcart_frontend/modules/controllers/landing_controller.dart';
import 'package:get/get.dart';

class LandingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LandingController());
  }
}