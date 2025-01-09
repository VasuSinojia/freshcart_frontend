import 'package:freshcart_frontend/core/constants/string_constants.dart';

class APIConstants {
  // ==========================================
  // Base URL
  // ==========================================
  static const String baseProdURL = StringConstants.baseProdURL;

  // Auth

  static const String register = "/register";
  static const String login = "/login";

  // Categories
  static const String getCategoriesRoute = "/categories";
  static const String getProductsByCategoryIdRoute = "/products";

  // Cart
  static const String addToCart = "/cart";
  static const String getCart = "/cart";
}
