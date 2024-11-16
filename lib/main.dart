import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freshcart_frontend/core/app_themes.dart';
import 'package:freshcart_frontend/view/splash_screen.dart';
import 'package:get/get.dart';
import 'package:loader_overlay/loader_overlay.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return GlobalLoaderOverlay(
      overlayColor: Colors.white60.withOpacity(0.3),
      overlayWidgetBuilder: (_) => Center(
        child: SizedBox(
          height: 32.0,
          width: 32.0,
          child: CircularProgressIndicator(
            color: AppThemes.main.primaryColor,
          ),
        ),
      ),
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Rooh AI',
        theme: AppThemes.main,
        home: const SplashScreen(),
      ),
    );
  }
}
