import 'package:dio/dio.dart';

class DioExceptions implements Exception {
  final String message;
  final DioErrorType type;

  DioExceptions(this.message, this.type);

  @override
  String toString() {
    switch (type) {
      case DioErrorType.connectTimeout:
        return 'Connection timeout with API';
      case DioErrorType.sendTimeout:
        return 'Send timeout in connection with API';
      case DioErrorType.receiveTimeout:
        return 'Receive timeout in connection with API';
      case DioErrorType.response:
        return 'Received invalid status code: $message';
      case DioErrorType.cancel:
        return 'Request to API server was cancelled';
      case DioErrorType.other:
        return 'Connection to API server failed due to internet connection';
    }
  }
}