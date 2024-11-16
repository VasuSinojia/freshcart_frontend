import 'package:dio/dio.dart';

abstract class DataState<T> {
  final T? data;
  final DioException? error;

  const DataState({this.data, this.error});
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(DioException error) : super(error: error);

  /// A getter to retrieve the 'message' field from the error response if it exists.
  /// If the 'message' field is not found or empty, it will return a default error message.
  String get errorMessage {
    try {
      // Check if the response data exists and contains the 'message' field
      if (error?.response?.data is Map<String, dynamic>) {
        final data = error?.response?.data as Map<String, dynamic>;
        if (data.containsKey('message')) {
          final message = data['message'].toString().trim();
          if (message.isNotEmpty && message.toLowerCase() != 'null') {
            return message;
          }
        }
      }
      // Return default message if the 'message' field is not found or empty
      return "Something went wrong, please try again!";
    } catch (_) {
      // Return default message if any exception occurs while accessing the field
      return "Something went wrong, please try again!";
    }
  }
}
