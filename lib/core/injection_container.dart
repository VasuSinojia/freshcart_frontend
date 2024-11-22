import 'package:dio/dio.dart';
import 'package:freshcart_frontend/core/constants/api_constants.dart';
import 'package:freshcart_frontend/core/services/auth_service.dart';
import 'package:freshcart_frontend/core/services/logging_interceptor.dart';
import 'package:freshcart_frontend/data/data_sources/remote/auth/auth_api_service.dart';
import 'package:freshcart_frontend/data/repository/auth_repository_impl.dart';
import 'package:freshcart_frontend/domain/repository/auth_repository.dart';
import 'package:freshcart_frontend/domain/usecases/login.dart';
import 'package:freshcart_frontend/domain/usecases/register.dart';
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

  // ==========================================
  // Repositories
  // ==========================================
  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl(sl()));

  // ==========================================
  // UseCases
  // ==========================================

  sl.registerSingleton<RegisterUseCase>(RegisterUseCase(sl()));
  sl.registerSingleton<LoginUseCase>(LoginUseCase(sl()));

  // ==========================================
  // Interceptors
  // ==========================================
  baseDio.interceptors.add(LoggingInterceptor());
}
