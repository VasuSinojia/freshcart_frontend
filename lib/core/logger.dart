import 'dart:developer';

import 'package:flutter/foundation.dart';

class Logger {
  static void logMessage({
    required String message,
    String name = "LOGGER",
  }) {
    if (kDebugMode) {
      log("$message\n=============$name-END=================", name: name);
    }
    // else {
    //   print(
    //       '===================$name===================\n$message\n=============$name-END=================');
    // }
  }
}
