import 'package:get/get.dart';

class LandingController extends GetxController {
  final currentSelectedIndex = 0.obs;

  void updatedBottomIndex(int index) {
    currentSelectedIndex(index);
  }
}
