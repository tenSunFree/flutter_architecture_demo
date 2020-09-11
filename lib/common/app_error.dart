import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

enum AppErrorType { NETWORK, SERVER, CANCEL, UNKNOWN }

class AppError {
  AppError(dynamic error) {
    if (error is DioError) {
      debugPrint('AppError(DioError): ${error.message}');
      message = error.message;
      switch (error.type) {
        case DioErrorType.DEFAULT:
          if (error.error is SocketException) {
            type = AppErrorType.NETWORK;
          } else {
            type = AppErrorType.UNKNOWN;
          }
          break;
        case DioErrorType.CONNECT_TIMEOUT:
        case DioErrorType.RECEIVE_TIMEOUT:
        case DioErrorType.SEND_TIMEOUT:
          type = AppErrorType.NETWORK;
          break;
        case DioErrorType.RESPONSE:
          type = AppErrorType.SERVER;
          break;
        case DioErrorType.CANCEL:
          type = AppErrorType.CANCEL;
          break;
        default:
          type = AppErrorType.UNKNOWN;
      }
    } else if (error is Error) {
      type = AppErrorType.UNKNOWN;
      message = 'AppError: ${error.stackTrace.toString()}';
    } else {
      type = AppErrorType.UNKNOWN;
      message = 'AppError: $error';
    }
  }

  Error error;
  String message;
  AppErrorType type;
}
