import 'package:dio/dio.dart';
import 'package:freshcart_frontend/core/logger.dart';

class LoggingInterceptor extends Interceptor {

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final message =
        "Request URL: ${options.uri}\nRequest TYPE: ${options.method}\nRequest DATA: ${options.data}";
    Logger.logMessage(message: message, name: "API-REQUEST");
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // You can inspect the response details here if needed.
    final message =
        "Request URL: ${response.requestOptions.uri}\nRequest DATA: ${response.requestOptions.data}\nResponse: ${response.data}\n=============RESPONSE-END=================";
    Logger.logMessage(message: message, name: "API-RESPONSE");
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // Handle errors here if needed.
    final message =
        "Request PATH: ${err.requestOptions.path}\nRequest DATA: ${err.requestOptions.data}\nError: ${err.response?.statusCode}\nError Message: ${err.response?.data}";
    Logger.logMessage(message: message, name: "API-ERROR");
    // FirebaseCrashlytics.instance.log(message);
    // // User is unauthorised
    if (err.response?.statusCode == 401) {
      // _authService.logout();
    }
    handler.next(err);
  }
}
