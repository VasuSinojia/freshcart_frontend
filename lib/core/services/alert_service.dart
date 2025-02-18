import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:freshcart_frontend/core/constants/asset_constants.dart';
import 'package:freshcart_frontend/core/constants/enums.dart';
import 'package:get/get.dart';

class AlertService {
  static void showSnackBar({
    required SnackBarType snackBarType,
    required String title,
    required String subtitle,
    Duration? duration,
  }) {
    Get.snackbar(
      title,
      subtitle,
      backgroundColor: _getBackgroundColorFromType(snackBarType),
      colorText: Colors.white,
      snackPosition: SnackPosition.TOP,
      margin: const EdgeInsets.all(10),
      borderRadius: 16.0,
      duration: duration ?? const Duration(seconds: 3),
      mainButton: TextButton(
        onPressed: () {
          Get.back();
        },
        child: const Padding(
          padding: EdgeInsets.only(bottom: 8.0),
          child: Icon(
            Icons.close,
            color: Colors.white,
          ),
        ),
      ),
      icon: Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 2.0),
        child: SvgPicture.asset(
          _getSnackBarImageFromType(snackBarType),
        ),
      ),
      overlayBlur: 0.5,
      overlayColor: Colors.black.withValues(alpha: 0.3),
    );
  }

  static String _getSnackBarImageFromType(SnackBarType snackBarType) {
    switch (snackBarType) {
      case SnackBarType.Success:
        return AssetConstants.snackBarSuccessIc;
      case SnackBarType.Warning:
        return AssetConstants.snackBarWarningIc;
      case SnackBarType.Error:
        return AssetConstants.snackBarErrorIc;
    }
  }

  static Color _getBackgroundColorFromType(SnackBarType snackBarType) {
    switch (snackBarType) {
      case SnackBarType.Success:
        return const Color(0xFF1FAA3E);
      case SnackBarType.Warning:
        return const Color(0xFFEF8D32);
      case SnackBarType.Error:
        return const Color(0xFFE9573E);
    }
  }
}
