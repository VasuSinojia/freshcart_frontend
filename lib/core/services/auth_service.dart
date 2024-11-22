import 'package:dio/dio.dart';
import 'package:freshcart_frontend/view/home/home_screen.dart';
import 'package:freshcart_frontend/view/onboarding/onboarding_screen.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthService {
  final Dio _dio;

  AuthService(this._dio);

  Future<bool> isLoggedIn() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool("isLoggedIn") ?? false;
  }

  Future<void> setLoggedIn() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setBool("isLoggedIn", true);
  }

  Future<String> getAuthToken() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString("token") ?? "";
  }

  Future<void> setAuthToken(String token) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString("token", token);
  }

  Future<void> setAuthTokenToHeader() async {
    final token = await getAuthToken();
    if (token.isNotEmpty) {
      _dio.options.headers['Authorization'] = 'Bearer $token';
    }
  }

  Future<void> checkUser() async {
    var loggedIn = await isLoggedIn();
    if (loggedIn) {
      Get.offAll(() => const HomeScreen());
      setAuthTokenToHeader();
    } else {
      Get.to(() => const OnboardingScreen());
    }
  }
}
