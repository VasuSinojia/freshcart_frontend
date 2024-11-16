import 'package:dio/dio.dart';
import 'package:freshcart_frontend/core/constants/api_constants.dart';
import 'package:freshcart_frontend/core/services/logging_interceptor.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // ==========================================
  // Dio
  // ==========================================
  final baseDio = Dio(BaseOptions(baseUrl: APIConstants.baseProdURL));
  sl.registerSingleton<Dio>(baseDio);

  // ==========================================
  // Interceptors
  // ==========================================
  baseDio.interceptors.add(LoggingInterceptor());
}
