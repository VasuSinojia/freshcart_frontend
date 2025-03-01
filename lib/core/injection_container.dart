import 'package:dio/dio.dart';
import 'package:freshcart_frontend/core/constants/api_constants.dart';
import 'package:freshcart_frontend/core/services/auth_service.dart';
import 'package:freshcart_frontend/core/services/logging_interceptor.dart';
import 'package:freshcart_frontend/data/data_sources/remote/auth/auth_api_service.dart';
import 'package:freshcart_frontend/data/data_sources/remote/cart/cart_api_service.dart';
import 'package:freshcart_frontend/data/data_sources/remote/categories/category_api_service.dart';
import 'package:freshcart_frontend/data/repository/auth_repository_impl.dart';
import 'package:freshcart_frontend/data/repository/cart_repository_impl.dart';
import 'package:freshcart_frontend/data/repository/category_repository_impl.dart';
import 'package:freshcart_frontend/domain/repository/auth_repository.dart';
import 'package:freshcart_frontend/domain/repository/cart_repository.dart';
import 'package:freshcart_frontend/domain/repository/category_repository.dart';
import 'package:freshcart_frontend/domain/usecases/auth/login.dart';
import 'package:freshcart_frontend/domain/usecases/auth/register.dart';
import 'package:freshcart_frontend/domain/usecases/cart/add_to_cart.dart';
import 'package:freshcart_frontend/domain/usecases/cart/get_cart.dart';
import 'package:freshcart_frontend/domain/usecases/category/get_categories.dart';
import 'package:freshcart_frontend/domain/usecases/category/get_products_by_category_id.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // ==========================================
  // Dio
  // ==========================================
  final baseDio = Dio(BaseOptions(baseUrl: APIConstants.baseProdURL));
  sl.registerSingleton<Dio>(baseDio);

  // ==========================================
  // App Services
  // ==========================================
  sl.registerSingleton<AuthService>(AuthService(sl()));

  // ==========================================
  // Api Services
  // ==========================================
  sl.registerSingleton<AuthApiService>(AuthApiService(sl()));
  sl.registerSingleton<CategoryApiService>(CategoryApiService(sl()));
  sl.registerSingleton<CartApiService>(CartApiService(sl()));

  // ==========================================
  // Repositories
  // ==========================================
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl(sl()));
  sl.registerSingleton<CategoryRepository>(CategoryRepositoryImpl(sl()));
  sl.registerSingleton<CartRepository>(CartRepositoryImpl(sl()));

  // ==========================================
  // UseCases
  // ==========================================

  // Auth
  sl.registerSingleton<RegisterUseCase>(RegisterUseCase(sl()));
  sl.registerSingleton<LoginUseCase>(LoginUseCase(sl()));

  // Category
  sl.registerSingleton<GetCategoriesUseCase>(GetCategoriesUseCase(sl()));
  sl.registerSingleton<GetProductsByCategoryIdUseCase>(
      GetProductsByCategoryIdUseCase(sl()));

  // Cart
  sl.registerSingleton<GetCartUseCase>(GetCartUseCase(sl()));
  sl.registerSingleton<AddToCartUseCase>(AddToCartUseCase(sl()));

  // ==========================================
  // Interceptors
  // ==========================================
  baseDio.interceptors.add(LoggingInterceptor());
}
